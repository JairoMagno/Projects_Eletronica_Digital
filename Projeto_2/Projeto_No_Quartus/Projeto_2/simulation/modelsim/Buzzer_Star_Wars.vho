-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "08/31/2022 12:43:44"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	Buzzer_Star_Wars IS
    PORT (
	buzzer : OUT std_logic;
	clock : IN std_logic;
	key : IN std_logic_vector(4 DOWNTO 1);
	dig : OUT std_logic_vector(4 DOWNTO 1);
	led : OUT std_logic_vector(1 TO 4);
	seg : OUT std_logic_vector(0 TO 7)
	);
END Buzzer_Star_Wars;

-- Design Ports Information
-- buzzer	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[4]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[3]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[2]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[1]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[1]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[2]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[3]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[4]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[0]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[1]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[2]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[3]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[4]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[5]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[6]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[7]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[4]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[3]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[2]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[1]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Buzzer_Star_Wars IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_buzzer : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_key : std_logic_vector(4 DOWNTO 1);
SIGNAL ww_dig : std_logic_vector(4 DOWNTO 1);
SIGNAL ww_led : std_logic_vector(1 TO 4);
SIGNAL ww_seg : std_logic_vector(0 TO 7);
SIGNAL \inst7|inst11|clk_O~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst8|inst2|control|clk_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|inst2|aux~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|inst|aux~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|clk_O~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|inst3|aux~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \buzzer~output_o\ : std_logic;
SIGNAL \dig[4]~output_o\ : std_logic;
SIGNAL \dig[3]~output_o\ : std_logic;
SIGNAL \dig[2]~output_o\ : std_logic;
SIGNAL \dig[1]~output_o\ : std_logic;
SIGNAL \led[1]~output_o\ : std_logic;
SIGNAL \led[2]~output_o\ : std_logic;
SIGNAL \led[3]~output_o\ : std_logic;
SIGNAL \led[4]~output_o\ : std_logic;
SIGNAL \seg[0]~output_o\ : std_logic;
SIGNAL \seg[1]~output_o\ : std_logic;
SIGNAL \seg[2]~output_o\ : std_logic;
SIGNAL \seg[3]~output_o\ : std_logic;
SIGNAL \seg[4]~output_o\ : std_logic;
SIGNAL \seg[5]~output_o\ : std_logic;
SIGNAL \seg[6]~output_o\ : std_logic;
SIGNAL \seg[7]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst3|clock_050|_~1_combout\ : std_logic;
SIGNAL \inst3|clock_050|_~2_combout\ : std_logic;
SIGNAL \inst3|clock_050|_~0_combout\ : std_logic;
SIGNAL \inst3|clock_050|aux~q\ : std_logic;
SIGNAL \inst3|clock_025|q[1]~0_combout\ : std_logic;
SIGNAL \inst3|clock_025|_~2_combout\ : std_logic;
SIGNAL \inst3|clock_025|_~1_combout\ : std_logic;
SIGNAL \inst3|clock_025|_~0_combout\ : std_logic;
SIGNAL \inst3|clock_025|aux~q\ : std_logic;
SIGNAL \inst1|S1~1_combout\ : std_logic;
SIGNAL \key[3]~input_o\ : std_logic;
SIGNAL \inst|inst2|ff1~feeder_combout\ : std_logic;
SIGNAL \inst|inst2|ff1~q\ : std_logic;
SIGNAL \inst|inst2|ff2~feeder_combout\ : std_logic;
SIGNAL \inst|inst2|ff2~q\ : std_logic;
SIGNAL \inst|inst2|_~7_combout\ : std_logic;
SIGNAL \inst|inst2|contador[1]~20_combout\ : std_logic;
SIGNAL \inst|inst2|_~8_combout\ : std_logic;
SIGNAL \inst|inst2|contador[1]~21\ : std_logic;
SIGNAL \inst|inst2|contador[2]~22_combout\ : std_logic;
SIGNAL \inst|inst2|contador[2]~23\ : std_logic;
SIGNAL \inst|inst2|contador[3]~24_combout\ : std_logic;
SIGNAL \inst|inst2|contador[3]~25\ : std_logic;
SIGNAL \inst|inst2|contador[4]~26_combout\ : std_logic;
SIGNAL \inst|inst2|contador[4]~27\ : std_logic;
SIGNAL \inst|inst2|contador[5]~28_combout\ : std_logic;
SIGNAL \inst|inst2|contador[5]~29\ : std_logic;
SIGNAL \inst|inst2|contador[6]~30_combout\ : std_logic;
SIGNAL \inst|inst2|contador[6]~31\ : std_logic;
SIGNAL \inst|inst2|contador[7]~32_combout\ : std_logic;
SIGNAL \inst|inst2|contador[7]~33\ : std_logic;
SIGNAL \inst|inst2|contador[8]~34_combout\ : std_logic;
SIGNAL \inst|inst2|contador[8]~35\ : std_logic;
SIGNAL \inst|inst2|contador[9]~36_combout\ : std_logic;
SIGNAL \inst|inst2|contador[9]~37\ : std_logic;
SIGNAL \inst|inst2|contador[10]~38_combout\ : std_logic;
SIGNAL \inst|inst2|contador[10]~39\ : std_logic;
SIGNAL \inst|inst2|contador[11]~40_combout\ : std_logic;
SIGNAL \inst|inst2|contador[11]~41\ : std_logic;
SIGNAL \inst|inst2|contador[12]~42_combout\ : std_logic;
SIGNAL \inst|inst2|contador[12]~43\ : std_logic;
SIGNAL \inst|inst2|contador[13]~44_combout\ : std_logic;
SIGNAL \inst|inst2|contador[13]~45\ : std_logic;
SIGNAL \inst|inst2|contador[14]~46_combout\ : std_logic;
SIGNAL \inst|inst2|contador[14]~47\ : std_logic;
SIGNAL \inst|inst2|contador[15]~48_combout\ : std_logic;
SIGNAL \inst|inst2|contador[15]~49\ : std_logic;
SIGNAL \inst|inst2|contador[16]~50_combout\ : std_logic;
SIGNAL \inst|inst2|contador[16]~51\ : std_logic;
SIGNAL \inst|inst2|contador[17]~52_combout\ : std_logic;
SIGNAL \inst|inst2|contador[17]~53\ : std_logic;
SIGNAL \inst|inst2|contador[18]~54_combout\ : std_logic;
SIGNAL \inst|inst2|contador[18]~55\ : std_logic;
SIGNAL \inst|inst2|contador[19]~56_combout\ : std_logic;
SIGNAL \inst|inst2|contador[19]~57\ : std_logic;
SIGNAL \inst|inst2|contador[20]~58_combout\ : std_logic;
SIGNAL \inst|inst2|_~5_combout\ : std_logic;
SIGNAL \inst|inst2|_~0_combout\ : std_logic;
SIGNAL \inst|inst2|_~3_combout\ : std_logic;
SIGNAL \inst|inst2|_~1_combout\ : std_logic;
SIGNAL \inst|inst2|_~2_combout\ : std_logic;
SIGNAL \inst|inst2|_~4_combout\ : std_logic;
SIGNAL \inst|inst2|_~6_combout\ : std_logic;
SIGNAL \inst|inst2|aux~0_combout\ : std_logic;
SIGNAL \inst|inst2|aux~q\ : std_logic;
SIGNAL \inst1|Freq_objt|FF1~feeder_combout\ : std_logic;
SIGNAL \inst1|Freq_objt|FF1~q\ : std_logic;
SIGNAL \inst1|Freq_objt|FF2~q\ : std_logic;
SIGNAL \inst1|S1~0_combout\ : std_logic;
SIGNAL \inst1|S1~q\ : std_logic;
SIGNAL \inst1|S2~0_combout\ : std_logic;
SIGNAL \inst1|S2~feeder_combout\ : std_logic;
SIGNAL \inst1|S2~q\ : std_logic;
SIGNAL \inst1|S3~q\ : std_logic;
SIGNAL \inst1|S4~q\ : std_logic;
SIGNAL \inst1|Freq_out[1]~0_combout\ : std_logic;
SIGNAL \inst1|Freq_out[0]~1_combout\ : std_logic;
SIGNAL \inst3|clk_O~5_combout\ : std_logic;
SIGNAL \inst3|clock_1~0_combout\ : std_logic;
SIGNAL \inst3|clock_1~q\ : std_logic;
SIGNAL \inst3|clk_O~combout\ : std_logic;
SIGNAL \key[1]~input_o\ : std_logic;
SIGNAL \inst|inst|ff1~q\ : std_logic;
SIGNAL \inst|inst|ff2~feeder_combout\ : std_logic;
SIGNAL \inst|inst|ff2~q\ : std_logic;
SIGNAL \inst|inst|_~7_combout\ : std_logic;
SIGNAL \inst|inst|contador[1]~20_combout\ : std_logic;
SIGNAL \inst|inst|_~8_combout\ : std_logic;
SIGNAL \inst|inst|contador[1]~21\ : std_logic;
SIGNAL \inst|inst|contador[2]~22_combout\ : std_logic;
SIGNAL \inst|inst|contador[2]~23\ : std_logic;
SIGNAL \inst|inst|contador[3]~24_combout\ : std_logic;
SIGNAL \inst|inst|contador[3]~25\ : std_logic;
SIGNAL \inst|inst|contador[4]~26_combout\ : std_logic;
SIGNAL \inst|inst|contador[4]~27\ : std_logic;
SIGNAL \inst|inst|contador[5]~28_combout\ : std_logic;
SIGNAL \inst|inst|contador[5]~29\ : std_logic;
SIGNAL \inst|inst|contador[6]~30_combout\ : std_logic;
SIGNAL \inst|inst|contador[6]~31\ : std_logic;
SIGNAL \inst|inst|contador[7]~32_combout\ : std_logic;
SIGNAL \inst|inst|contador[7]~33\ : std_logic;
SIGNAL \inst|inst|contador[8]~34_combout\ : std_logic;
SIGNAL \inst|inst|contador[8]~35\ : std_logic;
SIGNAL \inst|inst|contador[9]~36_combout\ : std_logic;
SIGNAL \inst|inst|contador[9]~37\ : std_logic;
SIGNAL \inst|inst|contador[10]~38_combout\ : std_logic;
SIGNAL \inst|inst|contador[10]~39\ : std_logic;
SIGNAL \inst|inst|contador[11]~40_combout\ : std_logic;
SIGNAL \inst|inst|contador[11]~41\ : std_logic;
SIGNAL \inst|inst|contador[12]~42_combout\ : std_logic;
SIGNAL \inst|inst|contador[12]~43\ : std_logic;
SIGNAL \inst|inst|contador[13]~44_combout\ : std_logic;
SIGNAL \inst|inst|contador[13]~45\ : std_logic;
SIGNAL \inst|inst|contador[14]~46_combout\ : std_logic;
SIGNAL \inst|inst|contador[14]~47\ : std_logic;
SIGNAL \inst|inst|contador[15]~48_combout\ : std_logic;
SIGNAL \inst|inst|contador[15]~49\ : std_logic;
SIGNAL \inst|inst|contador[16]~50_combout\ : std_logic;
SIGNAL \inst|inst|contador[16]~51\ : std_logic;
SIGNAL \inst|inst|contador[17]~52_combout\ : std_logic;
SIGNAL \inst|inst|contador[17]~53\ : std_logic;
SIGNAL \inst|inst|contador[18]~54_combout\ : std_logic;
SIGNAL \inst|inst|contador[18]~55\ : std_logic;
SIGNAL \inst|inst|contador[19]~56_combout\ : std_logic;
SIGNAL \inst|inst|contador[19]~57\ : std_logic;
SIGNAL \inst|inst|contador[20]~58_combout\ : std_logic;
SIGNAL \inst|inst|_~5_combout\ : std_logic;
SIGNAL \inst|inst|_~0_combout\ : std_logic;
SIGNAL \inst|inst|_~3_combout\ : std_logic;
SIGNAL \inst|inst|_~1_combout\ : std_logic;
SIGNAL \inst|inst|_~2_combout\ : std_logic;
SIGNAL \inst|inst|_~4_combout\ : std_logic;
SIGNAL \inst|inst|_~6_combout\ : std_logic;
SIGNAL \inst|inst|aux~0_combout\ : std_logic;
SIGNAL \inst|inst|aux~q\ : std_logic;
SIGNAL \inst1|Play_objt|FF1~feeder_combout\ : std_logic;
SIGNAL \inst1|Play_objt|FF1~q\ : std_logic;
SIGNAL \inst1|Play_objt|FF2~feeder_combout\ : std_logic;
SIGNAL \inst1|Play_objt|FF2~q\ : std_logic;
SIGNAL \key[2]~input_o\ : std_logic;
SIGNAL \inst|inst1|ff1~feeder_combout\ : std_logic;
SIGNAL \inst|inst1|ff1~q\ : std_logic;
SIGNAL \inst|inst1|ff2~q\ : std_logic;
SIGNAL \inst|inst1|_~7_combout\ : std_logic;
SIGNAL \inst|inst1|contador[1]~20_combout\ : std_logic;
SIGNAL \inst|inst1|_~8_combout\ : std_logic;
SIGNAL \inst|inst1|contador[1]~21\ : std_logic;
SIGNAL \inst|inst1|contador[2]~22_combout\ : std_logic;
SIGNAL \inst|inst1|contador[2]~23\ : std_logic;
SIGNAL \inst|inst1|contador[3]~24_combout\ : std_logic;
SIGNAL \inst|inst1|contador[3]~25\ : std_logic;
SIGNAL \inst|inst1|contador[4]~26_combout\ : std_logic;
SIGNAL \inst|inst1|contador[4]~27\ : std_logic;
SIGNAL \inst|inst1|contador[5]~28_combout\ : std_logic;
SIGNAL \inst|inst1|contador[5]~29\ : std_logic;
SIGNAL \inst|inst1|contador[6]~30_combout\ : std_logic;
SIGNAL \inst|inst1|contador[6]~31\ : std_logic;
SIGNAL \inst|inst1|contador[7]~32_combout\ : std_logic;
SIGNAL \inst|inst1|contador[7]~33\ : std_logic;
SIGNAL \inst|inst1|contador[8]~34_combout\ : std_logic;
SIGNAL \inst|inst1|contador[8]~35\ : std_logic;
SIGNAL \inst|inst1|contador[9]~36_combout\ : std_logic;
SIGNAL \inst|inst1|contador[9]~37\ : std_logic;
SIGNAL \inst|inst1|contador[10]~38_combout\ : std_logic;
SIGNAL \inst|inst1|contador[10]~39\ : std_logic;
SIGNAL \inst|inst1|contador[11]~40_combout\ : std_logic;
SIGNAL \inst|inst1|contador[11]~41\ : std_logic;
SIGNAL \inst|inst1|contador[12]~42_combout\ : std_logic;
SIGNAL \inst|inst1|contador[12]~43\ : std_logic;
SIGNAL \inst|inst1|contador[13]~44_combout\ : std_logic;
SIGNAL \inst|inst1|contador[13]~45\ : std_logic;
SIGNAL \inst|inst1|contador[14]~46_combout\ : std_logic;
SIGNAL \inst|inst1|contador[14]~47\ : std_logic;
SIGNAL \inst|inst1|contador[15]~48_combout\ : std_logic;
SIGNAL \inst|inst1|contador[15]~49\ : std_logic;
SIGNAL \inst|inst1|contador[16]~50_combout\ : std_logic;
SIGNAL \inst|inst1|contador[16]~51\ : std_logic;
SIGNAL \inst|inst1|contador[17]~52_combout\ : std_logic;
SIGNAL \inst|inst1|contador[17]~53\ : std_logic;
SIGNAL \inst|inst1|contador[18]~54_combout\ : std_logic;
SIGNAL \inst|inst1|contador[18]~55\ : std_logic;
SIGNAL \inst|inst1|contador[19]~56_combout\ : std_logic;
SIGNAL \inst|inst1|_~5_combout\ : std_logic;
SIGNAL \inst|inst1|contador[19]~57\ : std_logic;
SIGNAL \inst|inst1|contador[20]~58_combout\ : std_logic;
SIGNAL \inst|inst1|_~3_combout\ : std_logic;
SIGNAL \inst|inst1|_~1_combout\ : std_logic;
SIGNAL \inst|inst1|_~2_combout\ : std_logic;
SIGNAL \inst|inst1|_~0_combout\ : std_logic;
SIGNAL \inst|inst1|_~4_combout\ : std_logic;
SIGNAL \inst|inst1|_~6_combout\ : std_logic;
SIGNAL \inst|inst1|aux~0_combout\ : std_logic;
SIGNAL \inst|inst1|aux~q\ : std_logic;
SIGNAL \inst1|Stop_objt|FF1~feeder_combout\ : std_logic;
SIGNAL \inst1|Stop_objt|FF1~q\ : std_logic;
SIGNAL \inst1|Stop_objt|FF2~q\ : std_logic;
SIGNAL \inst1|Stop_objt|pulso~0_combout\ : std_logic;
SIGNAL \inst1|_~0_combout\ : std_logic;
SIGNAL \inst1|P3~0_combout\ : std_logic;
SIGNAL \inst1|P3~1_combout\ : std_logic;
SIGNAL \inst1|P3~feeder_combout\ : std_logic;
SIGNAL \inst1|P3~q\ : std_logic;
SIGNAL \inst1|P1~0_combout\ : std_logic;
SIGNAL \inst1|P1~q\ : std_logic;
SIGNAL \inst1|P2~2_combout\ : std_logic;
SIGNAL \inst1|P2~3_combout\ : std_logic;
SIGNAL \inst1|P2~feeder_combout\ : std_logic;
SIGNAL \inst1|P2~q\ : std_logic;
SIGNAL \inst3|clk_O~clkctrl_outclk\ : std_logic;
SIGNAL \inst8|inst2|control|_~8_combout\ : std_logic;
SIGNAL \inst8|inst2|control|START~q\ : std_logic;
SIGNAL \inst8|inst2|temp|cnt[5]~13_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~1_cout\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~2_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s71~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s64~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s64~q\ : std_logic;
SIGNAL \inst8|inst2|control|s65~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s65~q\ : std_logic;
SIGNAL \inst8|inst2|control|s66~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s66~q\ : std_logic;
SIGNAL \inst8|inst2|control|s67~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s67~q\ : std_logic;
SIGNAL \inst8|inst2|control|s68~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s68~q\ : std_logic;
SIGNAL \inst8|inst2|control|s69~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s69~q\ : std_logic;
SIGNAL \inst8|inst2|control|s70~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s70~q\ : std_logic;
SIGNAL \inst8|inst2|control|s71~1_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s71~2_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s71~q\ : std_logic;
SIGNAL \inst8|inst2|control|s72~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s72~q\ : std_logic;
SIGNAL \inst8|inst2|control|s73~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s73~q\ : std_logic;
SIGNAL \inst8|inst2|control|s74~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s74~q\ : std_logic;
SIGNAL \inst8|inst2|control|s75~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s75~q\ : std_logic;
SIGNAL \inst8|inst2|control|s76~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s76~q\ : std_logic;
SIGNAL \inst8|inst2|control|s77~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s77~q\ : std_logic;
SIGNAL \inst8|inst2|control|s78~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s78~q\ : std_logic;
SIGNAL \inst8|inst2|control|s79~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s79~q\ : std_logic;
SIGNAL \inst8|inst2|control|s80~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s80~q\ : std_logic;
SIGNAL \inst8|inst2|control|s81~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s81~q\ : std_logic;
SIGNAL \inst8|inst2|control|s82~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s82~q\ : std_logic;
SIGNAL \inst8|inst2|control|s83~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s83~q\ : std_logic;
SIGNAL \inst8|inst2|control|s84~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s84~q\ : std_logic;
SIGNAL \inst8|inst2|control|s36~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s36~q\ : std_logic;
SIGNAL \inst8|inst2|control|s37~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s37~q\ : std_logic;
SIGNAL \inst8|inst2|control|s38~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s38~q\ : std_logic;
SIGNAL \inst8|inst2|control|s39~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s39~q\ : std_logic;
SIGNAL \inst8|inst2|control|s40~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s40~q\ : std_logic;
SIGNAL \inst8|inst2|control|s41~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s41~q\ : std_logic;
SIGNAL \inst8|inst2|control|s42~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s42~q\ : std_logic;
SIGNAL \inst8|inst2|control|s43~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s43~q\ : std_logic;
SIGNAL \inst8|inst2|control|s44~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s44~q\ : std_logic;
SIGNAL \inst8|inst2|control|s45~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s45~q\ : std_logic;
SIGNAL \inst8|inst2|control|s46~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s46~q\ : std_logic;
SIGNAL \inst8|inst2|control|s47~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s47~q\ : std_logic;
SIGNAL \inst8|inst2|control|s48~1_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s48~q\ : std_logic;
SIGNAL \inst8|inst2|control|s49~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s49~q\ : std_logic;
SIGNAL \inst8|inst2|control|s50~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s50~q\ : std_logic;
SIGNAL \inst8|inst2|control|s51~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s51~q\ : std_logic;
SIGNAL \inst8|inst2|control|s52~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s52~q\ : std_logic;
SIGNAL \inst8|inst2|control|s53~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s53~q\ : std_logic;
SIGNAL \inst8|inst2|control|s54~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s54~q\ : std_logic;
SIGNAL \inst8|inst2|control|s55~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s55~q\ : std_logic;
SIGNAL \inst8|inst2|control|s56~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s56~q\ : std_logic;
SIGNAL \inst8|inst2|control|s57~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s57~q\ : std_logic;
SIGNAL \inst8|inst2|control|s58~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s58~q\ : std_logic;
SIGNAL \inst8|inst2|control|s59~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s59~q\ : std_logic;
SIGNAL \inst8|inst2|control|_~2_combout\ : std_logic;
SIGNAL \inst8|inst2|control|_~3_combout\ : std_logic;
SIGNAL \inst8|inst2|control|clk_out~93_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s85~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s85~q\ : std_logic;
SIGNAL \inst8|inst2|control|s86~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s86~q\ : std_logic;
SIGNAL \inst8|inst2|control|s87~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s87~q\ : std_logic;
SIGNAL \inst8|inst2|control|clk_out~94_combout\ : std_logic;
SIGNAL \inst8|inst2|control|clk_out~95_combout\ : std_logic;
SIGNAL \inst8|inst2|control|freq_out[3]~41_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|_~13_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|_~6_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s88~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s88~q\ : std_logic;
SIGNAL \inst8|inst2|control|s89~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s89~q\ : std_logic;
SIGNAL \inst8|inst2|control|s90~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s90~q\ : std_logic;
SIGNAL \inst8|inst2|control|s91~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s91~q\ : std_logic;
SIGNAL \inst8|inst2|control|freq_out[6]~18_combout\ : std_logic;
SIGNAL \inst8|inst2|control|freq_out[5]~17_combout\ : std_logic;
SIGNAL \inst8|inst2|control|freq_out[5]~42_combout\ : std_logic;
SIGNAL \inst8|inst2|control|freq_out[5]~43_combout\ : std_logic;
SIGNAL \inst8|inst2|control|_~1_combout\ : std_logic;
SIGNAL \inst8|inst2|control|_~4_combout\ : std_logic;
SIGNAL \inst8|inst2|control|_~5_combout\ : std_logic;
SIGNAL \inst8|inst2|control|freq_out[15]~13_combout\ : std_logic;
SIGNAL \inst8|inst2|control|freq_out[15]~8_combout\ : std_logic;
SIGNAL \inst8|inst2|control|_~6_combout\ : std_logic;
SIGNAL \inst8|inst2|control|_~7_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s48~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s60~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s60~q\ : std_logic;
SIGNAL \inst8|inst2|control|s61~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s61~q\ : std_logic;
SIGNAL \inst8|inst2|control|s62~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s62~q\ : std_logic;
SIGNAL \inst8|inst2|control|s63~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s63~q\ : std_logic;
SIGNAL \inst8|inst2|control|s15~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s15~q\ : std_logic;
SIGNAL \inst8|inst2|control|s16~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s16~q\ : std_logic;
SIGNAL \inst8|inst2|control|s17~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s17~q\ : std_logic;
SIGNAL \inst8|inst2|control|s18~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s18~q\ : std_logic;
SIGNAL \inst8|inst2|temp|_~11_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s19~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s19~q\ : std_logic;
SIGNAL \inst8|inst2|control|s20~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s20~q\ : std_logic;
SIGNAL \inst8|inst2|control|s21~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s21~q\ : std_logic;
SIGNAL \inst8|inst2|control|s22~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s22~q\ : std_logic;
SIGNAL \inst8|inst2|control|s23~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s23~q\ : std_logic;
SIGNAL \inst8|inst2|control|s24~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s24~q\ : std_logic;
SIGNAL \inst8|inst2|control|s25~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s25~q\ : std_logic;
SIGNAL \inst8|inst2|control|s26~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s26~q\ : std_logic;
SIGNAL \inst8|inst2|control|s27~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s27~q\ : std_logic;
SIGNAL \inst8|inst2|control|s28~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s28~q\ : std_logic;
SIGNAL \inst8|inst2|control|s29~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s29~q\ : std_logic;
SIGNAL \inst8|inst2|control|s30~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s30~q\ : std_logic;
SIGNAL \inst8|inst2|control|s31~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s31~q\ : std_logic;
SIGNAL \inst8|inst2|control|s32~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s32~q\ : std_logic;
SIGNAL \inst8|inst2|control|s33~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s33~q\ : std_logic;
SIGNAL \inst8|inst2|control|s0~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s0~q\ : std_logic;
SIGNAL \inst8|inst2|control|s1~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s1~1_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s1~q\ : std_logic;
SIGNAL \inst8|inst2|control|s2~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s2~q\ : std_logic;
SIGNAL \inst8|inst2|control|s3~1_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s3~q\ : std_logic;
SIGNAL \inst8|inst2|control|s4~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s4~q\ : std_logic;
SIGNAL \inst8|inst2|control|s5~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s5~q\ : std_logic;
SIGNAL \inst8|inst2|control|s6~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s6~q\ : std_logic;
SIGNAL \inst8|inst2|control|s7~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s7~q\ : std_logic;
SIGNAL \inst8|inst2|control|s8~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s8~q\ : std_logic;
SIGNAL \inst8|inst2|control|s9~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s9~q\ : std_logic;
SIGNAL \inst8|inst2|control|s10~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s10~q\ : std_logic;
SIGNAL \inst8|inst2|control|s11~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s11~q\ : std_logic;
SIGNAL \inst8|inst2|control|s12~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s12~q\ : std_logic;
SIGNAL \inst8|inst2|control|s13~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s13~q\ : std_logic;
SIGNAL \inst8|inst2|temp|_~12_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|_~7_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|_~21_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|_~17_combout\ : std_logic;
SIGNAL \inst8|inst2|control|freq_out[9]~25_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|_~10_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|_~18_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|_~20_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|_~22_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|cnt[1]~8_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~3\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~4_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~70_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~5\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~6_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|cnt[3]~7_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~7\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~8_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~69_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~9\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~10_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|cnt[13]~14_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|cnt[13]~feeder_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~25\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~26_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|cnt[18]~11_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|_~16_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~27\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~28_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~63_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~29\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~30_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|_~19_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|cnt[15]~5_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~31\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~32_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|cnt[16]~4_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~33\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~34_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|cnt[17]~3_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~35\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~36_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|q~8_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~11\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~12_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~68_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~13\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~14_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~67_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|q~6_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|q~10_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|cnt[0]~9_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|cnt[23]~10_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~37\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~38_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~62_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~39\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~40_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~61_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~41\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~42_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|cnt[21]~2_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~43\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~44_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~60_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~45\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~46_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|q~7_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|q~9_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s3~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s14~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s14~q\ : std_logic;
SIGNAL \inst8|inst2|control|s34~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s34~q\ : std_logic;
SIGNAL \inst8|inst2|temp|_~9_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|_~14_combout\ : std_logic;
SIGNAL \inst8|inst2|control|freq_out[15]~10_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|_~15_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|cnt[11]~12_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|cnt[11]~feeder_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~15\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~16_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~66_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~17\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~18_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~65_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~19\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~20_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|cnt[10]~6_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~21\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~22_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~23\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~24_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~64_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|q~4_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|q~3_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|q~2_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~47\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~48_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~59_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~49\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~50_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~58_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~51\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~52_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~57_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~53\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~54_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|op_1~56_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|q~1_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|q~5_combout\ : std_logic;
SIGNAL \inst8|inst2|control|_~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s35~0_combout\ : std_logic;
SIGNAL \inst8|inst2|control|s35~q\ : std_logic;
SIGNAL \inst8|inst2|control|freq_out[5]~15_combout\ : std_logic;
SIGNAL \inst8|inst2|control|freq_out[5]~50_combout\ : std_logic;
SIGNAL \inst8|inst2|control|freq_out[9]~24_combout\ : std_logic;
SIGNAL \inst8|inst2|control|freq_out[9]~23_combout\ : std_logic;
SIGNAL \inst8|inst2|control|freq_out[9]~36_combout\ : std_logic;
SIGNAL \inst8|inst2|control|freq_out[8]~27_combout\ : std_logic;
SIGNAL \inst8|inst2|control|clk_out~98_combout\ : std_logic;
SIGNAL \inst8|inst2|control|clk_out~97_combout\ : std_logic;
SIGNAL \inst8|inst2|control|clk_out~99_combout\ : std_logic;
SIGNAL \inst8|inst2|control|clk_out~91_combout\ : std_logic;
SIGNAL \inst8|inst2|control|clk_out~92_combout\ : std_logic;
SIGNAL \inst8|inst2|control|freq_out[8]~28_combout\ : std_logic;
SIGNAL \inst8|inst2|control|clk_out~100_combout\ : std_logic;
SIGNAL \inst8|inst2|control|clk_out~101_combout\ : std_logic;
SIGNAL \inst8|inst2|control|freq_out[1]~34_combout\ : std_logic;
SIGNAL \inst8|inst2|control|clk_out~96_combout\ : std_logic;
SIGNAL \inst8|inst2|control|clk_out~combout\ : std_logic;
SIGNAL \inst8|inst2|control|clk_out~clkctrl_outclk\ : std_logic;
SIGNAL \inst8|inst2|control|freq_out[11]~6_combout\ : std_logic;
SIGNAL \inst8|inst2|control|freq_out[15]~7_combout\ : std_logic;
SIGNAL \inst8|inst2|temp|_~8_combout\ : std_logic;
SIGNAL \inst8|inst2|control|freq_out[15]~9_combout\ : std_logic;
SIGNAL \inst8|inst2|control|freq_out[15]~49_combout\ : std_logic;
SIGNAL \inst8|inst2|control|freq_out[14]~11_combout\ : std_logic;
SIGNAL \inst8|inst2|control|freq_out[5]~16_combout\ : std_logic;
SIGNAL \inst8|inst2|control|freq_out[6]~19_combout\ : std_logic;
SIGNAL \inst8|inst2|control|freq_out[13]~20_combout\ : std_logic;
SIGNAL \inst8|inst2|control|freq_out[8]~12_combout\ : std_logic;
SIGNAL \inst8|inst2|control|freq_out[9]~14_combout\ : std_logic;
SIGNAL \inst8|inst2|control|freq_out[13]~21_combout\ : std_logic;
SIGNAL \inst8|inst2|control|freq_out[13]~22_combout\ : std_logic;
SIGNAL \inst8|inst2|control|freq_out[6]~26_combout\ : std_logic;
SIGNAL \inst8|inst2|control|freq_out[8]~29_combout\ : std_logic;
SIGNAL \inst8|inst2|control|freq_out[12]~30_combout\ : std_logic;
SIGNAL \inst8|inst2|control|freq_out[12]~31_combout\ : std_logic;
SIGNAL \inst8|inst2|control|freq_out[11]~32_combout\ : std_logic;
SIGNAL \inst8|inst2|control|freq_out[15]~33_combout\ : std_logic;
SIGNAL \inst8|inst2|control|freq_out[10]~35_combout\ : std_logic;
SIGNAL \inst8|inst2|control|freq_out[8]~37_combout\ : std_logic;
SIGNAL \inst8|inst2|control|freq_out[7]~38_combout\ : std_logic;
SIGNAL \inst8|inst2|control|freq_out[5]~39_combout\ : std_logic;
SIGNAL \inst8|inst2|control|freq_out[5]~40_combout\ : std_logic;
SIGNAL \inst8|inst2|control|freq_out[5]~44_combout\ : std_logic;
SIGNAL \inst8|inst2|control|freq_out[4]~45_combout\ : std_logic;
SIGNAL \inst8|inst2|control|freq_out[3]~46_combout\ : std_logic;
SIGNAL \inst8|inst2|div_clock|cnt[1]~18_combout\ : std_logic;
SIGNAL \inst8|inst2|div_clock|cnt[16]~49\ : std_logic;
SIGNAL \inst8|inst2|div_clock|cnt[17]~51_combout\ : std_logic;
SIGNAL \inst8|inst2|div_clock|cnt[17]~52\ : std_logic;
SIGNAL \inst8|inst2|div_clock|cnt[18]~53_combout\ : std_logic;
SIGNAL \inst8|inst2|div_clock|op_1~35_combout\ : std_logic;
SIGNAL \inst8|inst2|control|freq_out[1]~47_combout\ : std_logic;
SIGNAL \inst8|inst2|control|freq_out[0]~48_combout\ : std_logic;
SIGNAL \inst8|inst2|div_clock|op_1~3_cout\ : std_logic;
SIGNAL \inst8|inst2|div_clock|op_1~5_cout\ : std_logic;
SIGNAL \inst8|inst2|div_clock|op_1~7_cout\ : std_logic;
SIGNAL \inst8|inst2|div_clock|op_1~9_cout\ : std_logic;
SIGNAL \inst8|inst2|div_clock|op_1~11_cout\ : std_logic;
SIGNAL \inst8|inst2|div_clock|op_1~13_cout\ : std_logic;
SIGNAL \inst8|inst2|div_clock|op_1~15_cout\ : std_logic;
SIGNAL \inst8|inst2|div_clock|op_1~17_cout\ : std_logic;
SIGNAL \inst8|inst2|div_clock|op_1~19_cout\ : std_logic;
SIGNAL \inst8|inst2|div_clock|op_1~21_cout\ : std_logic;
SIGNAL \inst8|inst2|div_clock|op_1~23_cout\ : std_logic;
SIGNAL \inst8|inst2|div_clock|op_1~25_cout\ : std_logic;
SIGNAL \inst8|inst2|div_clock|op_1~27_cout\ : std_logic;
SIGNAL \inst8|inst2|div_clock|op_1~29_cout\ : std_logic;
SIGNAL \inst8|inst2|div_clock|op_1~31_cout\ : std_logic;
SIGNAL \inst8|inst2|div_clock|op_1~32_combout\ : std_logic;
SIGNAL \inst8|inst2|div_clock|op_1~34_combout\ : std_logic;
SIGNAL \inst8|inst2|div_clock|cnt[0]~50_combout\ : std_logic;
SIGNAL \inst8|inst2|div_clock|cnt[1]~19\ : std_logic;
SIGNAL \inst8|inst2|div_clock|cnt[2]~20_combout\ : std_logic;
SIGNAL \inst8|inst2|div_clock|cnt[2]~21\ : std_logic;
SIGNAL \inst8|inst2|div_clock|cnt[3]~22_combout\ : std_logic;
SIGNAL \inst8|inst2|div_clock|cnt[3]~23\ : std_logic;
SIGNAL \inst8|inst2|div_clock|cnt[4]~24_combout\ : std_logic;
SIGNAL \inst8|inst2|div_clock|cnt[4]~25\ : std_logic;
SIGNAL \inst8|inst2|div_clock|cnt[5]~26_combout\ : std_logic;
SIGNAL \inst8|inst2|div_clock|cnt[5]~27\ : std_logic;
SIGNAL \inst8|inst2|div_clock|cnt[6]~28_combout\ : std_logic;
SIGNAL \inst8|inst2|div_clock|cnt[6]~29\ : std_logic;
SIGNAL \inst8|inst2|div_clock|cnt[7]~30_combout\ : std_logic;
SIGNAL \inst8|inst2|div_clock|cnt[7]~31\ : std_logic;
SIGNAL \inst8|inst2|div_clock|cnt[8]~32_combout\ : std_logic;
SIGNAL \inst8|inst2|div_clock|cnt[8]~33\ : std_logic;
SIGNAL \inst8|inst2|div_clock|cnt[9]~34_combout\ : std_logic;
SIGNAL \inst8|inst2|div_clock|cnt[9]~35\ : std_logic;
SIGNAL \inst8|inst2|div_clock|cnt[10]~36_combout\ : std_logic;
SIGNAL \inst8|inst2|div_clock|cnt[10]~37\ : std_logic;
SIGNAL \inst8|inst2|div_clock|cnt[11]~38_combout\ : std_logic;
SIGNAL \inst8|inst2|div_clock|cnt[11]~39\ : std_logic;
SIGNAL \inst8|inst2|div_clock|cnt[12]~40_combout\ : std_logic;
SIGNAL \inst8|inst2|div_clock|cnt[12]~41\ : std_logic;
SIGNAL \inst8|inst2|div_clock|cnt[13]~42_combout\ : std_logic;
SIGNAL \inst8|inst2|div_clock|cnt[13]~43\ : std_logic;
SIGNAL \inst8|inst2|div_clock|cnt[14]~44_combout\ : std_logic;
SIGNAL \inst8|inst2|div_clock|cnt[14]~45\ : std_logic;
SIGNAL \inst8|inst2|div_clock|cnt[15]~46_combout\ : std_logic;
SIGNAL \inst8|inst2|div_clock|cnt[15]~47\ : std_logic;
SIGNAL \inst8|inst2|div_clock|cnt[16]~48_combout\ : std_logic;
SIGNAL \inst8|inst2|div_clock|alternador~1_combout\ : std_logic;
SIGNAL \inst8|inst2|div_clock|alternador~q\ : std_logic;
SIGNAL \key[4]~input_o\ : std_logic;
SIGNAL \inst|inst3|ff1~feeder_combout\ : std_logic;
SIGNAL \inst|inst3|ff1~q\ : std_logic;
SIGNAL \inst|inst3|ff2~q\ : std_logic;
SIGNAL \inst|inst3|_~7_combout\ : std_logic;
SIGNAL \inst|inst3|contador[1]~20_combout\ : std_logic;
SIGNAL \inst|inst3|_~8_combout\ : std_logic;
SIGNAL \inst|inst3|contador[1]~21\ : std_logic;
SIGNAL \inst|inst3|contador[2]~22_combout\ : std_logic;
SIGNAL \inst|inst3|contador[2]~23\ : std_logic;
SIGNAL \inst|inst3|contador[3]~24_combout\ : std_logic;
SIGNAL \inst|inst3|contador[3]~25\ : std_logic;
SIGNAL \inst|inst3|contador[4]~26_combout\ : std_logic;
SIGNAL \inst|inst3|contador[4]~27\ : std_logic;
SIGNAL \inst|inst3|contador[5]~28_combout\ : std_logic;
SIGNAL \inst|inst3|contador[5]~29\ : std_logic;
SIGNAL \inst|inst3|contador[6]~30_combout\ : std_logic;
SIGNAL \inst|inst3|contador[6]~31\ : std_logic;
SIGNAL \inst|inst3|contador[7]~32_combout\ : std_logic;
SIGNAL \inst|inst3|contador[7]~33\ : std_logic;
SIGNAL \inst|inst3|contador[8]~34_combout\ : std_logic;
SIGNAL \inst|inst3|contador[8]~35\ : std_logic;
SIGNAL \inst|inst3|contador[9]~36_combout\ : std_logic;
SIGNAL \inst|inst3|contador[9]~37\ : std_logic;
SIGNAL \inst|inst3|contador[10]~38_combout\ : std_logic;
SIGNAL \inst|inst3|contador[10]~39\ : std_logic;
SIGNAL \inst|inst3|contador[11]~40_combout\ : std_logic;
SIGNAL \inst|inst3|contador[11]~41\ : std_logic;
SIGNAL \inst|inst3|contador[12]~42_combout\ : std_logic;
SIGNAL \inst|inst3|contador[12]~43\ : std_logic;
SIGNAL \inst|inst3|contador[13]~44_combout\ : std_logic;
SIGNAL \inst|inst3|contador[13]~45\ : std_logic;
SIGNAL \inst|inst3|contador[14]~46_combout\ : std_logic;
SIGNAL \inst|inst3|contador[14]~47\ : std_logic;
SIGNAL \inst|inst3|contador[15]~48_combout\ : std_logic;
SIGNAL \inst|inst3|contador[15]~49\ : std_logic;
SIGNAL \inst|inst3|contador[16]~50_combout\ : std_logic;
SIGNAL \inst|inst3|contador[16]~51\ : std_logic;
SIGNAL \inst|inst3|contador[17]~52_combout\ : std_logic;
SIGNAL \inst|inst3|contador[17]~53\ : std_logic;
SIGNAL \inst|inst3|contador[18]~54_combout\ : std_logic;
SIGNAL \inst|inst3|contador[18]~55\ : std_logic;
SIGNAL \inst|inst3|contador[19]~56_combout\ : std_logic;
SIGNAL \inst|inst3|contador[19]~57\ : std_logic;
SIGNAL \inst|inst3|contador[20]~58_combout\ : std_logic;
SIGNAL \inst|inst3|_~5_combout\ : std_logic;
SIGNAL \inst|inst3|_~3_combout\ : std_logic;
SIGNAL \inst|inst3|_~0_combout\ : std_logic;
SIGNAL \inst|inst3|_~2_combout\ : std_logic;
SIGNAL \inst|inst3|_~1_combout\ : std_logic;
SIGNAL \inst|inst3|_~4_combout\ : std_logic;
SIGNAL \inst|inst3|_~6_combout\ : std_logic;
SIGNAL \inst|inst3|aux~0_combout\ : std_logic;
SIGNAL \inst|inst3|aux~q\ : std_logic;
SIGNAL \inst8|inst4|buzzer_out~combout\ : std_logic;
SIGNAL \inst2|inst6|_~4_combout\ : std_logic;
SIGNAL \inst2|inst6|ff[1]~12_combout\ : std_logic;
SIGNAL \inst2|inst6|ff[1]~13\ : std_logic;
SIGNAL \inst2|inst6|ff[2]~14_combout\ : std_logic;
SIGNAL \inst2|inst6|ff[2]~15\ : std_logic;
SIGNAL \inst2|inst6|ff[3]~16_combout\ : std_logic;
SIGNAL \inst2|inst6|ff[3]~17\ : std_logic;
SIGNAL \inst2|inst6|ff[4]~18_combout\ : std_logic;
SIGNAL \inst2|inst6|ff[4]~19\ : std_logic;
SIGNAL \inst2|inst6|ff[5]~20_combout\ : std_logic;
SIGNAL \inst2|inst6|ff[5]~21\ : std_logic;
SIGNAL \inst2|inst6|ff[6]~22_combout\ : std_logic;
SIGNAL \inst2|inst6|ff[6]~23\ : std_logic;
SIGNAL \inst2|inst6|ff[7]~24_combout\ : std_logic;
SIGNAL \inst2|inst6|ff[7]~25\ : std_logic;
SIGNAL \inst2|inst6|ff[8]~26_combout\ : std_logic;
SIGNAL \inst2|inst6|ff[8]~27\ : std_logic;
SIGNAL \inst2|inst6|ff[9]~28_combout\ : std_logic;
SIGNAL \inst2|inst6|ff[9]~29\ : std_logic;
SIGNAL \inst2|inst6|ff[10]~30_combout\ : std_logic;
SIGNAL \inst2|inst6|ff[10]~31\ : std_logic;
SIGNAL \inst2|inst6|ff[11]~32_combout\ : std_logic;
SIGNAL \inst2|inst6|ff[11]~33\ : std_logic;
SIGNAL \inst2|inst6|ff[12]~34_combout\ : std_logic;
SIGNAL \inst2|inst6|_~1_combout\ : std_logic;
SIGNAL \inst2|inst6|_~0_combout\ : std_logic;
SIGNAL \inst2|inst6|_~2_combout\ : std_logic;
SIGNAL \inst2|inst6|_~3_combout\ : std_logic;
SIGNAL \inst2|inst6|auxf[0]~1_combout\ : std_logic;
SIGNAL \inst2|inst6|auxf[1]~0_combout\ : std_logic;
SIGNAL \inst2|inst6|sel_disp[3]~4_combout\ : std_logic;
SIGNAL \inst2|inst5|led[3]~4_combout\ : std_logic;
SIGNAL \inst2|inst5|led[2]~5_combout\ : std_logic;
SIGNAL \inst2|inst5|led[1]~6_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_025|_~8_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_025|q[1]~24_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_025|q[1]~25\ : std_logic;
SIGNAL \inst7|inst11|clock_025|q[2]~26_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_025|q[2]~27\ : std_logic;
SIGNAL \inst7|inst11|clock_025|q[3]~28_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_025|q[3]~29\ : std_logic;
SIGNAL \inst7|inst11|clock_025|q[4]~30_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_025|q[4]~31\ : std_logic;
SIGNAL \inst7|inst11|clock_025|q[5]~32_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_025|q[5]~33\ : std_logic;
SIGNAL \inst7|inst11|clock_025|q[6]~34_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_025|q[6]~35\ : std_logic;
SIGNAL \inst7|inst11|clock_025|q[7]~36_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_025|q[7]~37\ : std_logic;
SIGNAL \inst7|inst11|clock_025|q[8]~38_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_025|q[8]~39\ : std_logic;
SIGNAL \inst7|inst11|clock_025|q[9]~40_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_025|q[9]~41\ : std_logic;
SIGNAL \inst7|inst11|clock_025|q[10]~42_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_025|q[10]~43\ : std_logic;
SIGNAL \inst7|inst11|clock_025|q[11]~44_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_025|q[11]~45\ : std_logic;
SIGNAL \inst7|inst11|clock_025|q[12]~46_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_025|q[12]~47\ : std_logic;
SIGNAL \inst7|inst11|clock_025|q[13]~48_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_025|q[13]~49\ : std_logic;
SIGNAL \inst7|inst11|clock_025|q[14]~50_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_025|q[14]~51\ : std_logic;
SIGNAL \inst7|inst11|clock_025|q[15]~52_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_025|q[15]~53\ : std_logic;
SIGNAL \inst7|inst11|clock_025|q[16]~54_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_025|q[16]~55\ : std_logic;
SIGNAL \inst7|inst11|clock_025|q[17]~56_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_025|q[17]~57\ : std_logic;
SIGNAL \inst7|inst11|clock_025|q[18]~58_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_025|q[18]~59\ : std_logic;
SIGNAL \inst7|inst11|clock_025|q[19]~60_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_025|q[19]~61\ : std_logic;
SIGNAL \inst7|inst11|clock_025|q[20]~62_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_025|q[20]~63\ : std_logic;
SIGNAL \inst7|inst11|clock_025|q[21]~64_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_025|q[21]~65\ : std_logic;
SIGNAL \inst7|inst11|clock_025|q[22]~66_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_025|q[22]~67\ : std_logic;
SIGNAL \inst7|inst11|clock_025|q[23]~68_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_025|_~6_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_025|q[23]~69\ : std_logic;
SIGNAL \inst7|inst11|clock_025|q[24]~70_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_025|_~5_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_025|_~1_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_025|_~3_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_025|_~0_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_025|_~2_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_025|_~4_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_025|_~7_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_025|aux~q\ : std_logic;
SIGNAL \inst7|inst11|clock_2|_~7_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_2|q[1]~21_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_2|q[1]~22\ : std_logic;
SIGNAL \inst7|inst11|clock_2|q[2]~23_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_2|q[2]~24\ : std_logic;
SIGNAL \inst7|inst11|clock_2|q[3]~25_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_2|q[3]~26\ : std_logic;
SIGNAL \inst7|inst11|clock_2|q[4]~27_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_2|q[4]~28\ : std_logic;
SIGNAL \inst7|inst11|clock_2|q[5]~29_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_2|q[5]~30\ : std_logic;
SIGNAL \inst7|inst11|clock_2|q[6]~31_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_2|q[6]~32\ : std_logic;
SIGNAL \inst7|inst11|clock_2|q[7]~33_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_2|q[7]~34\ : std_logic;
SIGNAL \inst7|inst11|clock_2|q[8]~35_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_2|q[8]~36\ : std_logic;
SIGNAL \inst7|inst11|clock_2|q[9]~37_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_2|q[9]~38\ : std_logic;
SIGNAL \inst7|inst11|clock_2|q[10]~39_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_2|q[10]~40\ : std_logic;
SIGNAL \inst7|inst11|clock_2|q[11]~41_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_2|q[11]~42\ : std_logic;
SIGNAL \inst7|inst11|clock_2|q[12]~43_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_2|q[12]~44\ : std_logic;
SIGNAL \inst7|inst11|clock_2|q[13]~45_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_2|q[13]~46\ : std_logic;
SIGNAL \inst7|inst11|clock_2|q[14]~47_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_2|q[14]~48\ : std_logic;
SIGNAL \inst7|inst11|clock_2|q[15]~49_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_2|q[15]~50\ : std_logic;
SIGNAL \inst7|inst11|clock_2|q[16]~51_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_2|q[16]~52\ : std_logic;
SIGNAL \inst7|inst11|clock_2|q[17]~53_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_2|q[17]~54\ : std_logic;
SIGNAL \inst7|inst11|clock_2|q[18]~55_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_2|q[18]~56\ : std_logic;
SIGNAL \inst7|inst11|clock_2|q[19]~57_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_2|q[19]~58\ : std_logic;
SIGNAL \inst7|inst11|clock_2|q[20]~59_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_2|q[20]~60\ : std_logic;
SIGNAL \inst7|inst11|clock_2|q[21]~61_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_2|_~5_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_2|_~0_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_2|_~2_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_2|_~1_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_2|_~3_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_2|_~4_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_2|_~6_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_2|aux~q\ : std_logic;
SIGNAL \inst7|inst11|clk_O~5_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_050|q[18]~58\ : std_logic;
SIGNAL \inst7|inst11|clock_050|q[19]~59_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_050|q[19]~60\ : std_logic;
SIGNAL \inst7|inst11|clock_050|q[20]~61_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_050|q[20]~62\ : std_logic;
SIGNAL \inst7|inst11|clock_050|q[21]~63_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_050|q[21]~64\ : std_logic;
SIGNAL \inst7|inst11|clock_050|q[22]~65_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_050|q[22]~66\ : std_logic;
SIGNAL \inst7|inst11|clock_050|q[23]~67_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_050|_~6_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_050|_~3_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_050|_~1_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_050|_~2_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_050|_~0_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_050|_~4_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_050|_~8_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_050|q[1]~23_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_050|q[1]~24\ : std_logic;
SIGNAL \inst7|inst11|clock_050|q[2]~25_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_050|q[2]~26\ : std_logic;
SIGNAL \inst7|inst11|clock_050|q[3]~27_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_050|q[3]~28\ : std_logic;
SIGNAL \inst7|inst11|clock_050|q[4]~29_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_050|q[4]~30\ : std_logic;
SIGNAL \inst7|inst11|clock_050|q[5]~31_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_050|q[5]~32\ : std_logic;
SIGNAL \inst7|inst11|clock_050|q[6]~33_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_050|q[6]~34\ : std_logic;
SIGNAL \inst7|inst11|clock_050|q[7]~35_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_050|q[7]~36\ : std_logic;
SIGNAL \inst7|inst11|clock_050|q[8]~37_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_050|q[8]~38\ : std_logic;
SIGNAL \inst7|inst11|clock_050|q[9]~39_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_050|q[9]~40\ : std_logic;
SIGNAL \inst7|inst11|clock_050|q[10]~41_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_050|q[10]~42\ : std_logic;
SIGNAL \inst7|inst11|clock_050|q[11]~43_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_050|q[11]~44\ : std_logic;
SIGNAL \inst7|inst11|clock_050|q[12]~45_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_050|q[12]~46\ : std_logic;
SIGNAL \inst7|inst11|clock_050|q[13]~47_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_050|q[13]~48\ : std_logic;
SIGNAL \inst7|inst11|clock_050|q[14]~49_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_050|q[14]~50\ : std_logic;
SIGNAL \inst7|inst11|clock_050|q[15]~51_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_050|q[15]~52\ : std_logic;
SIGNAL \inst7|inst11|clock_050|q[16]~53_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_050|q[16]~54\ : std_logic;
SIGNAL \inst7|inst11|clock_050|q[17]~55_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_050|q[17]~56\ : std_logic;
SIGNAL \inst7|inst11|clock_050|q[18]~57_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_050|_~5_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_050|_~7_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_050|aux~q\ : std_logic;
SIGNAL \inst7|inst11|clock_1|_~5_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_1|_~3_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_1|_~2_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_1|_~0_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_1|_~1_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_1|_~4_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_1|_~8_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_1|q[1]~22_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_1|q[1]~23\ : std_logic;
SIGNAL \inst7|inst11|clock_1|q[2]~24_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_1|q[2]~25\ : std_logic;
SIGNAL \inst7|inst11|clock_1|q[3]~26_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_1|q[3]~27\ : std_logic;
SIGNAL \inst7|inst11|clock_1|q[4]~28_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_1|q[4]~29\ : std_logic;
SIGNAL \inst7|inst11|clock_1|q[5]~30_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_1|q[5]~31\ : std_logic;
SIGNAL \inst7|inst11|clock_1|q[6]~32_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_1|q[6]~33\ : std_logic;
SIGNAL \inst7|inst11|clock_1|q[7]~34_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_1|q[7]~35\ : std_logic;
SIGNAL \inst7|inst11|clock_1|q[8]~36_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_1|q[8]~37\ : std_logic;
SIGNAL \inst7|inst11|clock_1|q[9]~38_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_1|q[9]~39\ : std_logic;
SIGNAL \inst7|inst11|clock_1|q[10]~40_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_1|q[10]~41\ : std_logic;
SIGNAL \inst7|inst11|clock_1|q[11]~42_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_1|q[11]~43\ : std_logic;
SIGNAL \inst7|inst11|clock_1|q[12]~44_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_1|q[12]~45\ : std_logic;
SIGNAL \inst7|inst11|clock_1|q[13]~46_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_1|q[13]~47\ : std_logic;
SIGNAL \inst7|inst11|clock_1|q[14]~48_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_1|q[14]~49\ : std_logic;
SIGNAL \inst7|inst11|clock_1|q[15]~50_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_1|q[15]~51\ : std_logic;
SIGNAL \inst7|inst11|clock_1|q[16]~52_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_1|q[16]~53\ : std_logic;
SIGNAL \inst7|inst11|clock_1|q[17]~54_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_1|q[17]~55\ : std_logic;
SIGNAL \inst7|inst11|clock_1|q[18]~56_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_1|q[18]~57\ : std_logic;
SIGNAL \inst7|inst11|clock_1|q[19]~58_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_1|q[19]~59\ : std_logic;
SIGNAL \inst7|inst11|clock_1|q[20]~60_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_1|q[20]~61\ : std_logic;
SIGNAL \inst7|inst11|clock_1|q[21]~62_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_1|q[21]~63\ : std_logic;
SIGNAL \inst7|inst11|clock_1|q[22]~64_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_1|_~6_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_1|_~7_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_1|aux~feeder_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_1|aux~q\ : std_logic;
SIGNAL \inst7|inst11|clk_O~combout\ : std_logic;
SIGNAL \inst7|inst11|clk_O~clkctrl_outclk\ : std_logic;
SIGNAL \inst7|inst|contador[0]~3_combout\ : std_logic;
SIGNAL \inst7|inst|contador[2]~2_combout\ : std_logic;
SIGNAL \inst7|inst|contador[3]~0_combout\ : std_logic;
SIGNAL \inst7|inst|contador[1]~1_combout\ : std_logic;
SIGNAL \inst7|inst|_~0_combout\ : std_logic;
SIGNAL \inst7|inst|_~1_combout\ : std_logic;
SIGNAL \inst7|inst|aux~q\ : std_logic;
SIGNAL \inst7|inst|aux~clkctrl_outclk\ : std_logic;
SIGNAL \inst7|inst2|contador[0]~3_combout\ : std_logic;
SIGNAL \inst7|inst2|contador[1]~1_combout\ : std_logic;
SIGNAL \inst7|inst2|contador[2]~2_combout\ : std_logic;
SIGNAL \inst7|inst2|contador[3]~0_combout\ : std_logic;
SIGNAL \inst7|inst2|_~0_combout\ : std_logic;
SIGNAL \inst7|inst2|_~1_combout\ : std_logic;
SIGNAL \inst7|inst2|aux~q\ : std_logic;
SIGNAL \inst7|inst2|aux~clkctrl_outclk\ : std_logic;
SIGNAL \inst7|inst3|contador[0]~3_combout\ : std_logic;
SIGNAL \inst7|inst3|contador[3]~0_combout\ : std_logic;
SIGNAL \inst7|inst3|contador[1]~1_combout\ : std_logic;
SIGNAL \inst7|inst3|contador[2]~2_combout\ : std_logic;
SIGNAL \inst7|inst3|_~0_combout\ : std_logic;
SIGNAL \inst7|inst3|_~1_combout\ : std_logic;
SIGNAL \inst7|inst3|aux~q\ : std_logic;
SIGNAL \inst7|inst3|aux~clkctrl_outclk\ : std_logic;
SIGNAL \inst7|inst5|contador[0]~3_combout\ : std_logic;
SIGNAL \inst7|inst5|contador[2]~2_combout\ : std_logic;
SIGNAL \inst7|inst5|contador[3]~0_combout\ : std_logic;
SIGNAL \inst7|inst5|contador[1]~1_combout\ : std_logic;
SIGNAL \inst2|inst6|num[1]~2_combout\ : std_logic;
SIGNAL \inst2|inst6|num[1]~3_combout\ : std_logic;
SIGNAL \inst2|inst6|num[0]~6_combout\ : std_logic;
SIGNAL \inst2|inst6|num[0]~7_combout\ : std_logic;
SIGNAL \inst2|inst6|num[2]~4_combout\ : std_logic;
SIGNAL \inst2|inst6|num[2]~5_combout\ : std_logic;
SIGNAL \inst2|inst6|num[3]~0_combout\ : std_logic;
SIGNAL \inst2|inst6|num[3]~1_combout\ : std_logic;
SIGNAL \inst2|inst6|dig_7seg[7]~9_combout\ : std_logic;
SIGNAL \inst2|inst6|dig_7seg[6]~10_combout\ : std_logic;
SIGNAL \inst2|inst6|dig_7seg[5]~11_combout\ : std_logic;
SIGNAL \inst2|inst6|dig_7seg[4]~12_combout\ : std_logic;
SIGNAL \inst2|inst6|dig_7seg[3]~13_combout\ : std_logic;
SIGNAL \inst2|inst6|dig_7seg[2]~14_combout\ : std_logic;
SIGNAL \inst2|inst6|dig_7seg[1]~15_combout\ : std_logic;
SIGNAL \inst7|inst11|clock_025|q\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \inst2|inst6|sel_disp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst3|contador\ : std_logic_vector(20 DOWNTO 0);
SIGNAL \inst3|clock_050|q\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst8|inst2|div_clock|cnt\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst8|inst2|control|temp_out\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \inst7|inst11|clock_2|q\ : std_logic_vector(21 DOWNTO 0);
SIGNAL \inst8|inst2|temp|cnt\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \inst7|inst3|contador\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|inst6|ff\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst|inst2|contador\ : std_logic_vector(20 DOWNTO 0);
SIGNAL \inst2|inst6|auxf\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst7|inst11|clock_1|q\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst7|inst11|clock_050|q\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \inst|inst1|contador\ : std_logic_vector(20 DOWNTO 0);
SIGNAL \inst|inst|contador\ : std_logic_vector(20 DOWNTO 0);
SIGNAL \inst7|inst2|contador\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|inst5|led\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|inst|contador\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|inst5|contador\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst8|inst2|control|freq_out\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst3|clock_025|q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|inst6|ALT_INV_sel_disp[3]~4_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_P2~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

buzzer <= ww_buzzer;
ww_clock <= clock;
ww_key <= key;
dig <= ww_dig;
led <= ww_led;
seg <= ww_seg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst7|inst11|clk_O~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst7|inst11|clk_O~combout\);

\inst8|inst2|control|clk_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst8|inst2|control|clk_out~combout\);

\inst7|inst2|aux~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst7|inst2|aux~q\);

\inst7|inst|aux~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst7|inst|aux~q\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

\inst3|clk_O~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst3|clk_O~combout\);

\inst7|inst3|aux~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst7|inst3|aux~q\);
\inst2|inst6|ALT_INV_sel_disp[3]~4_combout\ <= NOT \inst2|inst6|sel_disp[3]~4_combout\;
\inst1|ALT_INV_P2~q\ <= NOT \inst1|P2~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X30_Y24_N2
\buzzer~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst4|buzzer_out~combout\,
	devoe => ww_devoe,
	o => \buzzer~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\dig[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst6|sel_disp\(3),
	devoe => ww_devoe,
	o => \dig[4]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\dig[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst6|sel_disp\(2),
	devoe => ww_devoe,
	o => \dig[3]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\dig[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst6|sel_disp\(1),
	devoe => ww_devoe,
	o => \dig[2]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\dig[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst6|ALT_INV_sel_disp[3]~4_combout\,
	devoe => ww_devoe,
	o => \dig[1]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\led[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst5|led[3]~4_combout\,
	devoe => ww_devoe,
	o => \led[1]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\led[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst5|led[2]~5_combout\,
	devoe => ww_devoe,
	o => \led[2]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\led[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst5|led[1]~6_combout\,
	devoe => ww_devoe,
	o => \led[3]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\led[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst5|led\(0),
	devoe => ww_devoe,
	o => \led[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\seg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst6|dig_7seg[7]~9_combout\,
	devoe => ww_devoe,
	o => \seg[0]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\seg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst6|dig_7seg[6]~10_combout\,
	devoe => ww_devoe,
	o => \seg[1]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\seg[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst6|dig_7seg[5]~11_combout\,
	devoe => ww_devoe,
	o => \seg[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\seg[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst6|dig_7seg[4]~12_combout\,
	devoe => ww_devoe,
	o => \seg[3]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\seg[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst6|dig_7seg[3]~13_combout\,
	devoe => ww_devoe,
	o => \seg[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\seg[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst6|dig_7seg[2]~14_combout\,
	devoe => ww_devoe,
	o => \seg[5]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\seg[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst6|dig_7seg[1]~15_combout\,
	devoe => ww_devoe,
	o => \seg[6]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\seg[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst6|auxf\(0),
	devoe => ww_devoe,
	o => \seg[7]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G2
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X19_Y12_N20
\inst3|clock_050|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clock_050|_~1_combout\ = (!\inst3|clock_050|q\(1) & \inst3|clock_050|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|clock_050|q\(1),
	datad => \inst3|clock_050|q\(0),
	combout => \inst3|clock_050|_~1_combout\);

-- Location: FF_X19_Y12_N21
\inst3|clock_050|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|clock_050|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clock_050|q\(1));

-- Location: LCCOMB_X19_Y12_N8
\inst3|clock_050|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clock_050|_~2_combout\ = (!\inst3|clock_050|q\(1) & !\inst3|clock_050|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|clock_050|q\(1),
	datac => \inst3|clock_050|q\(0),
	combout => \inst3|clock_050|_~2_combout\);

-- Location: FF_X19_Y12_N9
\inst3|clock_050|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|clock_050|_~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clock_050|q\(0));

-- Location: LCCOMB_X19_Y12_N22
\inst3|clock_050|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clock_050|_~0_combout\ = (!\inst3|clock_050|q\(0) & \inst3|clock_050|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|clock_050|q\(0),
	datad => \inst3|clock_050|q\(1),
	combout => \inst3|clock_050|_~0_combout\);

-- Location: FF_X19_Y12_N23
\inst3|clock_050|aux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst3|clock_050|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clock_050|aux~q\);

-- Location: LCCOMB_X19_Y12_N26
\inst3|clock_025|q[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clock_025|q[1]~0_combout\ = \inst3|clock_025|q\(1) $ (\inst3|clock_025|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|clock_025|q\(1),
	datad => \inst3|clock_025|q\(0),
	combout => \inst3|clock_025|q[1]~0_combout\);

-- Location: FF_X19_Y12_N27
\inst3|clock_025|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|clock_025|q[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clock_025|q\(1));

-- Location: LCCOMB_X19_Y12_N4
\inst3|clock_025|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clock_025|_~2_combout\ = (!\inst3|clock_025|q\(0) & ((\inst3|clock_025|q\(1)) # (!\inst3|clock_025|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|clock_025|q\(2),
	datac => \inst3|clock_025|q\(0),
	datad => \inst3|clock_025|q\(1),
	combout => \inst3|clock_025|_~2_combout\);

-- Location: FF_X19_Y12_N5
\inst3|clock_025|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|clock_025|_~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clock_025|q\(0));

-- Location: LCCOMB_X19_Y12_N28
\inst3|clock_025|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clock_025|_~1_combout\ = (\inst3|clock_025|q\(0) & (\inst3|clock_025|q\(2) $ (\inst3|clock_025|q\(1)))) # (!\inst3|clock_025|q\(0) & (\inst3|clock_025|q\(2) & \inst3|clock_025|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|clock_025|q\(0),
	datac => \inst3|clock_025|q\(2),
	datad => \inst3|clock_025|q\(1),
	combout => \inst3|clock_025|_~1_combout\);

-- Location: FF_X19_Y12_N29
\inst3|clock_025|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|clock_025|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clock_025|q\(2));

-- Location: LCCOMB_X19_Y12_N10
\inst3|clock_025|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clock_025|_~0_combout\ = (\inst3|clock_025|q\(2) & (!\inst3|clock_025|q\(1) & !\inst3|clock_025|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|clock_025|q\(2),
	datab => \inst3|clock_025|q\(1),
	datac => \inst3|clock_025|q\(0),
	combout => \inst3|clock_025|_~0_combout\);

-- Location: FF_X19_Y12_N11
\inst3|clock_025|aux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst3|clock_025|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clock_025|aux~q\);

-- Location: LCCOMB_X23_Y12_N24
\inst1|S1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|S1~1_combout\ = !\inst1|S4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|S4~q\,
	combout => \inst1|S1~1_combout\);

-- Location: IOIBUF_X34_Y12_N8
\key[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(3),
	o => \key[3]~input_o\);

-- Location: LCCOMB_X30_Y8_N18
\inst|inst2|ff1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|ff1~feeder_combout\ = \key[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key[3]~input_o\,
	combout => \inst|inst2|ff1~feeder_combout\);

-- Location: FF_X30_Y8_N19
\inst|inst2|ff1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst2|ff1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|ff1~q\);

-- Location: LCCOMB_X30_Y8_N12
\inst|inst2|ff2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|ff2~feeder_combout\ = \inst|inst2|ff1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|ff1~q\,
	combout => \inst|inst2|ff2~feeder_combout\);

-- Location: FF_X30_Y8_N13
\inst|inst2|ff2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst2|ff2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|ff2~q\);

-- Location: LCCOMB_X30_Y8_N10
\inst|inst2|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|_~7_combout\ = (!\inst|inst2|contador\(0) & (!\inst|inst2|_~6_combout\ & (\inst|inst2|ff2~q\ $ (!\inst|inst2|ff1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|ff2~q\,
	datab => \inst|inst2|ff1~q\,
	datac => \inst|inst2|contador\(0),
	datad => \inst|inst2|_~6_combout\,
	combout => \inst|inst2|_~7_combout\);

-- Location: FF_X30_Y8_N11
\inst|inst2|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst2|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|contador\(0));

-- Location: LCCOMB_X29_Y9_N12
\inst|inst2|contador[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|contador[1]~20_combout\ = (\inst|inst2|contador\(1) & (\inst|inst2|contador\(0) $ (VCC))) # (!\inst|inst2|contador\(1) & (\inst|inst2|contador\(0) & VCC))
-- \inst|inst2|contador[1]~21\ = CARRY((\inst|inst2|contador\(1) & \inst|inst2|contador\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|contador\(1),
	datab => \inst|inst2|contador\(0),
	datad => VCC,
	combout => \inst|inst2|contador[1]~20_combout\,
	cout => \inst|inst2|contador[1]~21\);

-- Location: LCCOMB_X30_Y8_N0
\inst|inst2|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|_~8_combout\ = (\inst|inst2|_~6_combout\) # (\inst|inst2|ff2~q\ $ (\inst|inst2|ff1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|ff2~q\,
	datab => \inst|inst2|ff1~q\,
	datad => \inst|inst2|_~6_combout\,
	combout => \inst|inst2|_~8_combout\);

-- Location: FF_X29_Y9_N13
\inst|inst2|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst2|contador[1]~20_combout\,
	sclr => \inst|inst2|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|contador\(1));

-- Location: LCCOMB_X29_Y9_N14
\inst|inst2|contador[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|contador[2]~22_combout\ = (\inst|inst2|contador\(2) & (!\inst|inst2|contador[1]~21\)) # (!\inst|inst2|contador\(2) & ((\inst|inst2|contador[1]~21\) # (GND)))
-- \inst|inst2|contador[2]~23\ = CARRY((!\inst|inst2|contador[1]~21\) # (!\inst|inst2|contador\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|contador\(2),
	datad => VCC,
	cin => \inst|inst2|contador[1]~21\,
	combout => \inst|inst2|contador[2]~22_combout\,
	cout => \inst|inst2|contador[2]~23\);

-- Location: FF_X29_Y9_N15
\inst|inst2|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst2|contador[2]~22_combout\,
	sclr => \inst|inst2|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|contador\(2));

-- Location: LCCOMB_X29_Y9_N16
\inst|inst2|contador[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|contador[3]~24_combout\ = (\inst|inst2|contador\(3) & (\inst|inst2|contador[2]~23\ $ (GND))) # (!\inst|inst2|contador\(3) & (!\inst|inst2|contador[2]~23\ & VCC))
-- \inst|inst2|contador[3]~25\ = CARRY((\inst|inst2|contador\(3) & !\inst|inst2|contador[2]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|contador\(3),
	datad => VCC,
	cin => \inst|inst2|contador[2]~23\,
	combout => \inst|inst2|contador[3]~24_combout\,
	cout => \inst|inst2|contador[3]~25\);

-- Location: FF_X29_Y9_N17
\inst|inst2|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst2|contador[3]~24_combout\,
	sclr => \inst|inst2|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|contador\(3));

-- Location: LCCOMB_X29_Y9_N18
\inst|inst2|contador[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|contador[4]~26_combout\ = (\inst|inst2|contador\(4) & (!\inst|inst2|contador[3]~25\)) # (!\inst|inst2|contador\(4) & ((\inst|inst2|contador[3]~25\) # (GND)))
-- \inst|inst2|contador[4]~27\ = CARRY((!\inst|inst2|contador[3]~25\) # (!\inst|inst2|contador\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|contador\(4),
	datad => VCC,
	cin => \inst|inst2|contador[3]~25\,
	combout => \inst|inst2|contador[4]~26_combout\,
	cout => \inst|inst2|contador[4]~27\);

-- Location: FF_X29_Y9_N19
\inst|inst2|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst2|contador[4]~26_combout\,
	sclr => \inst|inst2|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|contador\(4));

-- Location: LCCOMB_X29_Y9_N20
\inst|inst2|contador[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|contador[5]~28_combout\ = (\inst|inst2|contador\(5) & (\inst|inst2|contador[4]~27\ $ (GND))) # (!\inst|inst2|contador\(5) & (!\inst|inst2|contador[4]~27\ & VCC))
-- \inst|inst2|contador[5]~29\ = CARRY((\inst|inst2|contador\(5) & !\inst|inst2|contador[4]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|contador\(5),
	datad => VCC,
	cin => \inst|inst2|contador[4]~27\,
	combout => \inst|inst2|contador[5]~28_combout\,
	cout => \inst|inst2|contador[5]~29\);

-- Location: FF_X29_Y9_N21
\inst|inst2|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst2|contador[5]~28_combout\,
	sclr => \inst|inst2|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|contador\(5));

-- Location: LCCOMB_X29_Y9_N22
\inst|inst2|contador[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|contador[6]~30_combout\ = (\inst|inst2|contador\(6) & (!\inst|inst2|contador[5]~29\)) # (!\inst|inst2|contador\(6) & ((\inst|inst2|contador[5]~29\) # (GND)))
-- \inst|inst2|contador[6]~31\ = CARRY((!\inst|inst2|contador[5]~29\) # (!\inst|inst2|contador\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|contador\(6),
	datad => VCC,
	cin => \inst|inst2|contador[5]~29\,
	combout => \inst|inst2|contador[6]~30_combout\,
	cout => \inst|inst2|contador[6]~31\);

-- Location: FF_X29_Y9_N23
\inst|inst2|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst2|contador[6]~30_combout\,
	sclr => \inst|inst2|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|contador\(6));

-- Location: LCCOMB_X29_Y9_N24
\inst|inst2|contador[7]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|contador[7]~32_combout\ = (\inst|inst2|contador\(7) & (\inst|inst2|contador[6]~31\ $ (GND))) # (!\inst|inst2|contador\(7) & (!\inst|inst2|contador[6]~31\ & VCC))
-- \inst|inst2|contador[7]~33\ = CARRY((\inst|inst2|contador\(7) & !\inst|inst2|contador[6]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|contador\(7),
	datad => VCC,
	cin => \inst|inst2|contador[6]~31\,
	combout => \inst|inst2|contador[7]~32_combout\,
	cout => \inst|inst2|contador[7]~33\);

-- Location: FF_X29_Y9_N25
\inst|inst2|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst2|contador[7]~32_combout\,
	sclr => \inst|inst2|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|contador\(7));

-- Location: LCCOMB_X29_Y9_N26
\inst|inst2|contador[8]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|contador[8]~34_combout\ = (\inst|inst2|contador\(8) & (!\inst|inst2|contador[7]~33\)) # (!\inst|inst2|contador\(8) & ((\inst|inst2|contador[7]~33\) # (GND)))
-- \inst|inst2|contador[8]~35\ = CARRY((!\inst|inst2|contador[7]~33\) # (!\inst|inst2|contador\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|contador\(8),
	datad => VCC,
	cin => \inst|inst2|contador[7]~33\,
	combout => \inst|inst2|contador[8]~34_combout\,
	cout => \inst|inst2|contador[8]~35\);

-- Location: FF_X29_Y9_N27
\inst|inst2|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst2|contador[8]~34_combout\,
	sclr => \inst|inst2|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|contador\(8));

-- Location: LCCOMB_X29_Y9_N28
\inst|inst2|contador[9]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|contador[9]~36_combout\ = (\inst|inst2|contador\(9) & (\inst|inst2|contador[8]~35\ $ (GND))) # (!\inst|inst2|contador\(9) & (!\inst|inst2|contador[8]~35\ & VCC))
-- \inst|inst2|contador[9]~37\ = CARRY((\inst|inst2|contador\(9) & !\inst|inst2|contador[8]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|contador\(9),
	datad => VCC,
	cin => \inst|inst2|contador[8]~35\,
	combout => \inst|inst2|contador[9]~36_combout\,
	cout => \inst|inst2|contador[9]~37\);

-- Location: FF_X29_Y9_N29
\inst|inst2|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst2|contador[9]~36_combout\,
	sclr => \inst|inst2|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|contador\(9));

-- Location: LCCOMB_X29_Y9_N30
\inst|inst2|contador[10]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|contador[10]~38_combout\ = (\inst|inst2|contador\(10) & (!\inst|inst2|contador[9]~37\)) # (!\inst|inst2|contador\(10) & ((\inst|inst2|contador[9]~37\) # (GND)))
-- \inst|inst2|contador[10]~39\ = CARRY((!\inst|inst2|contador[9]~37\) # (!\inst|inst2|contador\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|contador\(10),
	datad => VCC,
	cin => \inst|inst2|contador[9]~37\,
	combout => \inst|inst2|contador[10]~38_combout\,
	cout => \inst|inst2|contador[10]~39\);

-- Location: FF_X29_Y9_N31
\inst|inst2|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst2|contador[10]~38_combout\,
	sclr => \inst|inst2|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|contador\(10));

-- Location: LCCOMB_X29_Y8_N0
\inst|inst2|contador[11]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|contador[11]~40_combout\ = (\inst|inst2|contador\(11) & (\inst|inst2|contador[10]~39\ $ (GND))) # (!\inst|inst2|contador\(11) & (!\inst|inst2|contador[10]~39\ & VCC))
-- \inst|inst2|contador[11]~41\ = CARRY((\inst|inst2|contador\(11) & !\inst|inst2|contador[10]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|contador\(11),
	datad => VCC,
	cin => \inst|inst2|contador[10]~39\,
	combout => \inst|inst2|contador[11]~40_combout\,
	cout => \inst|inst2|contador[11]~41\);

-- Location: FF_X29_Y8_N1
\inst|inst2|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst2|contador[11]~40_combout\,
	sclr => \inst|inst2|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|contador\(11));

-- Location: LCCOMB_X29_Y8_N2
\inst|inst2|contador[12]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|contador[12]~42_combout\ = (\inst|inst2|contador\(12) & (!\inst|inst2|contador[11]~41\)) # (!\inst|inst2|contador\(12) & ((\inst|inst2|contador[11]~41\) # (GND)))
-- \inst|inst2|contador[12]~43\ = CARRY((!\inst|inst2|contador[11]~41\) # (!\inst|inst2|contador\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|contador\(12),
	datad => VCC,
	cin => \inst|inst2|contador[11]~41\,
	combout => \inst|inst2|contador[12]~42_combout\,
	cout => \inst|inst2|contador[12]~43\);

-- Location: FF_X29_Y8_N3
\inst|inst2|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst2|contador[12]~42_combout\,
	sclr => \inst|inst2|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|contador\(12));

-- Location: LCCOMB_X29_Y8_N4
\inst|inst2|contador[13]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|contador[13]~44_combout\ = (\inst|inst2|contador\(13) & (\inst|inst2|contador[12]~43\ $ (GND))) # (!\inst|inst2|contador\(13) & (!\inst|inst2|contador[12]~43\ & VCC))
-- \inst|inst2|contador[13]~45\ = CARRY((\inst|inst2|contador\(13) & !\inst|inst2|contador[12]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|contador\(13),
	datad => VCC,
	cin => \inst|inst2|contador[12]~43\,
	combout => \inst|inst2|contador[13]~44_combout\,
	cout => \inst|inst2|contador[13]~45\);

-- Location: FF_X29_Y8_N5
\inst|inst2|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst2|contador[13]~44_combout\,
	sclr => \inst|inst2|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|contador\(13));

-- Location: LCCOMB_X29_Y8_N6
\inst|inst2|contador[14]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|contador[14]~46_combout\ = (\inst|inst2|contador\(14) & (!\inst|inst2|contador[13]~45\)) # (!\inst|inst2|contador\(14) & ((\inst|inst2|contador[13]~45\) # (GND)))
-- \inst|inst2|contador[14]~47\ = CARRY((!\inst|inst2|contador[13]~45\) # (!\inst|inst2|contador\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|contador\(14),
	datad => VCC,
	cin => \inst|inst2|contador[13]~45\,
	combout => \inst|inst2|contador[14]~46_combout\,
	cout => \inst|inst2|contador[14]~47\);

-- Location: FF_X29_Y8_N7
\inst|inst2|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst2|contador[14]~46_combout\,
	sclr => \inst|inst2|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|contador\(14));

-- Location: LCCOMB_X29_Y8_N8
\inst|inst2|contador[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|contador[15]~48_combout\ = (\inst|inst2|contador\(15) & (\inst|inst2|contador[14]~47\ $ (GND))) # (!\inst|inst2|contador\(15) & (!\inst|inst2|contador[14]~47\ & VCC))
-- \inst|inst2|contador[15]~49\ = CARRY((\inst|inst2|contador\(15) & !\inst|inst2|contador[14]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|contador\(15),
	datad => VCC,
	cin => \inst|inst2|contador[14]~47\,
	combout => \inst|inst2|contador[15]~48_combout\,
	cout => \inst|inst2|contador[15]~49\);

-- Location: FF_X29_Y8_N9
\inst|inst2|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst2|contador[15]~48_combout\,
	sclr => \inst|inst2|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|contador\(15));

-- Location: LCCOMB_X29_Y8_N10
\inst|inst2|contador[16]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|contador[16]~50_combout\ = (\inst|inst2|contador\(16) & (!\inst|inst2|contador[15]~49\)) # (!\inst|inst2|contador\(16) & ((\inst|inst2|contador[15]~49\) # (GND)))
-- \inst|inst2|contador[16]~51\ = CARRY((!\inst|inst2|contador[15]~49\) # (!\inst|inst2|contador\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|contador\(16),
	datad => VCC,
	cin => \inst|inst2|contador[15]~49\,
	combout => \inst|inst2|contador[16]~50_combout\,
	cout => \inst|inst2|contador[16]~51\);

-- Location: FF_X29_Y8_N11
\inst|inst2|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst2|contador[16]~50_combout\,
	sclr => \inst|inst2|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|contador\(16));

-- Location: LCCOMB_X29_Y8_N12
\inst|inst2|contador[17]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|contador[17]~52_combout\ = (\inst|inst2|contador\(17) & (\inst|inst2|contador[16]~51\ $ (GND))) # (!\inst|inst2|contador\(17) & (!\inst|inst2|contador[16]~51\ & VCC))
-- \inst|inst2|contador[17]~53\ = CARRY((\inst|inst2|contador\(17) & !\inst|inst2|contador[16]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|contador\(17),
	datad => VCC,
	cin => \inst|inst2|contador[16]~51\,
	combout => \inst|inst2|contador[17]~52_combout\,
	cout => \inst|inst2|contador[17]~53\);

-- Location: FF_X29_Y8_N13
\inst|inst2|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst2|contador[17]~52_combout\,
	sclr => \inst|inst2|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|contador\(17));

-- Location: LCCOMB_X29_Y8_N14
\inst|inst2|contador[18]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|contador[18]~54_combout\ = (\inst|inst2|contador\(18) & (!\inst|inst2|contador[17]~53\)) # (!\inst|inst2|contador\(18) & ((\inst|inst2|contador[17]~53\) # (GND)))
-- \inst|inst2|contador[18]~55\ = CARRY((!\inst|inst2|contador[17]~53\) # (!\inst|inst2|contador\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|contador\(18),
	datad => VCC,
	cin => \inst|inst2|contador[17]~53\,
	combout => \inst|inst2|contador[18]~54_combout\,
	cout => \inst|inst2|contador[18]~55\);

-- Location: FF_X29_Y8_N15
\inst|inst2|contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst2|contador[18]~54_combout\,
	sclr => \inst|inst2|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|contador\(18));

-- Location: LCCOMB_X29_Y8_N16
\inst|inst2|contador[19]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|contador[19]~56_combout\ = (\inst|inst2|contador\(19) & (\inst|inst2|contador[18]~55\ $ (GND))) # (!\inst|inst2|contador\(19) & (!\inst|inst2|contador[18]~55\ & VCC))
-- \inst|inst2|contador[19]~57\ = CARRY((\inst|inst2|contador\(19) & !\inst|inst2|contador[18]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|contador\(19),
	datad => VCC,
	cin => \inst|inst2|contador[18]~55\,
	combout => \inst|inst2|contador[19]~56_combout\,
	cout => \inst|inst2|contador[19]~57\);

-- Location: FF_X29_Y8_N17
\inst|inst2|contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst2|contador[19]~56_combout\,
	sclr => \inst|inst2|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|contador\(19));

-- Location: LCCOMB_X29_Y8_N18
\inst|inst2|contador[20]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|contador[20]~58_combout\ = \inst|inst2|contador\(20) $ (\inst|inst2|contador[19]~57\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|contador\(20),
	cin => \inst|inst2|contador[19]~57\,
	combout => \inst|inst2|contador[20]~58_combout\);

-- Location: FF_X29_Y8_N19
\inst|inst2|contador[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst2|contador[20]~58_combout\,
	sclr => \inst|inst2|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|contador\(20));

-- Location: LCCOMB_X29_Y8_N26
\inst|inst2|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|_~5_combout\ = (!\inst|inst2|contador\(16) & (!\inst|inst2|contador\(19) & (\inst|inst2|contador\(18) & \inst|inst2|contador\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|contador\(16),
	datab => \inst|inst2|contador\(19),
	datac => \inst|inst2|contador\(18),
	datad => \inst|inst2|contador\(17),
	combout => \inst|inst2|_~5_combout\);

-- Location: LCCOMB_X30_Y8_N4
\inst|inst2|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|_~0_combout\ = (!\inst|inst2|contador\(0) & (!\inst|inst2|contador\(2) & (!\inst|inst2|contador\(3) & !\inst|inst2|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|contador\(0),
	datab => \inst|inst2|contador\(2),
	datac => \inst|inst2|contador\(3),
	datad => \inst|inst2|contador\(1),
	combout => \inst|inst2|_~0_combout\);

-- Location: LCCOMB_X29_Y8_N28
\inst|inst2|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|_~3_combout\ = (\inst|inst2|contador\(14) & (\inst|inst2|contador\(13) & (\inst|inst2|contador\(15) & !\inst|inst2|contador\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|contador\(14),
	datab => \inst|inst2|contador\(13),
	datac => \inst|inst2|contador\(15),
	datad => \inst|inst2|contador\(12),
	combout => \inst|inst2|_~3_combout\);

-- Location: LCCOMB_X29_Y9_N8
\inst|inst2|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|_~1_combout\ = (!\inst|inst2|contador\(7) & (!\inst|inst2|contador\(4) & (\inst|inst2|contador\(6) & \inst|inst2|contador\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|contador\(7),
	datab => \inst|inst2|contador\(4),
	datac => \inst|inst2|contador\(6),
	datad => \inst|inst2|contador\(5),
	combout => \inst|inst2|_~1_combout\);

-- Location: LCCOMB_X30_Y8_N2
\inst|inst2|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|_~2_combout\ = (!\inst|inst2|contador\(11) & (!\inst|inst2|contador\(10) & (\inst|inst2|contador\(8) & \inst|inst2|contador\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|contador\(11),
	datab => \inst|inst2|contador\(10),
	datac => \inst|inst2|contador\(8),
	datad => \inst|inst2|contador\(9),
	combout => \inst|inst2|_~2_combout\);

-- Location: LCCOMB_X30_Y8_N28
\inst|inst2|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|_~4_combout\ = (\inst|inst2|_~0_combout\ & (\inst|inst2|_~3_combout\ & (\inst|inst2|_~1_combout\ & \inst|inst2|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|_~0_combout\,
	datab => \inst|inst2|_~3_combout\,
	datac => \inst|inst2|_~1_combout\,
	datad => \inst|inst2|_~2_combout\,
	combout => \inst|inst2|_~4_combout\);

-- Location: LCCOMB_X30_Y8_N6
\inst|inst2|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|_~6_combout\ = (\inst|inst2|contador\(20) & (\inst|inst2|_~5_combout\ & \inst|inst2|_~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|contador\(20),
	datac => \inst|inst2|_~5_combout\,
	datad => \inst|inst2|_~4_combout\,
	combout => \inst|inst2|_~6_combout\);

-- Location: LCCOMB_X30_Y8_N20
\inst|inst2|aux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|aux~0_combout\ = (\inst|inst2|_~6_combout\ & (\inst|inst2|ff2~q\ & (\inst|inst2|ff1~q\))) # (!\inst|inst2|_~6_combout\ & (\inst|inst2|aux~q\ & (\inst|inst2|ff2~q\ $ (!\inst|inst2|ff1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|ff2~q\,
	datab => \inst|inst2|ff1~q\,
	datac => \inst|inst2|aux~q\,
	datad => \inst|inst2|_~6_combout\,
	combout => \inst|inst2|aux~0_combout\);

-- Location: FF_X30_Y8_N21
\inst|inst2|aux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst2|aux~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|aux~q\);

-- Location: LCCOMB_X24_Y12_N22
\inst1|Freq_objt|FF1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Freq_objt|FF1~feeder_combout\ = \inst|inst2|aux~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst2|aux~q\,
	combout => \inst1|Freq_objt|FF1~feeder_combout\);

-- Location: FF_X24_Y12_N23
\inst1|Freq_objt|FF1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|Freq_objt|FF1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Freq_objt|FF1~q\);

-- Location: FF_X24_Y12_N25
\inst1|Freq_objt|FF2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst1|Freq_objt|FF1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Freq_objt|FF2~q\);

-- Location: LCCOMB_X24_Y12_N24
\inst1|S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|S1~0_combout\ = (\inst1|Freq_objt|FF1~q\ & !\inst1|Freq_objt|FF2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Freq_objt|FF1~q\,
	datac => \inst1|Freq_objt|FF2~q\,
	combout => \inst1|S1~0_combout\);

-- Location: FF_X23_Y12_N25
\inst1|S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst1|S1~1_combout\,
	ena => \inst1|S1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|S1~q\);

-- Location: LCCOMB_X23_Y12_N12
\inst1|S2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|S2~0_combout\ = !\inst1|S1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|S1~q\,
	combout => \inst1|S2~0_combout\);

-- Location: LCCOMB_X23_Y12_N18
\inst1|S2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|S2~feeder_combout\ = \inst1|S2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|S2~0_combout\,
	combout => \inst1|S2~feeder_combout\);

-- Location: FF_X23_Y12_N19
\inst1|S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|S2~feeder_combout\,
	ena => \inst1|S1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|S2~q\);

-- Location: FF_X23_Y12_N31
\inst1|S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \inst1|S2~q\,
	sload => VCC,
	ena => \inst1|S1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|S3~q\);

-- Location: FF_X23_Y12_N17
\inst1|S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \inst1|S3~q\,
	sload => VCC,
	ena => \inst1|S1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|S4~q\);

-- Location: LCCOMB_X23_Y12_N20
\inst1|Freq_out[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Freq_out[1]~0_combout\ = (!\inst1|S4~q\ & \inst1|S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|S4~q\,
	datad => \inst1|S1~q\,
	combout => \inst1|Freq_out[1]~0_combout\);

-- Location: LCCOMB_X23_Y12_N22
\inst1|Freq_out[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Freq_out[0]~1_combout\ = (!\inst1|S3~q\ & \inst1|S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|S3~q\,
	datad => \inst1|S1~q\,
	combout => \inst1|Freq_out[0]~1_combout\);

-- Location: LCCOMB_X19_Y12_N6
\inst3|clk_O~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clk_O~5_combout\ = (\inst1|Freq_out[1]~0_combout\ & ((\inst3|clock_025|aux~q\) # ((\inst1|Freq_out[0]~1_combout\)))) # (!\inst1|Freq_out[1]~0_combout\ & (((!\inst1|Freq_out[0]~1_combout\ & \clock~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|clock_025|aux~q\,
	datab => \inst1|Freq_out[1]~0_combout\,
	datac => \inst1|Freq_out[0]~1_combout\,
	datad => \clock~input_o\,
	combout => \inst3|clk_O~5_combout\);

-- Location: LCCOMB_X17_Y12_N12
\inst3|clock_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clock_1~0_combout\ = !\inst3|clock_1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|clock_1~q\,
	combout => \inst3|clock_1~0_combout\);

-- Location: FF_X17_Y12_N13
\inst3|clock_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst3|clock_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clock_1~q\);

-- Location: LCCOMB_X17_Y12_N0
\inst3|clk_O\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clk_O~combout\ = LCELL((\inst3|clk_O~5_combout\ & (((\inst3|clock_1~q\) # (!\inst1|Freq_out[0]~1_combout\)))) # (!\inst3|clk_O~5_combout\ & (\inst3|clock_050|aux~q\ & (\inst1|Freq_out[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|clock_050|aux~q\,
	datab => \inst3|clk_O~5_combout\,
	datac => \inst1|Freq_out[0]~1_combout\,
	datad => \inst3|clock_1~q\,
	combout => \inst3|clk_O~combout\);

-- Location: IOIBUF_X34_Y12_N22
\key[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(1),
	o => \key[1]~input_o\);

-- Location: FF_X19_Y16_N15
\inst|inst|ff1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \key[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|ff1~q\);

-- Location: LCCOMB_X18_Y16_N4
\inst|inst|ff2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|ff2~feeder_combout\ = \inst|inst|ff1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|ff1~q\,
	combout => \inst|inst|ff2~feeder_combout\);

-- Location: FF_X18_Y16_N5
\inst|inst|ff2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst|ff2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|ff2~q\);

-- Location: LCCOMB_X18_Y16_N10
\inst|inst|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|_~7_combout\ = (!\inst|inst|contador\(0) & (!\inst|inst|_~6_combout\ & (\inst|inst|ff2~q\ $ (!\inst|inst|ff1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|ff2~q\,
	datab => \inst|inst|ff1~q\,
	datac => \inst|inst|contador\(0),
	datad => \inst|inst|_~6_combout\,
	combout => \inst|inst|_~7_combout\);

-- Location: FF_X18_Y16_N11
\inst|inst|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|contador\(0));

-- Location: LCCOMB_X18_Y16_N12
\inst|inst|contador[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|contador[1]~20_combout\ = (\inst|inst|contador\(1) & (\inst|inst|contador\(0) $ (VCC))) # (!\inst|inst|contador\(1) & (\inst|inst|contador\(0) & VCC))
-- \inst|inst|contador[1]~21\ = CARRY((\inst|inst|contador\(1) & \inst|inst|contador\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|contador\(1),
	datab => \inst|inst|contador\(0),
	datad => VCC,
	combout => \inst|inst|contador[1]~20_combout\,
	cout => \inst|inst|contador[1]~21\);

-- Location: LCCOMB_X19_Y16_N30
\inst|inst|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|_~8_combout\ = (\inst|inst|_~6_combout\) # (\inst|inst|ff1~q\ $ (\inst|inst|ff2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|ff1~q\,
	datac => \inst|inst|ff2~q\,
	datad => \inst|inst|_~6_combout\,
	combout => \inst|inst|_~8_combout\);

-- Location: FF_X18_Y16_N13
\inst|inst|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst|contador[1]~20_combout\,
	sclr => \inst|inst|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|contador\(1));

-- Location: LCCOMB_X18_Y16_N14
\inst|inst|contador[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|contador[2]~22_combout\ = (\inst|inst|contador\(2) & (!\inst|inst|contador[1]~21\)) # (!\inst|inst|contador\(2) & ((\inst|inst|contador[1]~21\) # (GND)))
-- \inst|inst|contador[2]~23\ = CARRY((!\inst|inst|contador[1]~21\) # (!\inst|inst|contador\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|contador\(2),
	datad => VCC,
	cin => \inst|inst|contador[1]~21\,
	combout => \inst|inst|contador[2]~22_combout\,
	cout => \inst|inst|contador[2]~23\);

-- Location: FF_X18_Y16_N15
\inst|inst|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst|contador[2]~22_combout\,
	sclr => \inst|inst|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|contador\(2));

-- Location: LCCOMB_X18_Y16_N16
\inst|inst|contador[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|contador[3]~24_combout\ = (\inst|inst|contador\(3) & (\inst|inst|contador[2]~23\ $ (GND))) # (!\inst|inst|contador\(3) & (!\inst|inst|contador[2]~23\ & VCC))
-- \inst|inst|contador[3]~25\ = CARRY((\inst|inst|contador\(3) & !\inst|inst|contador[2]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|contador\(3),
	datad => VCC,
	cin => \inst|inst|contador[2]~23\,
	combout => \inst|inst|contador[3]~24_combout\,
	cout => \inst|inst|contador[3]~25\);

-- Location: FF_X18_Y16_N17
\inst|inst|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst|contador[3]~24_combout\,
	sclr => \inst|inst|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|contador\(3));

-- Location: LCCOMB_X18_Y16_N18
\inst|inst|contador[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|contador[4]~26_combout\ = (\inst|inst|contador\(4) & (!\inst|inst|contador[3]~25\)) # (!\inst|inst|contador\(4) & ((\inst|inst|contador[3]~25\) # (GND)))
-- \inst|inst|contador[4]~27\ = CARRY((!\inst|inst|contador[3]~25\) # (!\inst|inst|contador\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|contador\(4),
	datad => VCC,
	cin => \inst|inst|contador[3]~25\,
	combout => \inst|inst|contador[4]~26_combout\,
	cout => \inst|inst|contador[4]~27\);

-- Location: FF_X18_Y16_N19
\inst|inst|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst|contador[4]~26_combout\,
	sclr => \inst|inst|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|contador\(4));

-- Location: LCCOMB_X18_Y16_N20
\inst|inst|contador[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|contador[5]~28_combout\ = (\inst|inst|contador\(5) & (\inst|inst|contador[4]~27\ $ (GND))) # (!\inst|inst|contador\(5) & (!\inst|inst|contador[4]~27\ & VCC))
-- \inst|inst|contador[5]~29\ = CARRY((\inst|inst|contador\(5) & !\inst|inst|contador[4]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|contador\(5),
	datad => VCC,
	cin => \inst|inst|contador[4]~27\,
	combout => \inst|inst|contador[5]~28_combout\,
	cout => \inst|inst|contador[5]~29\);

-- Location: FF_X18_Y16_N21
\inst|inst|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst|contador[5]~28_combout\,
	sclr => \inst|inst|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|contador\(5));

-- Location: LCCOMB_X18_Y16_N22
\inst|inst|contador[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|contador[6]~30_combout\ = (\inst|inst|contador\(6) & (!\inst|inst|contador[5]~29\)) # (!\inst|inst|contador\(6) & ((\inst|inst|contador[5]~29\) # (GND)))
-- \inst|inst|contador[6]~31\ = CARRY((!\inst|inst|contador[5]~29\) # (!\inst|inst|contador\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|contador\(6),
	datad => VCC,
	cin => \inst|inst|contador[5]~29\,
	combout => \inst|inst|contador[6]~30_combout\,
	cout => \inst|inst|contador[6]~31\);

-- Location: FF_X18_Y16_N23
\inst|inst|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst|contador[6]~30_combout\,
	sclr => \inst|inst|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|contador\(6));

-- Location: LCCOMB_X18_Y16_N24
\inst|inst|contador[7]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|contador[7]~32_combout\ = (\inst|inst|contador\(7) & (\inst|inst|contador[6]~31\ $ (GND))) # (!\inst|inst|contador\(7) & (!\inst|inst|contador[6]~31\ & VCC))
-- \inst|inst|contador[7]~33\ = CARRY((\inst|inst|contador\(7) & !\inst|inst|contador[6]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|contador\(7),
	datad => VCC,
	cin => \inst|inst|contador[6]~31\,
	combout => \inst|inst|contador[7]~32_combout\,
	cout => \inst|inst|contador[7]~33\);

-- Location: FF_X18_Y16_N25
\inst|inst|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst|contador[7]~32_combout\,
	sclr => \inst|inst|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|contador\(7));

-- Location: LCCOMB_X18_Y16_N26
\inst|inst|contador[8]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|contador[8]~34_combout\ = (\inst|inst|contador\(8) & (!\inst|inst|contador[7]~33\)) # (!\inst|inst|contador\(8) & ((\inst|inst|contador[7]~33\) # (GND)))
-- \inst|inst|contador[8]~35\ = CARRY((!\inst|inst|contador[7]~33\) # (!\inst|inst|contador\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|contador\(8),
	datad => VCC,
	cin => \inst|inst|contador[7]~33\,
	combout => \inst|inst|contador[8]~34_combout\,
	cout => \inst|inst|contador[8]~35\);

-- Location: FF_X18_Y16_N27
\inst|inst|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst|contador[8]~34_combout\,
	sclr => \inst|inst|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|contador\(8));

-- Location: LCCOMB_X18_Y16_N28
\inst|inst|contador[9]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|contador[9]~36_combout\ = (\inst|inst|contador\(9) & (\inst|inst|contador[8]~35\ $ (GND))) # (!\inst|inst|contador\(9) & (!\inst|inst|contador[8]~35\ & VCC))
-- \inst|inst|contador[9]~37\ = CARRY((\inst|inst|contador\(9) & !\inst|inst|contador[8]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|contador\(9),
	datad => VCC,
	cin => \inst|inst|contador[8]~35\,
	combout => \inst|inst|contador[9]~36_combout\,
	cout => \inst|inst|contador[9]~37\);

-- Location: FF_X18_Y16_N29
\inst|inst|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst|contador[9]~36_combout\,
	sclr => \inst|inst|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|contador\(9));

-- Location: LCCOMB_X18_Y16_N30
\inst|inst|contador[10]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|contador[10]~38_combout\ = (\inst|inst|contador\(10) & (!\inst|inst|contador[9]~37\)) # (!\inst|inst|contador\(10) & ((\inst|inst|contador[9]~37\) # (GND)))
-- \inst|inst|contador[10]~39\ = CARRY((!\inst|inst|contador[9]~37\) # (!\inst|inst|contador\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|contador\(10),
	datad => VCC,
	cin => \inst|inst|contador[9]~37\,
	combout => \inst|inst|contador[10]~38_combout\,
	cout => \inst|inst|contador[10]~39\);

-- Location: FF_X18_Y16_N31
\inst|inst|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst|contador[10]~38_combout\,
	sclr => \inst|inst|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|contador\(10));

-- Location: LCCOMB_X18_Y15_N0
\inst|inst|contador[11]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|contador[11]~40_combout\ = (\inst|inst|contador\(11) & (\inst|inst|contador[10]~39\ $ (GND))) # (!\inst|inst|contador\(11) & (!\inst|inst|contador[10]~39\ & VCC))
-- \inst|inst|contador[11]~41\ = CARRY((\inst|inst|contador\(11) & !\inst|inst|contador[10]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|contador\(11),
	datad => VCC,
	cin => \inst|inst|contador[10]~39\,
	combout => \inst|inst|contador[11]~40_combout\,
	cout => \inst|inst|contador[11]~41\);

-- Location: FF_X18_Y15_N1
\inst|inst|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst|contador[11]~40_combout\,
	sclr => \inst|inst|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|contador\(11));

-- Location: LCCOMB_X18_Y15_N2
\inst|inst|contador[12]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|contador[12]~42_combout\ = (\inst|inst|contador\(12) & (!\inst|inst|contador[11]~41\)) # (!\inst|inst|contador\(12) & ((\inst|inst|contador[11]~41\) # (GND)))
-- \inst|inst|contador[12]~43\ = CARRY((!\inst|inst|contador[11]~41\) # (!\inst|inst|contador\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|contador\(12),
	datad => VCC,
	cin => \inst|inst|contador[11]~41\,
	combout => \inst|inst|contador[12]~42_combout\,
	cout => \inst|inst|contador[12]~43\);

-- Location: FF_X18_Y15_N3
\inst|inst|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst|contador[12]~42_combout\,
	sclr => \inst|inst|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|contador\(12));

-- Location: LCCOMB_X18_Y15_N4
\inst|inst|contador[13]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|contador[13]~44_combout\ = (\inst|inst|contador\(13) & (\inst|inst|contador[12]~43\ $ (GND))) # (!\inst|inst|contador\(13) & (!\inst|inst|contador[12]~43\ & VCC))
-- \inst|inst|contador[13]~45\ = CARRY((\inst|inst|contador\(13) & !\inst|inst|contador[12]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|contador\(13),
	datad => VCC,
	cin => \inst|inst|contador[12]~43\,
	combout => \inst|inst|contador[13]~44_combout\,
	cout => \inst|inst|contador[13]~45\);

-- Location: FF_X18_Y15_N5
\inst|inst|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst|contador[13]~44_combout\,
	sclr => \inst|inst|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|contador\(13));

-- Location: LCCOMB_X18_Y15_N6
\inst|inst|contador[14]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|contador[14]~46_combout\ = (\inst|inst|contador\(14) & (!\inst|inst|contador[13]~45\)) # (!\inst|inst|contador\(14) & ((\inst|inst|contador[13]~45\) # (GND)))
-- \inst|inst|contador[14]~47\ = CARRY((!\inst|inst|contador[13]~45\) # (!\inst|inst|contador\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|contador\(14),
	datad => VCC,
	cin => \inst|inst|contador[13]~45\,
	combout => \inst|inst|contador[14]~46_combout\,
	cout => \inst|inst|contador[14]~47\);

-- Location: FF_X18_Y15_N7
\inst|inst|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst|contador[14]~46_combout\,
	sclr => \inst|inst|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|contador\(14));

-- Location: LCCOMB_X18_Y15_N8
\inst|inst|contador[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|contador[15]~48_combout\ = (\inst|inst|contador\(15) & (\inst|inst|contador[14]~47\ $ (GND))) # (!\inst|inst|contador\(15) & (!\inst|inst|contador[14]~47\ & VCC))
-- \inst|inst|contador[15]~49\ = CARRY((\inst|inst|contador\(15) & !\inst|inst|contador[14]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|contador\(15),
	datad => VCC,
	cin => \inst|inst|contador[14]~47\,
	combout => \inst|inst|contador[15]~48_combout\,
	cout => \inst|inst|contador[15]~49\);

-- Location: FF_X18_Y15_N9
\inst|inst|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst|contador[15]~48_combout\,
	sclr => \inst|inst|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|contador\(15));

-- Location: LCCOMB_X18_Y15_N10
\inst|inst|contador[16]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|contador[16]~50_combout\ = (\inst|inst|contador\(16) & (!\inst|inst|contador[15]~49\)) # (!\inst|inst|contador\(16) & ((\inst|inst|contador[15]~49\) # (GND)))
-- \inst|inst|contador[16]~51\ = CARRY((!\inst|inst|contador[15]~49\) # (!\inst|inst|contador\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|contador\(16),
	datad => VCC,
	cin => \inst|inst|contador[15]~49\,
	combout => \inst|inst|contador[16]~50_combout\,
	cout => \inst|inst|contador[16]~51\);

-- Location: FF_X18_Y15_N11
\inst|inst|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst|contador[16]~50_combout\,
	sclr => \inst|inst|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|contador\(16));

-- Location: LCCOMB_X18_Y15_N12
\inst|inst|contador[17]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|contador[17]~52_combout\ = (\inst|inst|contador\(17) & (\inst|inst|contador[16]~51\ $ (GND))) # (!\inst|inst|contador\(17) & (!\inst|inst|contador[16]~51\ & VCC))
-- \inst|inst|contador[17]~53\ = CARRY((\inst|inst|contador\(17) & !\inst|inst|contador[16]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|contador\(17),
	datad => VCC,
	cin => \inst|inst|contador[16]~51\,
	combout => \inst|inst|contador[17]~52_combout\,
	cout => \inst|inst|contador[17]~53\);

-- Location: FF_X18_Y15_N13
\inst|inst|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst|contador[17]~52_combout\,
	sclr => \inst|inst|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|contador\(17));

-- Location: LCCOMB_X18_Y15_N14
\inst|inst|contador[18]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|contador[18]~54_combout\ = (\inst|inst|contador\(18) & (!\inst|inst|contador[17]~53\)) # (!\inst|inst|contador\(18) & ((\inst|inst|contador[17]~53\) # (GND)))
-- \inst|inst|contador[18]~55\ = CARRY((!\inst|inst|contador[17]~53\) # (!\inst|inst|contador\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|contador\(18),
	datad => VCC,
	cin => \inst|inst|contador[17]~53\,
	combout => \inst|inst|contador[18]~54_combout\,
	cout => \inst|inst|contador[18]~55\);

-- Location: FF_X18_Y15_N15
\inst|inst|contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst|contador[18]~54_combout\,
	sclr => \inst|inst|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|contador\(18));

-- Location: LCCOMB_X18_Y15_N16
\inst|inst|contador[19]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|contador[19]~56_combout\ = (\inst|inst|contador\(19) & (\inst|inst|contador[18]~55\ $ (GND))) # (!\inst|inst|contador\(19) & (!\inst|inst|contador[18]~55\ & VCC))
-- \inst|inst|contador[19]~57\ = CARRY((\inst|inst|contador\(19) & !\inst|inst|contador[18]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|contador\(19),
	datad => VCC,
	cin => \inst|inst|contador[18]~55\,
	combout => \inst|inst|contador[19]~56_combout\,
	cout => \inst|inst|contador[19]~57\);

-- Location: FF_X18_Y15_N17
\inst|inst|contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst|contador[19]~56_combout\,
	sclr => \inst|inst|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|contador\(19));

-- Location: LCCOMB_X18_Y15_N18
\inst|inst|contador[20]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|contador[20]~58_combout\ = \inst|inst|contador\(20) $ (\inst|inst|contador[19]~57\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|contador\(20),
	cin => \inst|inst|contador[19]~57\,
	combout => \inst|inst|contador[20]~58_combout\);

-- Location: FF_X18_Y15_N19
\inst|inst|contador[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst|contador[20]~58_combout\,
	sclr => \inst|inst|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|contador\(20));

-- Location: LCCOMB_X18_Y15_N26
\inst|inst|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|_~5_combout\ = (\inst|inst|contador\(17) & (!\inst|inst|contador\(19) & (\inst|inst|contador\(18) & !\inst|inst|contador\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|contador\(17),
	datab => \inst|inst|contador\(19),
	datac => \inst|inst|contador\(18),
	datad => \inst|inst|contador\(16),
	combout => \inst|inst|_~5_combout\);

-- Location: LCCOMB_X18_Y16_N8
\inst|inst|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|_~0_combout\ = (!\inst|inst|contador\(0) & (!\inst|inst|contador\(3) & (!\inst|inst|contador\(2) & !\inst|inst|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|contador\(0),
	datab => \inst|inst|contador\(3),
	datac => \inst|inst|contador\(2),
	datad => \inst|inst|contador\(1),
	combout => \inst|inst|_~0_combout\);

-- Location: LCCOMB_X18_Y15_N24
\inst|inst|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|_~3_combout\ = (\inst|inst|contador\(14) & (\inst|inst|contador\(15) & (\inst|inst|contador\(13) & !\inst|inst|contador\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|contador\(14),
	datab => \inst|inst|contador\(15),
	datac => \inst|inst|contador\(13),
	datad => \inst|inst|contador\(12),
	combout => \inst|inst|_~3_combout\);

-- Location: LCCOMB_X18_Y16_N6
\inst|inst|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|_~1_combout\ = (\inst|inst|contador\(5) & (!\inst|inst|contador\(4) & (\inst|inst|contador\(6) & !\inst|inst|contador\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|contador\(5),
	datab => \inst|inst|contador\(4),
	datac => \inst|inst|contador\(6),
	datad => \inst|inst|contador\(7),
	combout => \inst|inst|_~1_combout\);

-- Location: LCCOMB_X19_Y16_N28
\inst|inst|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|_~2_combout\ = (!\inst|inst|contador\(11) & (\inst|inst|contador\(9) & (\inst|inst|contador\(8) & !\inst|inst|contador\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|contador\(11),
	datab => \inst|inst|contador\(9),
	datac => \inst|inst|contador\(8),
	datad => \inst|inst|contador\(10),
	combout => \inst|inst|_~2_combout\);

-- Location: LCCOMB_X19_Y16_N18
\inst|inst|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|_~4_combout\ = (\inst|inst|_~0_combout\ & (\inst|inst|_~3_combout\ & (\inst|inst|_~1_combout\ & \inst|inst|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|_~0_combout\,
	datab => \inst|inst|_~3_combout\,
	datac => \inst|inst|_~1_combout\,
	datad => \inst|inst|_~2_combout\,
	combout => \inst|inst|_~4_combout\);

-- Location: LCCOMB_X19_Y16_N24
\inst|inst|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|_~6_combout\ = (\inst|inst|contador\(20) & (\inst|inst|_~5_combout\ & \inst|inst|_~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|contador\(20),
	datac => \inst|inst|_~5_combout\,
	datad => \inst|inst|_~4_combout\,
	combout => \inst|inst|_~6_combout\);

-- Location: LCCOMB_X19_Y16_N0
\inst|inst|aux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|aux~0_combout\ = (\inst|inst|_~6_combout\ & (\inst|inst|ff2~q\ & (\inst|inst|ff1~q\))) # (!\inst|inst|_~6_combout\ & (\inst|inst|aux~q\ & (\inst|inst|ff2~q\ $ (!\inst|inst|ff1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|ff2~q\,
	datab => \inst|inst|ff1~q\,
	datac => \inst|inst|aux~q\,
	datad => \inst|inst|_~6_combout\,
	combout => \inst|inst|aux~0_combout\);

-- Location: FF_X19_Y16_N1
\inst|inst|aux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst|aux~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|aux~q\);

-- Location: LCCOMB_X12_Y14_N16
\inst1|Play_objt|FF1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Play_objt|FF1~feeder_combout\ = \inst|inst|aux~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst|aux~q\,
	combout => \inst1|Play_objt|FF1~feeder_combout\);

-- Location: FF_X12_Y14_N17
\inst1|Play_objt|FF1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|Play_objt|FF1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Play_objt|FF1~q\);

-- Location: LCCOMB_X12_Y14_N6
\inst1|Play_objt|FF2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Play_objt|FF2~feeder_combout\ = \inst1|Play_objt|FF1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Play_objt|FF1~q\,
	combout => \inst1|Play_objt|FF2~feeder_combout\);

-- Location: FF_X12_Y14_N7
\inst1|Play_objt|FF2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|Play_objt|FF2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Play_objt|FF2~q\);

-- Location: IOIBUF_X34_Y12_N15
\key[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(2),
	o => \key[2]~input_o\);

-- Location: LCCOMB_X30_Y12_N22
\inst|inst1|ff1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|ff1~feeder_combout\ = \key[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key[2]~input_o\,
	combout => \inst|inst1|ff1~feeder_combout\);

-- Location: FF_X30_Y12_N23
\inst|inst1|ff1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst1|ff1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|ff1~q\);

-- Location: FF_X30_Y12_N25
\inst|inst1|ff2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst|inst1|ff1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|ff2~q\);

-- Location: LCCOMB_X29_Y12_N8
\inst|inst1|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|_~7_combout\ = (!\inst|inst1|contador\(0) & (!\inst|inst1|_~6_combout\ & (\inst|inst1|ff1~q\ $ (!\inst|inst1|ff2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|ff1~q\,
	datab => \inst|inst1|ff2~q\,
	datac => \inst|inst1|contador\(0),
	datad => \inst|inst1|_~6_combout\,
	combout => \inst|inst1|_~7_combout\);

-- Location: FF_X29_Y12_N9
\inst|inst1|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst1|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|contador\(0));

-- Location: LCCOMB_X29_Y12_N12
\inst|inst1|contador[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|contador[1]~20_combout\ = (\inst|inst1|contador\(1) & (\inst|inst1|contador\(0) $ (VCC))) # (!\inst|inst1|contador\(1) & (\inst|inst1|contador\(0) & VCC))
-- \inst|inst1|contador[1]~21\ = CARRY((\inst|inst1|contador\(1) & \inst|inst1|contador\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|contador\(1),
	datab => \inst|inst1|contador\(0),
	datad => VCC,
	combout => \inst|inst1|contador[1]~20_combout\,
	cout => \inst|inst1|contador[1]~21\);

-- Location: LCCOMB_X30_Y12_N26
\inst|inst1|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|_~8_combout\ = (\inst|inst1|_~6_combout\) # (\inst|inst1|ff1~q\ $ (\inst|inst1|ff2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|ff1~q\,
	datac => \inst|inst1|_~6_combout\,
	datad => \inst|inst1|ff2~q\,
	combout => \inst|inst1|_~8_combout\);

-- Location: FF_X29_Y12_N13
\inst|inst1|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst1|contador[1]~20_combout\,
	sclr => \inst|inst1|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|contador\(1));

-- Location: LCCOMB_X29_Y12_N14
\inst|inst1|contador[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|contador[2]~22_combout\ = (\inst|inst1|contador\(2) & (!\inst|inst1|contador[1]~21\)) # (!\inst|inst1|contador\(2) & ((\inst|inst1|contador[1]~21\) # (GND)))
-- \inst|inst1|contador[2]~23\ = CARRY((!\inst|inst1|contador[1]~21\) # (!\inst|inst1|contador\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|contador\(2),
	datad => VCC,
	cin => \inst|inst1|contador[1]~21\,
	combout => \inst|inst1|contador[2]~22_combout\,
	cout => \inst|inst1|contador[2]~23\);

-- Location: FF_X29_Y12_N15
\inst|inst1|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst1|contador[2]~22_combout\,
	sclr => \inst|inst1|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|contador\(2));

-- Location: LCCOMB_X29_Y12_N16
\inst|inst1|contador[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|contador[3]~24_combout\ = (\inst|inst1|contador\(3) & (\inst|inst1|contador[2]~23\ $ (GND))) # (!\inst|inst1|contador\(3) & (!\inst|inst1|contador[2]~23\ & VCC))
-- \inst|inst1|contador[3]~25\ = CARRY((\inst|inst1|contador\(3) & !\inst|inst1|contador[2]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|contador\(3),
	datad => VCC,
	cin => \inst|inst1|contador[2]~23\,
	combout => \inst|inst1|contador[3]~24_combout\,
	cout => \inst|inst1|contador[3]~25\);

-- Location: FF_X29_Y12_N17
\inst|inst1|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst1|contador[3]~24_combout\,
	sclr => \inst|inst1|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|contador\(3));

-- Location: LCCOMB_X29_Y12_N18
\inst|inst1|contador[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|contador[4]~26_combout\ = (\inst|inst1|contador\(4) & (!\inst|inst1|contador[3]~25\)) # (!\inst|inst1|contador\(4) & ((\inst|inst1|contador[3]~25\) # (GND)))
-- \inst|inst1|contador[4]~27\ = CARRY((!\inst|inst1|contador[3]~25\) # (!\inst|inst1|contador\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|contador\(4),
	datad => VCC,
	cin => \inst|inst1|contador[3]~25\,
	combout => \inst|inst1|contador[4]~26_combout\,
	cout => \inst|inst1|contador[4]~27\);

-- Location: FF_X29_Y12_N19
\inst|inst1|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst1|contador[4]~26_combout\,
	sclr => \inst|inst1|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|contador\(4));

-- Location: LCCOMB_X29_Y12_N20
\inst|inst1|contador[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|contador[5]~28_combout\ = (\inst|inst1|contador\(5) & (\inst|inst1|contador[4]~27\ $ (GND))) # (!\inst|inst1|contador\(5) & (!\inst|inst1|contador[4]~27\ & VCC))
-- \inst|inst1|contador[5]~29\ = CARRY((\inst|inst1|contador\(5) & !\inst|inst1|contador[4]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|contador\(5),
	datad => VCC,
	cin => \inst|inst1|contador[4]~27\,
	combout => \inst|inst1|contador[5]~28_combout\,
	cout => \inst|inst1|contador[5]~29\);

-- Location: FF_X29_Y12_N21
\inst|inst1|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst1|contador[5]~28_combout\,
	sclr => \inst|inst1|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|contador\(5));

-- Location: LCCOMB_X29_Y12_N22
\inst|inst1|contador[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|contador[6]~30_combout\ = (\inst|inst1|contador\(6) & (!\inst|inst1|contador[5]~29\)) # (!\inst|inst1|contador\(6) & ((\inst|inst1|contador[5]~29\) # (GND)))
-- \inst|inst1|contador[6]~31\ = CARRY((!\inst|inst1|contador[5]~29\) # (!\inst|inst1|contador\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|contador\(6),
	datad => VCC,
	cin => \inst|inst1|contador[5]~29\,
	combout => \inst|inst1|contador[6]~30_combout\,
	cout => \inst|inst1|contador[6]~31\);

-- Location: FF_X29_Y12_N23
\inst|inst1|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst1|contador[6]~30_combout\,
	sclr => \inst|inst1|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|contador\(6));

-- Location: LCCOMB_X29_Y12_N24
\inst|inst1|contador[7]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|contador[7]~32_combout\ = (\inst|inst1|contador\(7) & (\inst|inst1|contador[6]~31\ $ (GND))) # (!\inst|inst1|contador\(7) & (!\inst|inst1|contador[6]~31\ & VCC))
-- \inst|inst1|contador[7]~33\ = CARRY((\inst|inst1|contador\(7) & !\inst|inst1|contador[6]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|contador\(7),
	datad => VCC,
	cin => \inst|inst1|contador[6]~31\,
	combout => \inst|inst1|contador[7]~32_combout\,
	cout => \inst|inst1|contador[7]~33\);

-- Location: FF_X29_Y12_N25
\inst|inst1|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst1|contador[7]~32_combout\,
	sclr => \inst|inst1|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|contador\(7));

-- Location: LCCOMB_X29_Y12_N26
\inst|inst1|contador[8]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|contador[8]~34_combout\ = (\inst|inst1|contador\(8) & (!\inst|inst1|contador[7]~33\)) # (!\inst|inst1|contador\(8) & ((\inst|inst1|contador[7]~33\) # (GND)))
-- \inst|inst1|contador[8]~35\ = CARRY((!\inst|inst1|contador[7]~33\) # (!\inst|inst1|contador\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|contador\(8),
	datad => VCC,
	cin => \inst|inst1|contador[7]~33\,
	combout => \inst|inst1|contador[8]~34_combout\,
	cout => \inst|inst1|contador[8]~35\);

-- Location: FF_X29_Y12_N27
\inst|inst1|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst1|contador[8]~34_combout\,
	sclr => \inst|inst1|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|contador\(8));

-- Location: LCCOMB_X29_Y12_N28
\inst|inst1|contador[9]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|contador[9]~36_combout\ = (\inst|inst1|contador\(9) & (\inst|inst1|contador[8]~35\ $ (GND))) # (!\inst|inst1|contador\(9) & (!\inst|inst1|contador[8]~35\ & VCC))
-- \inst|inst1|contador[9]~37\ = CARRY((\inst|inst1|contador\(9) & !\inst|inst1|contador[8]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|contador\(9),
	datad => VCC,
	cin => \inst|inst1|contador[8]~35\,
	combout => \inst|inst1|contador[9]~36_combout\,
	cout => \inst|inst1|contador[9]~37\);

-- Location: FF_X29_Y12_N29
\inst|inst1|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst1|contador[9]~36_combout\,
	sclr => \inst|inst1|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|contador\(9));

-- Location: LCCOMB_X29_Y12_N30
\inst|inst1|contador[10]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|contador[10]~38_combout\ = (\inst|inst1|contador\(10) & (!\inst|inst1|contador[9]~37\)) # (!\inst|inst1|contador\(10) & ((\inst|inst1|contador[9]~37\) # (GND)))
-- \inst|inst1|contador[10]~39\ = CARRY((!\inst|inst1|contador[9]~37\) # (!\inst|inst1|contador\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|contador\(10),
	datad => VCC,
	cin => \inst|inst1|contador[9]~37\,
	combout => \inst|inst1|contador[10]~38_combout\,
	cout => \inst|inst1|contador[10]~39\);

-- Location: FF_X29_Y12_N31
\inst|inst1|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst1|contador[10]~38_combout\,
	sclr => \inst|inst1|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|contador\(10));

-- Location: LCCOMB_X29_Y11_N0
\inst|inst1|contador[11]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|contador[11]~40_combout\ = (\inst|inst1|contador\(11) & (\inst|inst1|contador[10]~39\ $ (GND))) # (!\inst|inst1|contador\(11) & (!\inst|inst1|contador[10]~39\ & VCC))
-- \inst|inst1|contador[11]~41\ = CARRY((\inst|inst1|contador\(11) & !\inst|inst1|contador[10]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|contador\(11),
	datad => VCC,
	cin => \inst|inst1|contador[10]~39\,
	combout => \inst|inst1|contador[11]~40_combout\,
	cout => \inst|inst1|contador[11]~41\);

-- Location: FF_X29_Y11_N1
\inst|inst1|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst1|contador[11]~40_combout\,
	sclr => \inst|inst1|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|contador\(11));

-- Location: LCCOMB_X29_Y11_N2
\inst|inst1|contador[12]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|contador[12]~42_combout\ = (\inst|inst1|contador\(12) & (!\inst|inst1|contador[11]~41\)) # (!\inst|inst1|contador\(12) & ((\inst|inst1|contador[11]~41\) # (GND)))
-- \inst|inst1|contador[12]~43\ = CARRY((!\inst|inst1|contador[11]~41\) # (!\inst|inst1|contador\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|contador\(12),
	datad => VCC,
	cin => \inst|inst1|contador[11]~41\,
	combout => \inst|inst1|contador[12]~42_combout\,
	cout => \inst|inst1|contador[12]~43\);

-- Location: FF_X29_Y11_N3
\inst|inst1|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst1|contador[12]~42_combout\,
	sclr => \inst|inst1|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|contador\(12));

-- Location: LCCOMB_X29_Y11_N4
\inst|inst1|contador[13]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|contador[13]~44_combout\ = (\inst|inst1|contador\(13) & (\inst|inst1|contador[12]~43\ $ (GND))) # (!\inst|inst1|contador\(13) & (!\inst|inst1|contador[12]~43\ & VCC))
-- \inst|inst1|contador[13]~45\ = CARRY((\inst|inst1|contador\(13) & !\inst|inst1|contador[12]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|contador\(13),
	datad => VCC,
	cin => \inst|inst1|contador[12]~43\,
	combout => \inst|inst1|contador[13]~44_combout\,
	cout => \inst|inst1|contador[13]~45\);

-- Location: FF_X29_Y11_N5
\inst|inst1|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst1|contador[13]~44_combout\,
	sclr => \inst|inst1|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|contador\(13));

-- Location: LCCOMB_X29_Y11_N6
\inst|inst1|contador[14]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|contador[14]~46_combout\ = (\inst|inst1|contador\(14) & (!\inst|inst1|contador[13]~45\)) # (!\inst|inst1|contador\(14) & ((\inst|inst1|contador[13]~45\) # (GND)))
-- \inst|inst1|contador[14]~47\ = CARRY((!\inst|inst1|contador[13]~45\) # (!\inst|inst1|contador\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|contador\(14),
	datad => VCC,
	cin => \inst|inst1|contador[13]~45\,
	combout => \inst|inst1|contador[14]~46_combout\,
	cout => \inst|inst1|contador[14]~47\);

-- Location: FF_X29_Y11_N7
\inst|inst1|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst1|contador[14]~46_combout\,
	sclr => \inst|inst1|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|contador\(14));

-- Location: LCCOMB_X29_Y11_N8
\inst|inst1|contador[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|contador[15]~48_combout\ = (\inst|inst1|contador\(15) & (\inst|inst1|contador[14]~47\ $ (GND))) # (!\inst|inst1|contador\(15) & (!\inst|inst1|contador[14]~47\ & VCC))
-- \inst|inst1|contador[15]~49\ = CARRY((\inst|inst1|contador\(15) & !\inst|inst1|contador[14]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|contador\(15),
	datad => VCC,
	cin => \inst|inst1|contador[14]~47\,
	combout => \inst|inst1|contador[15]~48_combout\,
	cout => \inst|inst1|contador[15]~49\);

-- Location: FF_X29_Y11_N9
\inst|inst1|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst1|contador[15]~48_combout\,
	sclr => \inst|inst1|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|contador\(15));

-- Location: LCCOMB_X29_Y11_N10
\inst|inst1|contador[16]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|contador[16]~50_combout\ = (\inst|inst1|contador\(16) & (!\inst|inst1|contador[15]~49\)) # (!\inst|inst1|contador\(16) & ((\inst|inst1|contador[15]~49\) # (GND)))
-- \inst|inst1|contador[16]~51\ = CARRY((!\inst|inst1|contador[15]~49\) # (!\inst|inst1|contador\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|contador\(16),
	datad => VCC,
	cin => \inst|inst1|contador[15]~49\,
	combout => \inst|inst1|contador[16]~50_combout\,
	cout => \inst|inst1|contador[16]~51\);

-- Location: FF_X29_Y11_N11
\inst|inst1|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst1|contador[16]~50_combout\,
	sclr => \inst|inst1|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|contador\(16));

-- Location: LCCOMB_X29_Y11_N12
\inst|inst1|contador[17]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|contador[17]~52_combout\ = (\inst|inst1|contador\(17) & (\inst|inst1|contador[16]~51\ $ (GND))) # (!\inst|inst1|contador\(17) & (!\inst|inst1|contador[16]~51\ & VCC))
-- \inst|inst1|contador[17]~53\ = CARRY((\inst|inst1|contador\(17) & !\inst|inst1|contador[16]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|contador\(17),
	datad => VCC,
	cin => \inst|inst1|contador[16]~51\,
	combout => \inst|inst1|contador[17]~52_combout\,
	cout => \inst|inst1|contador[17]~53\);

-- Location: FF_X29_Y11_N13
\inst|inst1|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst1|contador[17]~52_combout\,
	sclr => \inst|inst1|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|contador\(17));

-- Location: LCCOMB_X29_Y11_N14
\inst|inst1|contador[18]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|contador[18]~54_combout\ = (\inst|inst1|contador\(18) & (!\inst|inst1|contador[17]~53\)) # (!\inst|inst1|contador\(18) & ((\inst|inst1|contador[17]~53\) # (GND)))
-- \inst|inst1|contador[18]~55\ = CARRY((!\inst|inst1|contador[17]~53\) # (!\inst|inst1|contador\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|contador\(18),
	datad => VCC,
	cin => \inst|inst1|contador[17]~53\,
	combout => \inst|inst1|contador[18]~54_combout\,
	cout => \inst|inst1|contador[18]~55\);

-- Location: FF_X29_Y11_N15
\inst|inst1|contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst1|contador[18]~54_combout\,
	sclr => \inst|inst1|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|contador\(18));

-- Location: LCCOMB_X29_Y11_N16
\inst|inst1|contador[19]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|contador[19]~56_combout\ = (\inst|inst1|contador\(19) & (\inst|inst1|contador[18]~55\ $ (GND))) # (!\inst|inst1|contador\(19) & (!\inst|inst1|contador[18]~55\ & VCC))
-- \inst|inst1|contador[19]~57\ = CARRY((\inst|inst1|contador\(19) & !\inst|inst1|contador[18]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|contador\(19),
	datad => VCC,
	cin => \inst|inst1|contador[18]~55\,
	combout => \inst|inst1|contador[19]~56_combout\,
	cout => \inst|inst1|contador[19]~57\);

-- Location: FF_X29_Y11_N17
\inst|inst1|contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst1|contador[19]~56_combout\,
	sclr => \inst|inst1|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|contador\(19));

-- Location: LCCOMB_X29_Y11_N22
\inst|inst1|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|_~5_combout\ = (\inst|inst1|contador\(17) & (!\inst|inst1|contador\(19) & (\inst|inst1|contador\(18) & !\inst|inst1|contador\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|contador\(17),
	datab => \inst|inst1|contador\(19),
	datac => \inst|inst1|contador\(18),
	datad => \inst|inst1|contador\(16),
	combout => \inst|inst1|_~5_combout\);

-- Location: LCCOMB_X29_Y11_N18
\inst|inst1|contador[20]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|contador[20]~58_combout\ = \inst|inst1|contador\(20) $ (\inst|inst1|contador[19]~57\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|contador\(20),
	cin => \inst|inst1|contador[19]~57\,
	combout => \inst|inst1|contador[20]~58_combout\);

-- Location: FF_X29_Y11_N19
\inst|inst1|contador[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst1|contador[20]~58_combout\,
	sclr => \inst|inst1|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|contador\(20));

-- Location: LCCOMB_X29_Y11_N28
\inst|inst1|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|_~3_combout\ = (\inst|inst1|contador\(14) & (\inst|inst1|contador\(15) & (\inst|inst1|contador\(13) & !\inst|inst1|contador\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|contador\(14),
	datab => \inst|inst1|contador\(15),
	datac => \inst|inst1|contador\(13),
	datad => \inst|inst1|contador\(12),
	combout => \inst|inst1|_~3_combout\);

-- Location: LCCOMB_X29_Y12_N4
\inst|inst1|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|_~1_combout\ = (!\inst|inst1|contador\(7) & (!\inst|inst1|contador\(4) & (\inst|inst1|contador\(6) & \inst|inst1|contador\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|contador\(7),
	datab => \inst|inst1|contador\(4),
	datac => \inst|inst1|contador\(6),
	datad => \inst|inst1|contador\(5),
	combout => \inst|inst1|_~1_combout\);

-- Location: LCCOMB_X29_Y12_N6
\inst|inst1|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|_~2_combout\ = (!\inst|inst1|contador\(10) & (!\inst|inst1|contador\(11) & (\inst|inst1|contador\(8) & \inst|inst1|contador\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|contador\(10),
	datab => \inst|inst1|contador\(11),
	datac => \inst|inst1|contador\(8),
	datad => \inst|inst1|contador\(9),
	combout => \inst|inst1|_~2_combout\);

-- Location: LCCOMB_X29_Y12_N10
\inst|inst1|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|_~0_combout\ = (!\inst|inst1|contador\(1) & (!\inst|inst1|contador\(2) & (!\inst|inst1|contador\(0) & !\inst|inst1|contador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|contador\(1),
	datab => \inst|inst1|contador\(2),
	datac => \inst|inst1|contador\(0),
	datad => \inst|inst1|contador\(3),
	combout => \inst|inst1|_~0_combout\);

-- Location: LCCOMB_X30_Y12_N6
\inst|inst1|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|_~4_combout\ = (\inst|inst1|_~3_combout\ & (\inst|inst1|_~1_combout\ & (\inst|inst1|_~2_combout\ & \inst|inst1|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|_~3_combout\,
	datab => \inst|inst1|_~1_combout\,
	datac => \inst|inst1|_~2_combout\,
	datad => \inst|inst1|_~0_combout\,
	combout => \inst|inst1|_~4_combout\);

-- Location: LCCOMB_X30_Y12_N4
\inst|inst1|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|_~6_combout\ = (\inst|inst1|_~5_combout\ & (\inst|inst1|contador\(20) & \inst|inst1|_~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|_~5_combout\,
	datac => \inst|inst1|contador\(20),
	datad => \inst|inst1|_~4_combout\,
	combout => \inst|inst1|_~6_combout\);

-- Location: LCCOMB_X30_Y12_N28
\inst|inst1|aux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|aux~0_combout\ = (\inst|inst1|_~6_combout\ & (\inst|inst1|ff1~q\ & (\inst|inst1|ff2~q\))) # (!\inst|inst1|_~6_combout\ & (\inst|inst1|aux~q\ & (\inst|inst1|ff1~q\ $ (!\inst|inst1|ff2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|ff1~q\,
	datab => \inst|inst1|ff2~q\,
	datac => \inst|inst1|aux~q\,
	datad => \inst|inst1|_~6_combout\,
	combout => \inst|inst1|aux~0_combout\);

-- Location: FF_X30_Y12_N29
\inst|inst1|aux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst1|aux~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|aux~q\);

-- Location: LCCOMB_X12_Y14_N12
\inst1|Stop_objt|FF1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Stop_objt|FF1~feeder_combout\ = \inst|inst1|aux~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst1|aux~q\,
	combout => \inst1|Stop_objt|FF1~feeder_combout\);

-- Location: FF_X12_Y14_N13
\inst1|Stop_objt|FF1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|Stop_objt|FF1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Stop_objt|FF1~q\);

-- Location: FF_X12_Y14_N21
\inst1|Stop_objt|FF2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst1|Stop_objt|FF1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Stop_objt|FF2~q\);

-- Location: LCCOMB_X12_Y14_N20
\inst1|Stop_objt|pulso~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Stop_objt|pulso~0_combout\ = (!\inst1|Stop_objt|FF2~q\ & \inst1|Stop_objt|FF1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Stop_objt|FF2~q\,
	datad => \inst1|Stop_objt|FF1~q\,
	combout => \inst1|Stop_objt|pulso~0_combout\);

-- Location: LCCOMB_X12_Y14_N0
\inst1|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|_~0_combout\ = (!\inst1|Play_objt|FF2~q\ & \inst1|Play_objt|FF1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Play_objt|FF2~q\,
	datad => \inst1|Play_objt|FF1~q\,
	combout => \inst1|_~0_combout\);

-- Location: LCCOMB_X12_Y14_N22
\inst1|P3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|P3~0_combout\ = (!\inst1|Play_objt|FF2~q\ & (\inst1|Play_objt|FF1~q\ & ((\inst1|P2~q\) # (!\inst1|P1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Play_objt|FF2~q\,
	datab => \inst1|P2~q\,
	datac => \inst1|P1~q\,
	datad => \inst1|Play_objt|FF1~q\,
	combout => \inst1|P3~0_combout\);

-- Location: LCCOMB_X12_Y14_N28
\inst1|P3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|P3~1_combout\ = (\inst1|P3~0_combout\) # ((!\inst1|Stop_objt|pulso~0_combout\ & (!\inst1|_~0_combout\ & \inst1|P3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Stop_objt|pulso~0_combout\,
	datab => \inst1|_~0_combout\,
	datac => \inst1|P3~0_combout\,
	datad => \inst1|P3~q\,
	combout => \inst1|P3~1_combout\);

-- Location: LCCOMB_X12_Y14_N10
\inst1|P3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|P3~feeder_combout\ = \inst1|P3~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|P3~1_combout\,
	combout => \inst1|P3~feeder_combout\);

-- Location: FF_X12_Y14_N11
\inst1|P3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|P3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|P3~q\);

-- Location: LCCOMB_X12_Y14_N26
\inst1|P1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|P1~0_combout\ = (\inst1|_~0_combout\ & (!\inst1|P3~q\)) # (!\inst1|_~0_combout\ & (((\inst1|P1~q\) # (\inst1|Stop_objt|pulso~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|P3~q\,
	datab => \inst1|_~0_combout\,
	datac => \inst1|P1~q\,
	datad => \inst1|Stop_objt|pulso~0_combout\,
	combout => \inst1|P1~0_combout\);

-- Location: FF_X12_Y14_N27
\inst1|P1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|P1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|P1~q\);

-- Location: LCCOMB_X12_Y14_N18
\inst1|P2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|P2~2_combout\ = (\inst1|Stop_objt|FF1~q\ & (!\inst1|Stop_objt|FF2~q\ & ((\inst1|P3~q\) # (!\inst1|P1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Stop_objt|FF1~q\,
	datab => \inst1|Stop_objt|FF2~q\,
	datac => \inst1|P1~q\,
	datad => \inst1|P3~q\,
	combout => \inst1|P2~2_combout\);

-- Location: LCCOMB_X12_Y14_N14
\inst1|P2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|P2~3_combout\ = (\inst1|P2~2_combout\) # ((\inst1|P2~q\ & ((\inst1|Play_objt|FF2~q\) # (!\inst1|Play_objt|FF1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Play_objt|FF2~q\,
	datab => \inst1|Play_objt|FF1~q\,
	datac => \inst1|P2~q\,
	datad => \inst1|P2~2_combout\,
	combout => \inst1|P2~3_combout\);

-- Location: LCCOMB_X14_Y14_N14
\inst1|P2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|P2~feeder_combout\ = \inst1|P2~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|P2~3_combout\,
	combout => \inst1|P2~feeder_combout\);

-- Location: FF_X14_Y14_N15
\inst1|P2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|P2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|P2~q\);

-- Location: CLKCTRL_G3
\inst3|clk_O~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|clk_O~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|clk_O~clkctrl_outclk\);

-- Location: LCCOMB_X16_Y11_N18
\inst8|inst2|control|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|_~8_combout\ = (\inst8|inst2|control|START~q\) # (\inst1|P3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst2|control|START~q\,
	datad => \inst1|P3~q\,
	combout => \inst8|inst2|control|_~8_combout\);

-- Location: FF_X16_Y11_N19
\inst8|inst2|control|START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~clkctrl_outclk\,
	d => \inst8|inst2|control|_~8_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|START~q\);

-- Location: LCCOMB_X13_Y12_N6
\inst8|inst2|temp|cnt[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|cnt[5]~13_combout\ = (\inst8|inst2|control|START~q\ & !\inst8|inst2|temp|_~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|START~q\,
	datad => \inst8|inst2|temp|_~15_combout\,
	combout => \inst8|inst2|temp|cnt[5]~13_combout\);

-- Location: LCCOMB_X14_Y12_N4
\inst8|inst2|temp|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|op_1~1_cout\ = CARRY(\inst8|inst2|temp|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|temp|cnt\(0),
	datad => VCC,
	cout => \inst8|inst2|temp|op_1~1_cout\);

-- Location: LCCOMB_X14_Y12_N6
\inst8|inst2|temp|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|op_1~2_combout\ = (\inst8|inst2|temp|cnt\(1) & (\inst8|inst2|temp|op_1~1_cout\ & VCC)) # (!\inst8|inst2|temp|cnt\(1) & (!\inst8|inst2|temp|op_1~1_cout\))
-- \inst8|inst2|temp|op_1~3\ = CARRY((!\inst8|inst2|temp|cnt\(1) & !\inst8|inst2|temp|op_1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst2|temp|cnt\(1),
	datad => VCC,
	cin => \inst8|inst2|temp|op_1~1_cout\,
	combout => \inst8|inst2|temp|op_1~2_combout\,
	cout => \inst8|inst2|temp|op_1~3\);

-- Location: LCCOMB_X16_Y11_N22
\inst8|inst2|control|s71~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s71~0_combout\ = (!\inst1|P3~q\ & ((\inst8|inst2|control|s74~q\) # (\inst8|inst2|control|s71~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst2|control|s74~q\,
	datac => \inst1|P3~q\,
	datad => \inst8|inst2|control|s71~q\,
	combout => \inst8|inst2|control|s71~0_combout\);

-- Location: LCCOMB_X18_Y11_N16
\inst8|inst2|control|s64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s64~0_combout\ = (\inst8|inst2|control|s48~0_combout\ & ((\inst8|inst2|control|s64~q\) # ((\inst8|inst2|control|s63~q\ & \inst8|inst2|control|_~0_combout\)))) # (!\inst8|inst2|control|s48~0_combout\ & (\inst8|inst2|control|s63~q\ & 
-- ((\inst8|inst2|control|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s48~0_combout\,
	datab => \inst8|inst2|control|s63~q\,
	datac => \inst8|inst2|control|s64~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s64~0_combout\);

-- Location: FF_X18_Y11_N17
\inst8|inst2|control|s64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s64~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s64~q\);

-- Location: LCCOMB_X16_Y14_N2
\inst8|inst2|control|s65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s65~0_combout\ = (\inst8|inst2|control|s64~q\ & ((\inst8|inst2|control|_~0_combout\) # ((\inst8|inst2|control|s48~0_combout\ & \inst8|inst2|control|s65~q\)))) # (!\inst8|inst2|control|s64~q\ & (\inst8|inst2|control|s48~0_combout\ & 
-- (\inst8|inst2|control|s65~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s64~q\,
	datab => \inst8|inst2|control|s48~0_combout\,
	datac => \inst8|inst2|control|s65~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s65~0_combout\);

-- Location: FF_X16_Y14_N3
\inst8|inst2|control|s65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s65~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s65~q\);

-- Location: LCCOMB_X16_Y14_N26
\inst8|inst2|control|s66~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s66~0_combout\ = (\inst8|inst2|control|s65~q\ & ((\inst8|inst2|control|_~0_combout\) # ((\inst8|inst2|control|s48~0_combout\ & \inst8|inst2|control|s66~q\)))) # (!\inst8|inst2|control|s65~q\ & (\inst8|inst2|control|s48~0_combout\ & 
-- (\inst8|inst2|control|s66~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s65~q\,
	datab => \inst8|inst2|control|s48~0_combout\,
	datac => \inst8|inst2|control|s66~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s66~0_combout\);

-- Location: FF_X16_Y14_N27
\inst8|inst2|control|s66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s66~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s66~q\);

-- Location: LCCOMB_X18_Y11_N20
\inst8|inst2|control|s67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s67~0_combout\ = (\inst8|inst2|control|s48~0_combout\ & ((\inst8|inst2|control|s67~q\) # ((\inst8|inst2|control|s66~q\ & \inst8|inst2|control|_~0_combout\)))) # (!\inst8|inst2|control|s48~0_combout\ & (\inst8|inst2|control|s66~q\ & 
-- ((\inst8|inst2|control|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s48~0_combout\,
	datab => \inst8|inst2|control|s66~q\,
	datac => \inst8|inst2|control|s67~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s67~0_combout\);

-- Location: FF_X18_Y11_N21
\inst8|inst2|control|s67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s67~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s67~q\);

-- Location: LCCOMB_X17_Y11_N8
\inst8|inst2|control|s68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s68~0_combout\ = (\inst8|inst2|control|_~0_combout\ & ((\inst8|inst2|control|s67~q\) # ((\inst8|inst2|control|s68~q\ & \inst8|inst2|control|s48~0_combout\)))) # (!\inst8|inst2|control|_~0_combout\ & (((\inst8|inst2|control|s68~q\ & 
-- \inst8|inst2|control|s48~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|_~0_combout\,
	datab => \inst8|inst2|control|s67~q\,
	datac => \inst8|inst2|control|s68~q\,
	datad => \inst8|inst2|control|s48~0_combout\,
	combout => \inst8|inst2|control|s68~0_combout\);

-- Location: FF_X17_Y11_N9
\inst8|inst2|control|s68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s68~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s68~q\);

-- Location: LCCOMB_X16_Y11_N6
\inst8|inst2|control|s69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s69~0_combout\ = (\inst8|inst2|control|s68~q\ & ((\inst8|inst2|control|_~0_combout\) # ((\inst8|inst2|control|s48~0_combout\ & \inst8|inst2|control|s69~q\)))) # (!\inst8|inst2|control|s68~q\ & (\inst8|inst2|control|s48~0_combout\ & 
-- (\inst8|inst2|control|s69~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s68~q\,
	datab => \inst8|inst2|control|s48~0_combout\,
	datac => \inst8|inst2|control|s69~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s69~0_combout\);

-- Location: FF_X16_Y11_N7
\inst8|inst2|control|s69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s69~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s69~q\);

-- Location: LCCOMB_X16_Y11_N4
\inst8|inst2|control|s70~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s70~0_combout\ = (\inst8|inst2|control|s48~0_combout\ & ((\inst8|inst2|control|s70~q\) # ((\inst8|inst2|control|s69~q\ & \inst8|inst2|control|_~0_combout\)))) # (!\inst8|inst2|control|s48~0_combout\ & (\inst8|inst2|control|s69~q\ & 
-- ((\inst8|inst2|control|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s48~0_combout\,
	datab => \inst8|inst2|control|s69~q\,
	datac => \inst8|inst2|control|s70~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s70~0_combout\);

-- Location: FF_X16_Y11_N5
\inst8|inst2|control|s70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s70~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s70~q\);

-- Location: LCCOMB_X16_Y11_N2
\inst8|inst2|control|s71~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s71~1_combout\ = (\inst8|inst2|control|s71~0_combout\) # ((\inst1|P3~q\ & (\inst8|inst2|control|s70~q\ & !\inst8|inst2|temp|q~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s71~0_combout\,
	datab => \inst1|P3~q\,
	datac => \inst8|inst2|control|s70~q\,
	datad => \inst8|inst2|temp|q~10_combout\,
	combout => \inst8|inst2|control|s71~1_combout\);

-- Location: LCCOMB_X17_Y11_N4
\inst8|inst2|control|s71~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s71~2_combout\ = (\inst1|P2~q\ & (!\inst8|inst2|control|_~7_combout\ & (\inst8|inst2|control|s71~q\))) # (!\inst1|P2~q\ & ((\inst8|inst2|control|s71~1_combout\) # ((!\inst8|inst2|control|_~7_combout\ & \inst8|inst2|control|s71~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|P2~q\,
	datab => \inst8|inst2|control|_~7_combout\,
	datac => \inst8|inst2|control|s71~q\,
	datad => \inst8|inst2|control|s71~1_combout\,
	combout => \inst8|inst2|control|s71~2_combout\);

-- Location: FF_X17_Y11_N5
\inst8|inst2|control|s71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s71~2_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s71~q\);

-- Location: LCCOMB_X18_Y11_N2
\inst8|inst2|control|s72~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s72~0_combout\ = (\inst8|inst2|control|s48~0_combout\ & ((\inst8|inst2|control|s72~q\) # ((\inst8|inst2|control|s71~q\ & \inst8|inst2|control|_~0_combout\)))) # (!\inst8|inst2|control|s48~0_combout\ & (\inst8|inst2|control|s71~q\ & 
-- ((\inst8|inst2|control|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s48~0_combout\,
	datab => \inst8|inst2|control|s71~q\,
	datac => \inst8|inst2|control|s72~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s72~0_combout\);

-- Location: FF_X18_Y11_N3
\inst8|inst2|control|s72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s72~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s72~q\);

-- Location: LCCOMB_X18_Y11_N6
\inst8|inst2|control|s73~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s73~0_combout\ = (\inst8|inst2|control|s48~0_combout\ & ((\inst8|inst2|control|s73~q\) # ((\inst8|inst2|control|s72~q\ & \inst8|inst2|control|_~0_combout\)))) # (!\inst8|inst2|control|s48~0_combout\ & (\inst8|inst2|control|s72~q\ & 
-- ((\inst8|inst2|control|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s48~0_combout\,
	datab => \inst8|inst2|control|s72~q\,
	datac => \inst8|inst2|control|s73~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s73~0_combout\);

-- Location: FF_X18_Y11_N7
\inst8|inst2|control|s73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s73~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s73~q\);

-- Location: LCCOMB_X16_Y11_N30
\inst8|inst2|control|s74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s74~0_combout\ = (\inst8|inst2|control|_~7_combout\ & (\inst8|inst2|control|s73~q\ & ((\inst8|inst2|control|_~0_combout\)))) # (!\inst8|inst2|control|_~7_combout\ & ((\inst8|inst2|control|s74~q\) # ((\inst8|inst2|control|s73~q\ & 
-- \inst8|inst2|control|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|_~7_combout\,
	datab => \inst8|inst2|control|s73~q\,
	datac => \inst8|inst2|control|s74~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s74~0_combout\);

-- Location: FF_X16_Y11_N31
\inst8|inst2|control|s74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s74~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s74~q\);

-- Location: LCCOMB_X16_Y11_N8
\inst8|inst2|control|s75~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s75~0_combout\ = (\inst8|inst2|control|s48~0_combout\ & ((\inst8|inst2|control|s75~q\) # ((\inst8|inst2|control|s74~q\ & \inst8|inst2|control|_~0_combout\)))) # (!\inst8|inst2|control|s48~0_combout\ & (\inst8|inst2|control|s74~q\ & 
-- ((\inst8|inst2|control|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s48~0_combout\,
	datab => \inst8|inst2|control|s74~q\,
	datac => \inst8|inst2|control|s75~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s75~0_combout\);

-- Location: FF_X16_Y11_N9
\inst8|inst2|control|s75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s75~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s75~q\);

-- Location: LCCOMB_X16_Y14_N30
\inst8|inst2|control|s76~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s76~0_combout\ = (\inst8|inst2|control|s75~q\ & ((\inst8|inst2|control|_~0_combout\) # ((\inst8|inst2|control|s48~0_combout\ & \inst8|inst2|control|s76~q\)))) # (!\inst8|inst2|control|s75~q\ & (\inst8|inst2|control|s48~0_combout\ & 
-- (\inst8|inst2|control|s76~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s75~q\,
	datab => \inst8|inst2|control|s48~0_combout\,
	datac => \inst8|inst2|control|s76~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s76~0_combout\);

-- Location: FF_X16_Y14_N31
\inst8|inst2|control|s76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s76~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s76~q\);

-- Location: LCCOMB_X16_Y10_N8
\inst8|inst2|control|s77~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s77~0_combout\ = (\inst8|inst2|control|_~0_combout\ & ((\inst8|inst2|control|s76~q\) # ((\inst8|inst2|control|s77~q\ & \inst8|inst2|control|s48~0_combout\)))) # (!\inst8|inst2|control|_~0_combout\ & (((\inst8|inst2|control|s77~q\ & 
-- \inst8|inst2|control|s48~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|_~0_combout\,
	datab => \inst8|inst2|control|s76~q\,
	datac => \inst8|inst2|control|s77~q\,
	datad => \inst8|inst2|control|s48~0_combout\,
	combout => \inst8|inst2|control|s77~0_combout\);

-- Location: FF_X16_Y10_N9
\inst8|inst2|control|s77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s77~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s77~q\);

-- Location: LCCOMB_X16_Y10_N30
\inst8|inst2|control|s78~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s78~0_combout\ = (\inst8|inst2|control|s77~q\ & ((\inst8|inst2|control|_~0_combout\) # ((\inst8|inst2|control|s78~q\ & \inst8|inst2|control|s48~0_combout\)))) # (!\inst8|inst2|control|s77~q\ & (((\inst8|inst2|control|s78~q\ & 
-- \inst8|inst2|control|s48~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s77~q\,
	datab => \inst8|inst2|control|_~0_combout\,
	datac => \inst8|inst2|control|s78~q\,
	datad => \inst8|inst2|control|s48~0_combout\,
	combout => \inst8|inst2|control|s78~0_combout\);

-- Location: FF_X16_Y10_N31
\inst8|inst2|control|s78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s78~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s78~q\);

-- Location: LCCOMB_X18_Y11_N26
\inst8|inst2|control|s79~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s79~0_combout\ = (\inst8|inst2|control|s48~0_combout\ & ((\inst8|inst2|control|s79~q\) # ((\inst8|inst2|control|s78~q\ & \inst8|inst2|control|_~0_combout\)))) # (!\inst8|inst2|control|s48~0_combout\ & (\inst8|inst2|control|s78~q\ & 
-- ((\inst8|inst2|control|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s48~0_combout\,
	datab => \inst8|inst2|control|s78~q\,
	datac => \inst8|inst2|control|s79~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s79~0_combout\);

-- Location: FF_X18_Y11_N27
\inst8|inst2|control|s79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s79~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s79~q\);

-- Location: LCCOMB_X16_Y13_N2
\inst8|inst2|control|s80~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s80~0_combout\ = (\inst8|inst2|control|s79~q\ & ((\inst8|inst2|control|_~0_combout\) # ((\inst8|inst2|control|s80~q\ & \inst8|inst2|control|s48~0_combout\)))) # (!\inst8|inst2|control|s79~q\ & (((\inst8|inst2|control|s80~q\ & 
-- \inst8|inst2|control|s48~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s79~q\,
	datab => \inst8|inst2|control|_~0_combout\,
	datac => \inst8|inst2|control|s80~q\,
	datad => \inst8|inst2|control|s48~0_combout\,
	combout => \inst8|inst2|control|s80~0_combout\);

-- Location: FF_X16_Y13_N3
\inst8|inst2|control|s80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s80~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s80~q\);

-- Location: LCCOMB_X16_Y13_N10
\inst8|inst2|control|s81~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s81~0_combout\ = (\inst8|inst2|control|s80~q\ & ((\inst8|inst2|control|_~0_combout\) # ((\inst8|inst2|control|s81~q\ & \inst8|inst2|control|s48~0_combout\)))) # (!\inst8|inst2|control|s80~q\ & (((\inst8|inst2|control|s81~q\ & 
-- \inst8|inst2|control|s48~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s80~q\,
	datab => \inst8|inst2|control|_~0_combout\,
	datac => \inst8|inst2|control|s81~q\,
	datad => \inst8|inst2|control|s48~0_combout\,
	combout => \inst8|inst2|control|s81~0_combout\);

-- Location: FF_X16_Y13_N11
\inst8|inst2|control|s81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s81~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s81~q\);

-- Location: LCCOMB_X16_Y14_N8
\inst8|inst2|control|s82~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s82~0_combout\ = (\inst8|inst2|control|s81~q\ & ((\inst8|inst2|control|_~0_combout\) # ((\inst8|inst2|control|s48~0_combout\ & \inst8|inst2|control|s82~q\)))) # (!\inst8|inst2|control|s81~q\ & (\inst8|inst2|control|s48~0_combout\ & 
-- (\inst8|inst2|control|s82~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s81~q\,
	datab => \inst8|inst2|control|s48~0_combout\,
	datac => \inst8|inst2|control|s82~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s82~0_combout\);

-- Location: FF_X16_Y14_N9
\inst8|inst2|control|s82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s82~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s82~q\);

-- Location: LCCOMB_X16_Y10_N6
\inst8|inst2|control|s83~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s83~0_combout\ = (\inst8|inst2|control|_~0_combout\ & ((\inst8|inst2|control|s82~q\) # ((\inst8|inst2|control|s83~q\ & \inst8|inst2|control|s48~0_combout\)))) # (!\inst8|inst2|control|_~0_combout\ & (((\inst8|inst2|control|s83~q\ & 
-- \inst8|inst2|control|s48~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|_~0_combout\,
	datab => \inst8|inst2|control|s82~q\,
	datac => \inst8|inst2|control|s83~q\,
	datad => \inst8|inst2|control|s48~0_combout\,
	combout => \inst8|inst2|control|s83~0_combout\);

-- Location: FF_X16_Y10_N7
\inst8|inst2|control|s83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s83~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s83~q\);

-- Location: LCCOMB_X16_Y10_N22
\inst8|inst2|control|s84~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s84~0_combout\ = (\inst8|inst2|control|_~0_combout\ & ((\inst8|inst2|control|s83~q\) # ((\inst8|inst2|control|s84~q\ & \inst8|inst2|control|s48~0_combout\)))) # (!\inst8|inst2|control|_~0_combout\ & (((\inst8|inst2|control|s84~q\ & 
-- \inst8|inst2|control|s48~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|_~0_combout\,
	datab => \inst8|inst2|control|s83~q\,
	datac => \inst8|inst2|control|s84~q\,
	datad => \inst8|inst2|control|s48~0_combout\,
	combout => \inst8|inst2|control|s84~0_combout\);

-- Location: FF_X16_Y10_N23
\inst8|inst2|control|s84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s84~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s84~q\);

-- Location: LCCOMB_X16_Y12_N0
\inst8|inst2|control|s36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s36~0_combout\ = (\inst8|inst2|control|s3~0_combout\ & ((\inst8|inst2|control|s36~q\) # ((\inst8|inst2|control|s35~q\ & \inst8|inst2|control|_~0_combout\)))) # (!\inst8|inst2|control|s3~0_combout\ & (\inst8|inst2|control|s35~q\ & 
-- ((\inst8|inst2|control|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s3~0_combout\,
	datab => \inst8|inst2|control|s35~q\,
	datac => \inst8|inst2|control|s36~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s36~0_combout\);

-- Location: FF_X16_Y12_N1
\inst8|inst2|control|s36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s36~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s36~q\);

-- Location: LCCOMB_X16_Y12_N26
\inst8|inst2|control|s37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s37~0_combout\ = (\inst8|inst2|control|s3~0_combout\ & ((\inst8|inst2|control|s37~q\) # ((\inst8|inst2|control|s36~q\ & \inst8|inst2|control|_~0_combout\)))) # (!\inst8|inst2|control|s3~0_combout\ & (\inst8|inst2|control|s36~q\ & 
-- ((\inst8|inst2|control|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s3~0_combout\,
	datab => \inst8|inst2|control|s36~q\,
	datac => \inst8|inst2|control|s37~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s37~0_combout\);

-- Location: FF_X16_Y12_N27
\inst8|inst2|control|s37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s37~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s37~q\);

-- Location: LCCOMB_X16_Y12_N28
\inst8|inst2|control|s38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s38~0_combout\ = (\inst8|inst2|control|s3~0_combout\ & ((\inst8|inst2|control|s38~q\) # ((\inst8|inst2|control|s37~q\ & \inst8|inst2|control|_~0_combout\)))) # (!\inst8|inst2|control|s3~0_combout\ & (\inst8|inst2|control|s37~q\ & 
-- ((\inst8|inst2|control|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s3~0_combout\,
	datab => \inst8|inst2|control|s37~q\,
	datac => \inst8|inst2|control|s38~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s38~0_combout\);

-- Location: FF_X16_Y12_N29
\inst8|inst2|control|s38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s38~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s38~q\);

-- Location: LCCOMB_X16_Y12_N22
\inst8|inst2|control|s39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s39~0_combout\ = (\inst8|inst2|control|_~0_combout\ & ((\inst8|inst2|control|s38~q\) # ((\inst8|inst2|control|s39~q\ & \inst8|inst2|control|s3~0_combout\)))) # (!\inst8|inst2|control|_~0_combout\ & (((\inst8|inst2|control|s39~q\ & 
-- \inst8|inst2|control|s3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|_~0_combout\,
	datab => \inst8|inst2|control|s38~q\,
	datac => \inst8|inst2|control|s39~q\,
	datad => \inst8|inst2|control|s3~0_combout\,
	combout => \inst8|inst2|control|s39~0_combout\);

-- Location: FF_X16_Y12_N23
\inst8|inst2|control|s39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s39~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s39~q\);

-- Location: LCCOMB_X17_Y10_N18
\inst8|inst2|control|s40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s40~0_combout\ = (\inst8|inst2|control|_~0_combout\ & ((\inst8|inst2|control|s39~q\) # ((\inst8|inst2|control|s3~0_combout\ & \inst8|inst2|control|s40~q\)))) # (!\inst8|inst2|control|_~0_combout\ & (\inst8|inst2|control|s3~0_combout\ 
-- & (\inst8|inst2|control|s40~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|_~0_combout\,
	datab => \inst8|inst2|control|s3~0_combout\,
	datac => \inst8|inst2|control|s40~q\,
	datad => \inst8|inst2|control|s39~q\,
	combout => \inst8|inst2|control|s40~0_combout\);

-- Location: FF_X17_Y10_N19
\inst8|inst2|control|s40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s40~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s40~q\);

-- Location: LCCOMB_X17_Y12_N20
\inst8|inst2|control|s41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s41~0_combout\ = (\inst8|inst2|control|s3~0_combout\ & ((\inst8|inst2|control|s41~q\) # ((\inst8|inst2|control|s40~q\ & \inst8|inst2|control|_~0_combout\)))) # (!\inst8|inst2|control|s3~0_combout\ & (\inst8|inst2|control|s40~q\ & 
-- ((\inst8|inst2|control|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s3~0_combout\,
	datab => \inst8|inst2|control|s40~q\,
	datac => \inst8|inst2|control|s41~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s41~0_combout\);

-- Location: FF_X17_Y12_N21
\inst8|inst2|control|s41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s41~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s41~q\);

-- Location: LCCOMB_X17_Y12_N8
\inst8|inst2|control|s42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s42~0_combout\ = (\inst8|inst2|control|s3~0_combout\ & ((\inst8|inst2|control|s42~q\) # ((\inst8|inst2|control|s41~q\ & \inst8|inst2|control|_~0_combout\)))) # (!\inst8|inst2|control|s3~0_combout\ & (\inst8|inst2|control|s41~q\ & 
-- ((\inst8|inst2|control|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s3~0_combout\,
	datab => \inst8|inst2|control|s41~q\,
	datac => \inst8|inst2|control|s42~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s42~0_combout\);

-- Location: FF_X17_Y12_N9
\inst8|inst2|control|s42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s42~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s42~q\);

-- Location: LCCOMB_X18_Y14_N26
\inst8|inst2|control|s43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s43~0_combout\ = (\inst8|inst2|control|s3~0_combout\ & ((\inst8|inst2|control|s43~q\) # ((\inst8|inst2|control|s42~q\ & \inst8|inst2|control|_~0_combout\)))) # (!\inst8|inst2|control|s3~0_combout\ & (\inst8|inst2|control|s42~q\ & 
-- ((\inst8|inst2|control|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s3~0_combout\,
	datab => \inst8|inst2|control|s42~q\,
	datac => \inst8|inst2|control|s43~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s43~0_combout\);

-- Location: FF_X18_Y14_N27
\inst8|inst2|control|s43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s43~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s43~q\);

-- Location: LCCOMB_X18_Y14_N24
\inst8|inst2|control|s44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s44~0_combout\ = (\inst8|inst2|control|s3~0_combout\ & ((\inst8|inst2|control|s44~q\) # ((\inst8|inst2|control|s43~q\ & \inst8|inst2|control|_~0_combout\)))) # (!\inst8|inst2|control|s3~0_combout\ & (\inst8|inst2|control|s43~q\ & 
-- ((\inst8|inst2|control|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s3~0_combout\,
	datab => \inst8|inst2|control|s43~q\,
	datac => \inst8|inst2|control|s44~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s44~0_combout\);

-- Location: FF_X18_Y14_N25
\inst8|inst2|control|s44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s44~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s44~q\);

-- Location: LCCOMB_X16_Y14_N18
\inst8|inst2|control|s45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s45~0_combout\ = (\inst8|inst2|control|_~0_combout\ & ((\inst8|inst2|control|s44~q\) # ((\inst8|inst2|control|s45~q\ & \inst8|inst2|control|s3~0_combout\)))) # (!\inst8|inst2|control|_~0_combout\ & (((\inst8|inst2|control|s45~q\ & 
-- \inst8|inst2|control|s3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|_~0_combout\,
	datab => \inst8|inst2|control|s44~q\,
	datac => \inst8|inst2|control|s45~q\,
	datad => \inst8|inst2|control|s3~0_combout\,
	combout => \inst8|inst2|control|s45~0_combout\);

-- Location: FF_X16_Y14_N19
\inst8|inst2|control|s45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s45~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s45~q\);

-- Location: LCCOMB_X16_Y14_N16
\inst8|inst2|control|s46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s46~0_combout\ = (\inst8|inst2|control|s45~q\ & ((\inst8|inst2|control|_~0_combout\) # ((\inst8|inst2|control|s48~0_combout\ & \inst8|inst2|control|s46~q\)))) # (!\inst8|inst2|control|s45~q\ & (\inst8|inst2|control|s48~0_combout\ & 
-- (\inst8|inst2|control|s46~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s45~q\,
	datab => \inst8|inst2|control|s48~0_combout\,
	datac => \inst8|inst2|control|s46~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s46~0_combout\);

-- Location: FF_X16_Y14_N17
\inst8|inst2|control|s46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s46~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s46~q\);

-- Location: LCCOMB_X18_Y11_N22
\inst8|inst2|control|s47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s47~0_combout\ = (\inst8|inst2|control|s48~0_combout\ & ((\inst8|inst2|control|s47~q\) # ((\inst8|inst2|control|s46~q\ & \inst8|inst2|control|_~0_combout\)))) # (!\inst8|inst2|control|s48~0_combout\ & (\inst8|inst2|control|s46~q\ & 
-- ((\inst8|inst2|control|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s48~0_combout\,
	datab => \inst8|inst2|control|s46~q\,
	datac => \inst8|inst2|control|s47~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s47~0_combout\);

-- Location: FF_X18_Y11_N23
\inst8|inst2|control|s47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s47~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s47~q\);

-- Location: LCCOMB_X17_Y11_N30
\inst8|inst2|control|s48~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s48~1_combout\ = (\inst8|inst2|control|_~0_combout\ & ((\inst8|inst2|control|s47~q\) # ((\inst8|inst2|control|s48~q\ & \inst8|inst2|control|s48~0_combout\)))) # (!\inst8|inst2|control|_~0_combout\ & (((\inst8|inst2|control|s48~q\ & 
-- \inst8|inst2|control|s48~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|_~0_combout\,
	datab => \inst8|inst2|control|s47~q\,
	datac => \inst8|inst2|control|s48~q\,
	datad => \inst8|inst2|control|s48~0_combout\,
	combout => \inst8|inst2|control|s48~1_combout\);

-- Location: FF_X17_Y11_N31
\inst8|inst2|control|s48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s48~1_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s48~q\);

-- Location: LCCOMB_X17_Y11_N26
\inst8|inst2|control|s49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s49~0_combout\ = (\inst8|inst2|control|_~0_combout\ & ((\inst8|inst2|control|s48~q\) # ((\inst8|inst2|control|s49~q\ & \inst8|inst2|control|s48~0_combout\)))) # (!\inst8|inst2|control|_~0_combout\ & (((\inst8|inst2|control|s49~q\ & 
-- \inst8|inst2|control|s48~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|_~0_combout\,
	datab => \inst8|inst2|control|s48~q\,
	datac => \inst8|inst2|control|s49~q\,
	datad => \inst8|inst2|control|s48~0_combout\,
	combout => \inst8|inst2|control|s49~0_combout\);

-- Location: FF_X17_Y11_N27
\inst8|inst2|control|s49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s49~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s49~q\);

-- Location: LCCOMB_X16_Y11_N12
\inst8|inst2|control|s50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s50~0_combout\ = (\inst8|inst2|control|s49~q\ & ((\inst8|inst2|control|_~0_combout\) # ((\inst8|inst2|control|s48~0_combout\ & \inst8|inst2|control|s50~q\)))) # (!\inst8|inst2|control|s49~q\ & (\inst8|inst2|control|s48~0_combout\ & 
-- (\inst8|inst2|control|s50~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s49~q\,
	datab => \inst8|inst2|control|s48~0_combout\,
	datac => \inst8|inst2|control|s50~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s50~0_combout\);

-- Location: FF_X16_Y11_N13
\inst8|inst2|control|s50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s50~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s50~q\);

-- Location: LCCOMB_X17_Y13_N26
\inst8|inst2|control|s51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s51~0_combout\ = (\inst8|inst2|control|_~0_combout\ & ((\inst8|inst2|control|s50~q\) # ((\inst8|inst2|control|s48~0_combout\ & \inst8|inst2|control|s51~q\)))) # (!\inst8|inst2|control|_~0_combout\ & 
-- (\inst8|inst2|control|s48~0_combout\ & (\inst8|inst2|control|s51~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|_~0_combout\,
	datab => \inst8|inst2|control|s48~0_combout\,
	datac => \inst8|inst2|control|s51~q\,
	datad => \inst8|inst2|control|s50~q\,
	combout => \inst8|inst2|control|s51~0_combout\);

-- Location: FF_X17_Y13_N27
\inst8|inst2|control|s51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s51~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s51~q\);

-- Location: LCCOMB_X16_Y11_N0
\inst8|inst2|control|s52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s52~0_combout\ = (\inst8|inst2|control|s51~q\ & ((\inst8|inst2|control|_~0_combout\) # ((\inst8|inst2|control|s48~0_combout\ & \inst8|inst2|control|s52~q\)))) # (!\inst8|inst2|control|s51~q\ & (\inst8|inst2|control|s48~0_combout\ & 
-- (\inst8|inst2|control|s52~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s51~q\,
	datab => \inst8|inst2|control|s48~0_combout\,
	datac => \inst8|inst2|control|s52~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s52~0_combout\);

-- Location: FF_X16_Y11_N1
\inst8|inst2|control|s52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s52~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s52~q\);

-- Location: LCCOMB_X16_Y11_N28
\inst8|inst2|control|s53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s53~0_combout\ = (\inst8|inst2|control|s52~q\ & ((\inst8|inst2|control|_~0_combout\) # ((\inst8|inst2|control|s48~0_combout\ & \inst8|inst2|control|s53~q\)))) # (!\inst8|inst2|control|s52~q\ & (\inst8|inst2|control|s48~0_combout\ & 
-- (\inst8|inst2|control|s53~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s52~q\,
	datab => \inst8|inst2|control|s48~0_combout\,
	datac => \inst8|inst2|control|s53~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s53~0_combout\);

-- Location: FF_X16_Y11_N29
\inst8|inst2|control|s53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s53~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s53~q\);

-- Location: LCCOMB_X16_Y11_N20
\inst8|inst2|control|s54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s54~0_combout\ = (\inst8|inst2|control|s53~q\ & ((\inst8|inst2|control|_~0_combout\) # ((\inst8|inst2|control|s48~0_combout\ & \inst8|inst2|control|s54~q\)))) # (!\inst8|inst2|control|s53~q\ & (\inst8|inst2|control|s48~0_combout\ & 
-- (\inst8|inst2|control|s54~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s53~q\,
	datab => \inst8|inst2|control|s48~0_combout\,
	datac => \inst8|inst2|control|s54~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s54~0_combout\);

-- Location: FF_X16_Y11_N21
\inst8|inst2|control|s54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s54~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s54~q\);

-- Location: LCCOMB_X16_Y11_N14
\inst8|inst2|control|s55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s55~0_combout\ = (\inst8|inst2|control|s54~q\ & ((\inst8|inst2|control|_~0_combout\) # ((\inst8|inst2|control|s48~0_combout\ & \inst8|inst2|control|s55~q\)))) # (!\inst8|inst2|control|s54~q\ & (\inst8|inst2|control|s48~0_combout\ & 
-- (\inst8|inst2|control|s55~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s54~q\,
	datab => \inst8|inst2|control|s48~0_combout\,
	datac => \inst8|inst2|control|s55~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s55~0_combout\);

-- Location: FF_X16_Y11_N15
\inst8|inst2|control|s55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s55~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s55~q\);

-- Location: LCCOMB_X18_Y14_N18
\inst8|inst2|control|s56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s56~0_combout\ = (\inst8|inst2|control|s48~0_combout\ & ((\inst8|inst2|control|s56~q\) # ((\inst8|inst2|control|_~0_combout\ & \inst8|inst2|control|s55~q\)))) # (!\inst8|inst2|control|s48~0_combout\ & 
-- (\inst8|inst2|control|_~0_combout\ & ((\inst8|inst2|control|s55~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s48~0_combout\,
	datab => \inst8|inst2|control|_~0_combout\,
	datac => \inst8|inst2|control|s56~q\,
	datad => \inst8|inst2|control|s55~q\,
	combout => \inst8|inst2|control|s56~0_combout\);

-- Location: FF_X18_Y14_N19
\inst8|inst2|control|s56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s56~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s56~q\);

-- Location: LCCOMB_X18_Y11_N4
\inst8|inst2|control|s57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s57~0_combout\ = (\inst8|inst2|control|s48~0_combout\ & ((\inst8|inst2|control|s57~q\) # ((\inst8|inst2|control|s56~q\ & \inst8|inst2|control|_~0_combout\)))) # (!\inst8|inst2|control|s48~0_combout\ & (\inst8|inst2|control|s56~q\ & 
-- ((\inst8|inst2|control|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s48~0_combout\,
	datab => \inst8|inst2|control|s56~q\,
	datac => \inst8|inst2|control|s57~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s57~0_combout\);

-- Location: FF_X18_Y11_N5
\inst8|inst2|control|s57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s57~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s57~q\);

-- Location: LCCOMB_X16_Y14_N28
\inst8|inst2|control|s58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s58~0_combout\ = (\inst8|inst2|control|s57~q\ & ((\inst8|inst2|control|_~0_combout\) # ((\inst8|inst2|control|s48~0_combout\ & \inst8|inst2|control|s58~q\)))) # (!\inst8|inst2|control|s57~q\ & (\inst8|inst2|control|s48~0_combout\ & 
-- (\inst8|inst2|control|s58~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s57~q\,
	datab => \inst8|inst2|control|s48~0_combout\,
	datac => \inst8|inst2|control|s58~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s58~0_combout\);

-- Location: FF_X16_Y14_N29
\inst8|inst2|control|s58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s58~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s58~q\);

-- Location: LCCOMB_X16_Y10_N26
\inst8|inst2|control|s59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s59~0_combout\ = (\inst8|inst2|control|_~0_combout\ & ((\inst8|inst2|control|s58~q\) # ((\inst8|inst2|control|s59~q\ & \inst8|inst2|control|s48~0_combout\)))) # (!\inst8|inst2|control|_~0_combout\ & (((\inst8|inst2|control|s59~q\ & 
-- \inst8|inst2|control|s48~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|_~0_combout\,
	datab => \inst8|inst2|control|s58~q\,
	datac => \inst8|inst2|control|s59~q\,
	datad => \inst8|inst2|control|s48~0_combout\,
	combout => \inst8|inst2|control|s59~0_combout\);

-- Location: FF_X16_Y10_N27
\inst8|inst2|control|s59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s59~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s59~q\);

-- Location: LCCOMB_X16_Y10_N24
\inst8|inst2|control|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|_~2_combout\ = (\inst8|inst2|control|s56~q\) # ((\inst8|inst2|control|s59~q\) # ((\inst8|inst2|control|s46~q\) # (\inst8|inst2|control|s66~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s56~q\,
	datab => \inst8|inst2|control|s59~q\,
	datac => \inst8|inst2|control|s46~q\,
	datad => \inst8|inst2|control|s66~q\,
	combout => \inst8|inst2|control|_~2_combout\);

-- Location: LCCOMB_X16_Y10_N28
\inst8|inst2|control|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|_~3_combout\ = (\inst8|inst2|control|s84~q\) # ((\inst8|inst2|control|s63~q\) # ((\inst8|inst2|control|s83~q\) # (\inst8|inst2|control|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s84~q\,
	datab => \inst8|inst2|control|s63~q\,
	datac => \inst8|inst2|control|s83~q\,
	datad => \inst8|inst2|control|_~2_combout\,
	combout => \inst8|inst2|control|_~3_combout\);

-- Location: LCCOMB_X16_Y11_N16
\inst8|inst2|control|clk_out~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|clk_out~93_combout\ = (!\inst8|inst2|control|s50~q\ & (!\inst8|inst2|control|s53~q\ & (!\inst8|inst2|control|s52~q\ & !\inst8|inst2|control|s70~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s50~q\,
	datab => \inst8|inst2|control|s53~q\,
	datac => \inst8|inst2|control|s52~q\,
	datad => \inst8|inst2|control|s70~q\,
	combout => \inst8|inst2|control|clk_out~93_combout\);

-- Location: LCCOMB_X18_Y11_N0
\inst8|inst2|control|s85~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s85~0_combout\ = (\inst8|inst2|control|s48~0_combout\ & ((\inst8|inst2|control|s85~q\) # ((\inst8|inst2|control|s84~q\ & \inst8|inst2|control|_~0_combout\)))) # (!\inst8|inst2|control|s48~0_combout\ & (\inst8|inst2|control|s84~q\ & 
-- ((\inst8|inst2|control|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s48~0_combout\,
	datab => \inst8|inst2|control|s84~q\,
	datac => \inst8|inst2|control|s85~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s85~0_combout\);

-- Location: FF_X18_Y11_N1
\inst8|inst2|control|s85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s85~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s85~q\);

-- Location: LCCOMB_X16_Y14_N6
\inst8|inst2|control|s86~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s86~0_combout\ = (\inst8|inst2|control|s85~q\ & ((\inst8|inst2|control|_~0_combout\) # ((\inst8|inst2|control|s48~0_combout\ & \inst8|inst2|control|s86~q\)))) # (!\inst8|inst2|control|s85~q\ & (\inst8|inst2|control|s48~0_combout\ & 
-- (\inst8|inst2|control|s86~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s85~q\,
	datab => \inst8|inst2|control|s48~0_combout\,
	datac => \inst8|inst2|control|s86~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s86~0_combout\);

-- Location: FF_X16_Y14_N7
\inst8|inst2|control|s86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s86~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s86~q\);

-- Location: LCCOMB_X16_Y14_N0
\inst8|inst2|control|s87~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s87~0_combout\ = (\inst8|inst2|control|s86~q\ & ((\inst8|inst2|control|_~0_combout\) # ((\inst8|inst2|control|s48~0_combout\ & \inst8|inst2|control|s87~q\)))) # (!\inst8|inst2|control|s86~q\ & (\inst8|inst2|control|s48~0_combout\ & 
-- (\inst8|inst2|control|s87~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s86~q\,
	datab => \inst8|inst2|control|s48~0_combout\,
	datac => \inst8|inst2|control|s87~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s87~0_combout\);

-- Location: FF_X16_Y14_N1
\inst8|inst2|control|s87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s87~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s87~q\);

-- Location: LCCOMB_X18_Y11_N8
\inst8|inst2|control|clk_out~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|clk_out~94_combout\ = (!\inst8|inst2|control|s73~q\ & (!\inst8|inst2|control|s85~q\ & (!\inst8|inst2|control|s72~q\ & !\inst8|inst2|control|s79~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s73~q\,
	datab => \inst8|inst2|control|s85~q\,
	datac => \inst8|inst2|control|s72~q\,
	datad => \inst8|inst2|control|s79~q\,
	combout => \inst8|inst2|control|clk_out~94_combout\);

-- Location: LCCOMB_X18_Y11_N30
\inst8|inst2|control|clk_out~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|clk_out~95_combout\ = (\inst8|inst2|control|clk_out~93_combout\ & (!\inst8|inst2|control|s86~q\ & (!\inst8|inst2|control|s87~q\ & \inst8|inst2|control|clk_out~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|clk_out~93_combout\,
	datab => \inst8|inst2|control|s86~q\,
	datac => \inst8|inst2|control|s87~q\,
	datad => \inst8|inst2|control|clk_out~94_combout\,
	combout => \inst8|inst2|control|clk_out~95_combout\);

-- Location: LCCOMB_X18_Y11_N14
\inst8|inst2|control|freq_out[3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|freq_out[3]~41_combout\ = (!\inst8|inst2|control|s67~q\ & (!\inst8|inst2|control|s47~q\ & !\inst8|inst2|control|s60~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst2|control|s67~q\,
	datac => \inst8|inst2|control|s47~q\,
	datad => \inst8|inst2|control|s60~q\,
	combout => \inst8|inst2|control|freq_out[3]~41_combout\);

-- Location: LCCOMB_X18_Y11_N10
\inst8|inst2|temp|_~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|_~13_combout\ = (!\inst8|inst2|control|s64~q\ & (\inst8|inst2|control|freq_out[3]~41_combout\ & !\inst8|inst2|control|s57~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst2|control|s64~q\,
	datac => \inst8|inst2|control|freq_out[3]~41_combout\,
	datad => \inst8|inst2|control|s57~q\,
	combout => \inst8|inst2|temp|_~13_combout\);

-- Location: LCCOMB_X16_Y11_N10
\inst8|inst2|temp|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|_~6_combout\ = (!\inst8|inst2|control|s54~q\ & !\inst8|inst2|control|s74~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst2|control|s54~q\,
	datad => \inst8|inst2|control|s74~q\,
	combout => \inst8|inst2|temp|_~6_combout\);

-- Location: LCCOMB_X18_Y12_N28
\inst8|inst2|control|s88~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s88~0_combout\ = (\inst8|inst2|control|s87~q\ & ((\inst8|inst2|control|_~0_combout\) # ((\inst8|inst2|control|s88~q\ & \inst8|inst2|control|s48~0_combout\)))) # (!\inst8|inst2|control|s87~q\ & (((\inst8|inst2|control|s88~q\ & 
-- \inst8|inst2|control|s48~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s87~q\,
	datab => \inst8|inst2|control|_~0_combout\,
	datac => \inst8|inst2|control|s88~q\,
	datad => \inst8|inst2|control|s48~0_combout\,
	combout => \inst8|inst2|control|s88~0_combout\);

-- Location: FF_X18_Y12_N29
\inst8|inst2|control|s88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s88~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s88~q\);

-- Location: LCCOMB_X17_Y14_N18
\inst8|inst2|control|s89~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s89~0_combout\ = (\inst8|inst2|control|_~0_combout\ & ((\inst8|inst2|control|s88~q\) # ((\inst8|inst2|control|s89~q\ & \inst8|inst2|control|s48~0_combout\)))) # (!\inst8|inst2|control|_~0_combout\ & (((\inst8|inst2|control|s89~q\ & 
-- \inst8|inst2|control|s48~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|_~0_combout\,
	datab => \inst8|inst2|control|s88~q\,
	datac => \inst8|inst2|control|s89~q\,
	datad => \inst8|inst2|control|s48~0_combout\,
	combout => \inst8|inst2|control|s89~0_combout\);

-- Location: FF_X17_Y14_N19
\inst8|inst2|control|s89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s89~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s89~q\);

-- Location: LCCOMB_X17_Y14_N10
\inst8|inst2|control|s90~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s90~0_combout\ = (\inst8|inst2|control|_~0_combout\ & ((\inst8|inst2|control|s89~q\) # ((\inst8|inst2|control|s90~q\ & \inst8|inst2|control|s48~0_combout\)))) # (!\inst8|inst2|control|_~0_combout\ & (((\inst8|inst2|control|s90~q\ & 
-- \inst8|inst2|control|s48~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|_~0_combout\,
	datab => \inst8|inst2|control|s89~q\,
	datac => \inst8|inst2|control|s90~q\,
	datad => \inst8|inst2|control|s48~0_combout\,
	combout => \inst8|inst2|control|s90~0_combout\);

-- Location: FF_X17_Y14_N11
\inst8|inst2|control|s90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s90~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s90~q\);

-- Location: LCCOMB_X17_Y14_N28
\inst8|inst2|control|s91~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s91~0_combout\ = (\inst8|inst2|control|_~0_combout\ & ((\inst8|inst2|control|s90~q\) # ((\inst8|inst2|control|s91~q\ & \inst8|inst2|control|s48~0_combout\)))) # (!\inst8|inst2|control|_~0_combout\ & (((\inst8|inst2|control|s91~q\ & 
-- \inst8|inst2|control|s48~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|_~0_combout\,
	datab => \inst8|inst2|control|s90~q\,
	datac => \inst8|inst2|control|s91~q\,
	datad => \inst8|inst2|control|s48~0_combout\,
	combout => \inst8|inst2|control|s91~0_combout\);

-- Location: FF_X17_Y14_N29
\inst8|inst2|control|s91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s91~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s91~q\);

-- Location: LCCOMB_X17_Y14_N20
\inst8|inst2|control|freq_out[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|freq_out[6]~18_combout\ = (!\inst8|inst2|control|s90~q\ & (!\inst8|inst2|control|s91~q\ & (!\inst8|inst2|control|s76~q\ & !\inst8|inst2|control|s82~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s90~q\,
	datab => \inst8|inst2|control|s91~q\,
	datac => \inst8|inst2|control|s76~q\,
	datad => \inst8|inst2|control|s82~q\,
	combout => \inst8|inst2|control|freq_out[6]~18_combout\);

-- Location: LCCOMB_X17_Y14_N24
\inst8|inst2|control|freq_out[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|freq_out[5]~17_combout\ = (!\inst8|inst2|control|s89~q\ & !\inst8|inst2|control|s62~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s89~q\,
	datad => \inst8|inst2|control|s62~q\,
	combout => \inst8|inst2|control|freq_out[5]~17_combout\);

-- Location: LCCOMB_X18_Y11_N18
\inst8|inst2|control|freq_out[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|freq_out[5]~42_combout\ = (\inst8|inst2|temp|_~13_combout\ & (\inst8|inst2|temp|_~6_combout\ & (\inst8|inst2|control|freq_out[6]~18_combout\ & \inst8|inst2|control|freq_out[5]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|temp|_~13_combout\,
	datab => \inst8|inst2|temp|_~6_combout\,
	datac => \inst8|inst2|control|freq_out[6]~18_combout\,
	datad => \inst8|inst2|control|freq_out[5]~17_combout\,
	combout => \inst8|inst2|control|freq_out[5]~42_combout\);

-- Location: LCCOMB_X18_Y11_N12
\inst8|inst2|control|freq_out[5]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|freq_out[5]~43_combout\ = (!\inst8|inst2|control|s81~q\ & (!\inst8|inst2|control|s80~q\ & (\inst8|inst2|control|clk_out~95_combout\ & \inst8|inst2|control|freq_out[5]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s81~q\,
	datab => \inst8|inst2|control|s80~q\,
	datac => \inst8|inst2|control|clk_out~95_combout\,
	datad => \inst8|inst2|control|freq_out[5]~42_combout\,
	combout => \inst8|inst2|control|freq_out[5]~43_combout\);

-- Location: LCCOMB_X17_Y11_N22
\inst8|inst2|control|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|_~1_combout\ = (\inst1|P2~q\) # (((\inst8|inst2|temp|q~5_combout\ & \inst8|inst2|temp|q~9_combout\)) # (!\inst1|P3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|P2~q\,
	datab => \inst1|P3~q\,
	datac => \inst8|inst2|temp|q~5_combout\,
	datad => \inst8|inst2|temp|q~9_combout\,
	combout => \inst8|inst2|control|_~1_combout\);

-- Location: LCCOMB_X16_Y11_N26
\inst8|inst2|control|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|_~4_combout\ = (\inst8|inst2|control|s77~q\) # ((\inst8|inst2|control|s78~q\) # ((\inst8|inst2|control|s55~q\) # (\inst8|inst2|control|s75~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s77~q\,
	datab => \inst8|inst2|control|s78~q\,
	datac => \inst8|inst2|control|s55~q\,
	datad => \inst8|inst2|control|s75~q\,
	combout => \inst8|inst2|control|_~4_combout\);

-- Location: LCCOMB_X17_Y11_N16
\inst8|inst2|control|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|_~5_combout\ = (\inst8|inst2|control|s51~q\) # ((\inst8|inst2|control|s58~q\) # ((\inst8|inst2|control|s71~q\) # (\inst8|inst2|control|s65~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s51~q\,
	datab => \inst8|inst2|control|s58~q\,
	datac => \inst8|inst2|control|s71~q\,
	datad => \inst8|inst2|control|s65~q\,
	combout => \inst8|inst2|control|_~5_combout\);

-- Location: LCCOMB_X17_Y11_N14
\inst8|inst2|control|freq_out[15]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|freq_out[15]~13_combout\ = (!\inst8|inst2|control|s88~q\ & !\inst8|inst2|control|s61~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s88~q\,
	datad => \inst8|inst2|control|s61~q\,
	combout => \inst8|inst2|control|freq_out[15]~13_combout\);

-- Location: LCCOMB_X17_Y11_N18
\inst8|inst2|control|freq_out[15]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|freq_out[15]~8_combout\ = (!\inst8|inst2|control|s68~q\ & (!\inst8|inst2|control|s69~q\ & (!\inst8|inst2|control|s49~q\ & !\inst8|inst2|control|s48~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s68~q\,
	datab => \inst8|inst2|control|s69~q\,
	datac => \inst8|inst2|control|s49~q\,
	datad => \inst8|inst2|control|s48~q\,
	combout => \inst8|inst2|control|freq_out[15]~8_combout\);

-- Location: LCCOMB_X17_Y11_N28
\inst8|inst2|control|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|_~6_combout\ = (\inst8|inst2|control|_~4_combout\) # ((\inst8|inst2|control|_~5_combout\) # ((!\inst8|inst2|control|freq_out[15]~8_combout\) # (!\inst8|inst2|control|freq_out[15]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|_~4_combout\,
	datab => \inst8|inst2|control|_~5_combout\,
	datac => \inst8|inst2|control|freq_out[15]~13_combout\,
	datad => \inst8|inst2|control|freq_out[15]~8_combout\,
	combout => \inst8|inst2|control|_~6_combout\);

-- Location: LCCOMB_X17_Y11_N20
\inst8|inst2|control|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|_~7_combout\ = (\inst8|inst2|control|_~1_combout\ & ((\inst8|inst2|control|_~3_combout\) # ((\inst8|inst2|control|_~6_combout\) # (!\inst8|inst2|control|freq_out[5]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|_~3_combout\,
	datab => \inst8|inst2|control|freq_out[5]~43_combout\,
	datac => \inst8|inst2|control|_~1_combout\,
	datad => \inst8|inst2|control|_~6_combout\,
	combout => \inst8|inst2|control|_~7_combout\);

-- Location: LCCOMB_X17_Y11_N10
\inst8|inst2|control|s48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s48~0_combout\ = ((!\inst1|P3~q\ & !\inst1|P2~q\)) # (!\inst8|inst2|control|_~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|P3~q\,
	datac => \inst1|P2~q\,
	datad => \inst8|inst2|control|_~7_combout\,
	combout => \inst8|inst2|control|s48~0_combout\);

-- Location: LCCOMB_X17_Y11_N2
\inst8|inst2|control|s60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s60~0_combout\ = (\inst8|inst2|control|s48~0_combout\ & ((\inst8|inst2|control|s60~q\) # ((\inst8|inst2|control|s59~q\ & \inst8|inst2|control|_~0_combout\)))) # (!\inst8|inst2|control|s48~0_combout\ & (\inst8|inst2|control|s59~q\ & 
-- ((\inst8|inst2|control|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s48~0_combout\,
	datab => \inst8|inst2|control|s59~q\,
	datac => \inst8|inst2|control|s60~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s60~0_combout\);

-- Location: FF_X17_Y11_N3
\inst8|inst2|control|s60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s60~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s60~q\);

-- Location: LCCOMB_X17_Y11_N24
\inst8|inst2|control|s61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s61~0_combout\ = (\inst8|inst2|control|_~0_combout\ & ((\inst8|inst2|control|s60~q\) # ((\inst8|inst2|control|s61~q\ & \inst8|inst2|control|s48~0_combout\)))) # (!\inst8|inst2|control|_~0_combout\ & (((\inst8|inst2|control|s61~q\ & 
-- \inst8|inst2|control|s48~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|_~0_combout\,
	datab => \inst8|inst2|control|s60~q\,
	datac => \inst8|inst2|control|s61~q\,
	datad => \inst8|inst2|control|s48~0_combout\,
	combout => \inst8|inst2|control|s61~0_combout\);

-- Location: FF_X17_Y11_N25
\inst8|inst2|control|s61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s61~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s61~q\);

-- Location: LCCOMB_X17_Y11_N12
\inst8|inst2|control|s62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s62~0_combout\ = (\inst8|inst2|control|s61~q\ & ((\inst8|inst2|control|_~0_combout\) # ((\inst8|inst2|control|s48~0_combout\ & \inst8|inst2|control|s62~q\)))) # (!\inst8|inst2|control|s61~q\ & (\inst8|inst2|control|s48~0_combout\ & 
-- (\inst8|inst2|control|s62~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s61~q\,
	datab => \inst8|inst2|control|s48~0_combout\,
	datac => \inst8|inst2|control|s62~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s62~0_combout\);

-- Location: FF_X17_Y11_N13
\inst8|inst2|control|s62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s62~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s62~q\);

-- Location: LCCOMB_X17_Y12_N18
\inst8|inst2|control|s63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s63~0_combout\ = (\inst8|inst2|control|_~0_combout\ & ((\inst8|inst2|control|s62~q\) # ((\inst8|inst2|control|s63~q\ & \inst8|inst2|control|s48~0_combout\)))) # (!\inst8|inst2|control|_~0_combout\ & (((\inst8|inst2|control|s63~q\ & 
-- \inst8|inst2|control|s48~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|_~0_combout\,
	datab => \inst8|inst2|control|s62~q\,
	datac => \inst8|inst2|control|s63~q\,
	datad => \inst8|inst2|control|s48~0_combout\,
	combout => \inst8|inst2|control|s63~0_combout\);

-- Location: FF_X17_Y12_N19
\inst8|inst2|control|s63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s63~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s63~q\);

-- Location: LCCOMB_X17_Y14_N22
\inst8|inst2|control|s15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s15~0_combout\ = (\inst8|inst2|control|_~0_combout\ & ((\inst8|inst2|control|s14~q\) # ((\inst8|inst2|control|s3~0_combout\ & \inst8|inst2|control|s15~q\)))) # (!\inst8|inst2|control|_~0_combout\ & (\inst8|inst2|control|s3~0_combout\ 
-- & (\inst8|inst2|control|s15~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|_~0_combout\,
	datab => \inst8|inst2|control|s3~0_combout\,
	datac => \inst8|inst2|control|s15~q\,
	datad => \inst8|inst2|control|s14~q\,
	combout => \inst8|inst2|control|s15~0_combout\);

-- Location: FF_X17_Y14_N23
\inst8|inst2|control|s15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s15~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s15~q\);

-- Location: LCCOMB_X16_Y12_N8
\inst8|inst2|control|s16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s16~0_combout\ = (\inst8|inst2|control|_~0_combout\ & ((\inst8|inst2|control|s15~q\) # ((\inst8|inst2|control|s16~q\ & \inst8|inst2|control|s3~0_combout\)))) # (!\inst8|inst2|control|_~0_combout\ & (((\inst8|inst2|control|s16~q\ & 
-- \inst8|inst2|control|s3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|_~0_combout\,
	datab => \inst8|inst2|control|s15~q\,
	datac => \inst8|inst2|control|s16~q\,
	datad => \inst8|inst2|control|s3~0_combout\,
	combout => \inst8|inst2|control|s16~0_combout\);

-- Location: FF_X16_Y12_N9
\inst8|inst2|control|s16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s16~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s16~q\);

-- Location: LCCOMB_X16_Y12_N16
\inst8|inst2|control|s17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s17~0_combout\ = (\inst8|inst2|control|s3~0_combout\ & ((\inst8|inst2|control|s17~q\) # ((\inst8|inst2|control|s16~q\ & \inst8|inst2|control|_~0_combout\)))) # (!\inst8|inst2|control|s3~0_combout\ & (\inst8|inst2|control|s16~q\ & 
-- ((\inst8|inst2|control|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s3~0_combout\,
	datab => \inst8|inst2|control|s16~q\,
	datac => \inst8|inst2|control|s17~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s17~0_combout\);

-- Location: FF_X16_Y12_N17
\inst8|inst2|control|s17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s17~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s17~q\);

-- Location: LCCOMB_X16_Y12_N20
\inst8|inst2|control|s18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s18~0_combout\ = (\inst8|inst2|control|s3~0_combout\ & ((\inst8|inst2|control|s18~q\) # ((\inst8|inst2|control|s17~q\ & \inst8|inst2|control|_~0_combout\)))) # (!\inst8|inst2|control|s3~0_combout\ & (\inst8|inst2|control|s17~q\ & 
-- ((\inst8|inst2|control|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s3~0_combout\,
	datab => \inst8|inst2|control|s17~q\,
	datac => \inst8|inst2|control|s18~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s18~0_combout\);

-- Location: FF_X16_Y12_N21
\inst8|inst2|control|s18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s18~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s18~q\);

-- Location: LCCOMB_X16_Y12_N12
\inst8|inst2|temp|_~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|_~11_combout\ = (!\inst8|inst2|control|s38~q\ & !\inst8|inst2|control|s18~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst2|control|s38~q\,
	datac => \inst8|inst2|control|s18~q\,
	combout => \inst8|inst2|temp|_~11_combout\);

-- Location: LCCOMB_X17_Y10_N12
\inst8|inst2|control|s19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s19~0_combout\ = (\inst8|inst2|control|_~0_combout\ & ((\inst8|inst2|control|s18~q\) # ((\inst8|inst2|control|s3~0_combout\ & \inst8|inst2|control|s19~q\)))) # (!\inst8|inst2|control|_~0_combout\ & (\inst8|inst2|control|s3~0_combout\ 
-- & (\inst8|inst2|control|s19~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|_~0_combout\,
	datab => \inst8|inst2|control|s3~0_combout\,
	datac => \inst8|inst2|control|s19~q\,
	datad => \inst8|inst2|control|s18~q\,
	combout => \inst8|inst2|control|s19~0_combout\);

-- Location: FF_X17_Y10_N13
\inst8|inst2|control|s19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s19~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s19~q\);

-- Location: LCCOMB_X17_Y10_N30
\inst8|inst2|control|s20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s20~0_combout\ = (\inst8|inst2|control|s19~q\ & ((\inst8|inst2|control|_~0_combout\) # ((\inst8|inst2|control|s3~0_combout\ & \inst8|inst2|control|s20~q\)))) # (!\inst8|inst2|control|s19~q\ & (\inst8|inst2|control|s3~0_combout\ & 
-- (\inst8|inst2|control|s20~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s19~q\,
	datab => \inst8|inst2|control|s3~0_combout\,
	datac => \inst8|inst2|control|s20~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s20~0_combout\);

-- Location: FF_X17_Y10_N31
\inst8|inst2|control|s20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s20~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s20~q\);

-- Location: LCCOMB_X17_Y12_N28
\inst8|inst2|control|s21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s21~0_combout\ = (\inst8|inst2|control|s3~0_combout\ & ((\inst8|inst2|control|s21~q\) # ((\inst8|inst2|control|s20~q\ & \inst8|inst2|control|_~0_combout\)))) # (!\inst8|inst2|control|s3~0_combout\ & (\inst8|inst2|control|s20~q\ & 
-- ((\inst8|inst2|control|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s3~0_combout\,
	datab => \inst8|inst2|control|s20~q\,
	datac => \inst8|inst2|control|s21~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s21~0_combout\);

-- Location: FF_X17_Y12_N29
\inst8|inst2|control|s21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s21~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s21~q\);

-- Location: LCCOMB_X17_Y12_N6
\inst8|inst2|control|s22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s22~0_combout\ = (\inst8|inst2|control|s3~0_combout\ & ((\inst8|inst2|control|s22~q\) # ((\inst8|inst2|control|s21~q\ & \inst8|inst2|control|_~0_combout\)))) # (!\inst8|inst2|control|s3~0_combout\ & (\inst8|inst2|control|s21~q\ & 
-- ((\inst8|inst2|control|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s3~0_combout\,
	datab => \inst8|inst2|control|s21~q\,
	datac => \inst8|inst2|control|s22~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s22~0_combout\);

-- Location: FF_X17_Y12_N7
\inst8|inst2|control|s22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s22~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s22~q\);

-- Location: LCCOMB_X18_Y14_N14
\inst8|inst2|control|s23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s23~0_combout\ = (\inst8|inst2|control|s3~0_combout\ & ((\inst8|inst2|control|s23~q\) # ((\inst8|inst2|control|s22~q\ & \inst8|inst2|control|_~0_combout\)))) # (!\inst8|inst2|control|s3~0_combout\ & (\inst8|inst2|control|s22~q\ & 
-- ((\inst8|inst2|control|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s3~0_combout\,
	datab => \inst8|inst2|control|s22~q\,
	datac => \inst8|inst2|control|s23~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s23~0_combout\);

-- Location: FF_X18_Y14_N15
\inst8|inst2|control|s23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s23~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s23~q\);

-- Location: LCCOMB_X18_Y14_N8
\inst8|inst2|control|s24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s24~0_combout\ = (\inst8|inst2|control|s23~q\ & ((\inst8|inst2|control|_~0_combout\) # ((\inst8|inst2|control|s3~0_combout\ & \inst8|inst2|control|s24~q\)))) # (!\inst8|inst2|control|s23~q\ & (\inst8|inst2|control|s3~0_combout\ & 
-- (\inst8|inst2|control|s24~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s23~q\,
	datab => \inst8|inst2|control|s3~0_combout\,
	datac => \inst8|inst2|control|s24~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s24~0_combout\);

-- Location: FF_X18_Y14_N9
\inst8|inst2|control|s24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s24~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s24~q\);

-- Location: LCCOMB_X16_Y12_N24
\inst8|inst2|control|s25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s25~0_combout\ = (\inst8|inst2|control|s3~0_combout\ & ((\inst8|inst2|control|s25~q\) # ((\inst8|inst2|control|s24~q\ & \inst8|inst2|control|_~0_combout\)))) # (!\inst8|inst2|control|s3~0_combout\ & (\inst8|inst2|control|s24~q\ & 
-- ((\inst8|inst2|control|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s3~0_combout\,
	datab => \inst8|inst2|control|s24~q\,
	datac => \inst8|inst2|control|s25~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s25~0_combout\);

-- Location: FF_X16_Y12_N25
\inst8|inst2|control|s25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s25~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s25~q\);

-- Location: LCCOMB_X16_Y12_N14
\inst8|inst2|control|s26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s26~0_combout\ = (\inst8|inst2|control|_~0_combout\ & ((\inst8|inst2|control|s25~q\) # ((\inst8|inst2|control|s26~q\ & \inst8|inst2|control|s3~0_combout\)))) # (!\inst8|inst2|control|_~0_combout\ & (((\inst8|inst2|control|s26~q\ & 
-- \inst8|inst2|control|s3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|_~0_combout\,
	datab => \inst8|inst2|control|s25~q\,
	datac => \inst8|inst2|control|s26~q\,
	datad => \inst8|inst2|control|s3~0_combout\,
	combout => \inst8|inst2|control|s26~0_combout\);

-- Location: FF_X16_Y12_N15
\inst8|inst2|control|s26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s26~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s26~q\);

-- Location: LCCOMB_X16_Y12_N18
\inst8|inst2|control|s27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s27~0_combout\ = (\inst8|inst2|control|_~0_combout\ & ((\inst8|inst2|control|s26~q\) # ((\inst8|inst2|control|s27~q\ & \inst8|inst2|control|s3~0_combout\)))) # (!\inst8|inst2|control|_~0_combout\ & (((\inst8|inst2|control|s27~q\ & 
-- \inst8|inst2|control|s3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|_~0_combout\,
	datab => \inst8|inst2|control|s26~q\,
	datac => \inst8|inst2|control|s27~q\,
	datad => \inst8|inst2|control|s3~0_combout\,
	combout => \inst8|inst2|control|s27~0_combout\);

-- Location: FF_X16_Y12_N19
\inst8|inst2|control|s27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s27~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s27~q\);

-- Location: LCCOMB_X17_Y10_N6
\inst8|inst2|control|s28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s28~0_combout\ = (\inst8|inst2|control|s27~q\ & ((\inst8|inst2|control|_~0_combout\) # ((\inst8|inst2|control|s3~0_combout\ & \inst8|inst2|control|s28~q\)))) # (!\inst8|inst2|control|s27~q\ & (\inst8|inst2|control|s3~0_combout\ & 
-- (\inst8|inst2|control|s28~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s27~q\,
	datab => \inst8|inst2|control|s3~0_combout\,
	datac => \inst8|inst2|control|s28~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s28~0_combout\);

-- Location: FF_X17_Y10_N7
\inst8|inst2|control|s28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s28~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s28~q\);

-- Location: LCCOMB_X17_Y12_N24
\inst8|inst2|control|s29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s29~0_combout\ = (\inst8|inst2|control|s3~0_combout\ & ((\inst8|inst2|control|s29~q\) # ((\inst8|inst2|control|s28~q\ & \inst8|inst2|control|_~0_combout\)))) # (!\inst8|inst2|control|s3~0_combout\ & (\inst8|inst2|control|s28~q\ & 
-- ((\inst8|inst2|control|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s3~0_combout\,
	datab => \inst8|inst2|control|s28~q\,
	datac => \inst8|inst2|control|s29~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s29~0_combout\);

-- Location: FF_X17_Y12_N25
\inst8|inst2|control|s29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s29~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s29~q\);

-- Location: LCCOMB_X17_Y14_N14
\inst8|inst2|control|s30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s30~0_combout\ = (\inst8|inst2|control|_~0_combout\ & ((\inst8|inst2|control|s29~q\) # ((\inst8|inst2|control|s3~0_combout\ & \inst8|inst2|control|s30~q\)))) # (!\inst8|inst2|control|_~0_combout\ & (\inst8|inst2|control|s3~0_combout\ 
-- & (\inst8|inst2|control|s30~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|_~0_combout\,
	datab => \inst8|inst2|control|s3~0_combout\,
	datac => \inst8|inst2|control|s30~q\,
	datad => \inst8|inst2|control|s29~q\,
	combout => \inst8|inst2|control|s30~0_combout\);

-- Location: FF_X17_Y14_N15
\inst8|inst2|control|s30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s30~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s30~q\);

-- Location: LCCOMB_X16_Y12_N30
\inst8|inst2|control|s31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s31~0_combout\ = (\inst8|inst2|control|_~0_combout\ & ((\inst8|inst2|control|s30~q\) # ((\inst8|inst2|control|s31~q\ & \inst8|inst2|control|s3~0_combout\)))) # (!\inst8|inst2|control|_~0_combout\ & (((\inst8|inst2|control|s31~q\ & 
-- \inst8|inst2|control|s3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|_~0_combout\,
	datab => \inst8|inst2|control|s30~q\,
	datac => \inst8|inst2|control|s31~q\,
	datad => \inst8|inst2|control|s3~0_combout\,
	combout => \inst8|inst2|control|s31~0_combout\);

-- Location: FF_X16_Y12_N31
\inst8|inst2|control|s31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s31~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s31~q\);

-- Location: LCCOMB_X17_Y10_N24
\inst8|inst2|control|s32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s32~0_combout\ = (\inst8|inst2|control|s31~q\ & ((\inst8|inst2|control|_~0_combout\) # ((\inst8|inst2|control|s3~0_combout\ & \inst8|inst2|control|s32~q\)))) # (!\inst8|inst2|control|s31~q\ & (\inst8|inst2|control|s3~0_combout\ & 
-- (\inst8|inst2|control|s32~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s31~q\,
	datab => \inst8|inst2|control|s3~0_combout\,
	datac => \inst8|inst2|control|s32~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s32~0_combout\);

-- Location: FF_X17_Y10_N25
\inst8|inst2|control|s32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s32~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s32~q\);

-- Location: LCCOMB_X17_Y10_N28
\inst8|inst2|control|s33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s33~0_combout\ = (\inst8|inst2|control|s32~q\ & ((\inst8|inst2|control|_~0_combout\) # ((\inst8|inst2|control|s3~0_combout\ & \inst8|inst2|control|s33~q\)))) # (!\inst8|inst2|control|s32~q\ & (\inst8|inst2|control|s3~0_combout\ & 
-- (\inst8|inst2|control|s33~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s32~q\,
	datab => \inst8|inst2|control|s3~0_combout\,
	datac => \inst8|inst2|control|s33~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s33~0_combout\);

-- Location: FF_X17_Y10_N29
\inst8|inst2|control|s33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s33~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s33~q\);

-- Location: LCCOMB_X17_Y10_N2
\inst8|inst2|control|s0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s0~0_combout\ = (\inst8|inst2|control|START~q\ & (((\inst8|inst2|control|s0~q\ & \inst8|inst2|control|s3~0_combout\)))) # (!\inst8|inst2|control|START~q\ & ((\inst1|P3~q\) # ((\inst8|inst2|control|s0~q\ & 
-- \inst8|inst2|control|s3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|START~q\,
	datab => \inst1|P3~q\,
	datac => \inst8|inst2|control|s0~q\,
	datad => \inst8|inst2|control|s3~0_combout\,
	combout => \inst8|inst2|control|s0~0_combout\);

-- Location: FF_X17_Y10_N3
\inst8|inst2|control|s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~clkctrl_outclk\,
	d => \inst8|inst2|control|s0~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s0~q\);

-- Location: LCCOMB_X17_Y10_N16
\inst8|inst2|control|s1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s1~0_combout\ = (\inst8|inst2|control|s91~q\) # (\inst8|inst2|control|s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s91~q\,
	datad => \inst8|inst2|control|s0~q\,
	combout => \inst8|inst2|control|s1~0_combout\);

-- Location: LCCOMB_X17_Y12_N22
\inst8|inst2|control|s1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s1~1_combout\ = (\inst8|inst2|control|s3~0_combout\ & ((\inst8|inst2|control|s1~q\) # ((\inst8|inst2|control|s1~0_combout\ & \inst8|inst2|control|_~0_combout\)))) # (!\inst8|inst2|control|s3~0_combout\ & 
-- (\inst8|inst2|control|s1~0_combout\ & ((\inst8|inst2|control|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s3~0_combout\,
	datab => \inst8|inst2|control|s1~0_combout\,
	datac => \inst8|inst2|control|s1~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s1~1_combout\);

-- Location: FF_X17_Y12_N23
\inst8|inst2|control|s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s1~1_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s1~q\);

-- Location: LCCOMB_X17_Y12_N14
\inst8|inst2|control|s2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s2~0_combout\ = (\inst8|inst2|control|s3~0_combout\ & ((\inst8|inst2|control|s2~q\) # ((\inst8|inst2|control|s1~q\ & \inst8|inst2|control|_~0_combout\)))) # (!\inst8|inst2|control|s3~0_combout\ & (\inst8|inst2|control|s1~q\ & 
-- ((\inst8|inst2|control|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s3~0_combout\,
	datab => \inst8|inst2|control|s1~q\,
	datac => \inst8|inst2|control|s2~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s2~0_combout\);

-- Location: FF_X17_Y12_N15
\inst8|inst2|control|s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s2~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s2~q\);

-- Location: LCCOMB_X18_Y14_N10
\inst8|inst2|control|s3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s3~1_combout\ = (\inst8|inst2|control|s3~0_combout\ & ((\inst8|inst2|control|s3~q\) # ((\inst8|inst2|control|s2~q\ & \inst8|inst2|control|_~0_combout\)))) # (!\inst8|inst2|control|s3~0_combout\ & (\inst8|inst2|control|s2~q\ & 
-- ((\inst8|inst2|control|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s3~0_combout\,
	datab => \inst8|inst2|control|s2~q\,
	datac => \inst8|inst2|control|s3~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s3~1_combout\);

-- Location: FF_X18_Y14_N11
\inst8|inst2|control|s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s3~1_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s3~q\);

-- Location: LCCOMB_X18_Y14_N28
\inst8|inst2|control|s4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s4~0_combout\ = (\inst8|inst2|control|_~0_combout\ & ((\inst8|inst2|control|s3~q\) # ((\inst8|inst2|control|s4~q\ & \inst8|inst2|control|s3~0_combout\)))) # (!\inst8|inst2|control|_~0_combout\ & (((\inst8|inst2|control|s4~q\ & 
-- \inst8|inst2|control|s3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|_~0_combout\,
	datab => \inst8|inst2|control|s3~q\,
	datac => \inst8|inst2|control|s4~q\,
	datad => \inst8|inst2|control|s3~0_combout\,
	combout => \inst8|inst2|control|s4~0_combout\);

-- Location: FF_X18_Y14_N29
\inst8|inst2|control|s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s4~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s4~q\);

-- Location: LCCOMB_X17_Y14_N26
\inst8|inst2|control|s5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s5~0_combout\ = (\inst8|inst2|control|_~0_combout\ & ((\inst8|inst2|control|s4~q\) # ((\inst8|inst2|control|s3~0_combout\ & \inst8|inst2|control|s5~q\)))) # (!\inst8|inst2|control|_~0_combout\ & (\inst8|inst2|control|s3~0_combout\ & 
-- (\inst8|inst2|control|s5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|_~0_combout\,
	datab => \inst8|inst2|control|s3~0_combout\,
	datac => \inst8|inst2|control|s5~q\,
	datad => \inst8|inst2|control|s4~q\,
	combout => \inst8|inst2|control|s5~0_combout\);

-- Location: FF_X17_Y14_N27
\inst8|inst2|control|s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s5~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s5~q\);

-- Location: LCCOMB_X16_Y13_N26
\inst8|inst2|control|s6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s6~0_combout\ = (\inst8|inst2|control|s5~q\ & ((\inst8|inst2|control|_~0_combout\) # ((\inst8|inst2|control|s3~0_combout\ & \inst8|inst2|control|s6~q\)))) # (!\inst8|inst2|control|s5~q\ & (\inst8|inst2|control|s3~0_combout\ & 
-- (\inst8|inst2|control|s6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s5~q\,
	datab => \inst8|inst2|control|s3~0_combout\,
	datac => \inst8|inst2|control|s6~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s6~0_combout\);

-- Location: FF_X16_Y13_N27
\inst8|inst2|control|s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s6~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s6~q\);

-- Location: LCCOMB_X17_Y13_N22
\inst8|inst2|control|s7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s7~0_combout\ = (\inst8|inst2|control|s6~q\ & ((\inst8|inst2|control|_~0_combout\) # ((\inst8|inst2|control|s7~q\ & \inst8|inst2|control|s3~0_combout\)))) # (!\inst8|inst2|control|s6~q\ & (((\inst8|inst2|control|s7~q\ & 
-- \inst8|inst2|control|s3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s6~q\,
	datab => \inst8|inst2|control|_~0_combout\,
	datac => \inst8|inst2|control|s7~q\,
	datad => \inst8|inst2|control|s3~0_combout\,
	combout => \inst8|inst2|control|s7~0_combout\);

-- Location: FF_X17_Y13_N23
\inst8|inst2|control|s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s7~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s7~q\);

-- Location: LCCOMB_X17_Y10_N26
\inst8|inst2|control|s8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s8~0_combout\ = (\inst8|inst2|control|_~0_combout\ & ((\inst8|inst2|control|s7~q\) # ((\inst8|inst2|control|s3~0_combout\ & \inst8|inst2|control|s8~q\)))) # (!\inst8|inst2|control|_~0_combout\ & (\inst8|inst2|control|s3~0_combout\ & 
-- (\inst8|inst2|control|s8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|_~0_combout\,
	datab => \inst8|inst2|control|s3~0_combout\,
	datac => \inst8|inst2|control|s8~q\,
	datad => \inst8|inst2|control|s7~q\,
	combout => \inst8|inst2|control|s8~0_combout\);

-- Location: FF_X17_Y10_N27
\inst8|inst2|control|s8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s8~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s8~q\);

-- Location: LCCOMB_X17_Y12_N2
\inst8|inst2|control|s9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s9~0_combout\ = (\inst8|inst2|control|s3~0_combout\ & ((\inst8|inst2|control|s9~q\) # ((\inst8|inst2|control|s8~q\ & \inst8|inst2|control|_~0_combout\)))) # (!\inst8|inst2|control|s3~0_combout\ & (\inst8|inst2|control|s8~q\ & 
-- ((\inst8|inst2|control|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s3~0_combout\,
	datab => \inst8|inst2|control|s8~q\,
	datac => \inst8|inst2|control|s9~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s9~0_combout\);

-- Location: FF_X17_Y12_N3
\inst8|inst2|control|s9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s9~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s9~q\);

-- Location: LCCOMB_X17_Y14_N8
\inst8|inst2|control|s10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s10~0_combout\ = (\inst8|inst2|control|_~0_combout\ & ((\inst8|inst2|control|s9~q\) # ((\inst8|inst2|control|s3~0_combout\ & \inst8|inst2|control|s10~q\)))) # (!\inst8|inst2|control|_~0_combout\ & (\inst8|inst2|control|s3~0_combout\ & 
-- (\inst8|inst2|control|s10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|_~0_combout\,
	datab => \inst8|inst2|control|s3~0_combout\,
	datac => \inst8|inst2|control|s10~q\,
	datad => \inst8|inst2|control|s9~q\,
	combout => \inst8|inst2|control|s10~0_combout\);

-- Location: FF_X17_Y14_N9
\inst8|inst2|control|s10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s10~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s10~q\);

-- Location: LCCOMB_X16_Y13_N22
\inst8|inst2|control|s11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s11~0_combout\ = (\inst8|inst2|control|s10~q\ & ((\inst8|inst2|control|_~0_combout\) # ((\inst8|inst2|control|s3~0_combout\ & \inst8|inst2|control|s11~q\)))) # (!\inst8|inst2|control|s10~q\ & (\inst8|inst2|control|s3~0_combout\ & 
-- (\inst8|inst2|control|s11~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s10~q\,
	datab => \inst8|inst2|control|s3~0_combout\,
	datac => \inst8|inst2|control|s11~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s11~0_combout\);

-- Location: FF_X16_Y13_N23
\inst8|inst2|control|s11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s11~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s11~q\);

-- Location: LCCOMB_X17_Y13_N10
\inst8|inst2|control|s12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s12~0_combout\ = (\inst8|inst2|control|s11~q\ & ((\inst8|inst2|control|_~0_combout\) # ((\inst8|inst2|control|s12~q\ & \inst8|inst2|control|s3~0_combout\)))) # (!\inst8|inst2|control|s11~q\ & (((\inst8|inst2|control|s12~q\ & 
-- \inst8|inst2|control|s3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s11~q\,
	datab => \inst8|inst2|control|_~0_combout\,
	datac => \inst8|inst2|control|s12~q\,
	datad => \inst8|inst2|control|s3~0_combout\,
	combout => \inst8|inst2|control|s12~0_combout\);

-- Location: FF_X17_Y13_N11
\inst8|inst2|control|s12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s12~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s12~q\);

-- Location: LCCOMB_X17_Y10_N10
\inst8|inst2|control|s13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s13~0_combout\ = (\inst8|inst2|control|s12~q\ & ((\inst8|inst2|control|_~0_combout\) # ((\inst8|inst2|control|s3~0_combout\ & \inst8|inst2|control|s13~q\)))) # (!\inst8|inst2|control|s12~q\ & (\inst8|inst2|control|s3~0_combout\ & 
-- (\inst8|inst2|control|s13~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s12~q\,
	datab => \inst8|inst2|control|s3~0_combout\,
	datac => \inst8|inst2|control|s13~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s13~0_combout\);

-- Location: FF_X17_Y10_N11
\inst8|inst2|control|s13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s13~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s13~q\);

-- Location: LCCOMB_X17_Y10_N20
\inst8|inst2|temp|_~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|_~12_combout\ = (!\inst8|inst2|control|s28~q\ & (!\inst8|inst2|control|s33~q\ & (!\inst8|inst2|control|s13~q\ & !\inst8|inst2|control|s8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s28~q\,
	datab => \inst8|inst2|control|s33~q\,
	datac => \inst8|inst2|control|s13~q\,
	datad => \inst8|inst2|control|s8~q\,
	combout => \inst8|inst2|temp|_~12_combout\);

-- Location: LCCOMB_X18_Y14_N20
\inst8|inst2|temp|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|_~7_combout\ = (!\inst8|inst2|control|s3~q\ & (!\inst8|inst2|control|s56~q\ & (!\inst8|inst2|control|s43~q\ & !\inst8|inst2|control|s23~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s3~q\,
	datab => \inst8|inst2|control|s56~q\,
	datac => \inst8|inst2|control|s43~q\,
	datad => \inst8|inst2|control|s23~q\,
	combout => \inst8|inst2|temp|_~7_combout\);

-- Location: LCCOMB_X18_Y14_N16
\inst8|inst2|temp|_~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|_~21_combout\ = (!\inst8|inst2|control|s24~q\ & (\inst8|inst2|temp|_~7_combout\ & (!\inst8|inst2|control|s4~q\ & \inst8|inst2|control|freq_out[5]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s24~q\,
	datab => \inst8|inst2|temp|_~7_combout\,
	datac => \inst8|inst2|control|s4~q\,
	datad => \inst8|inst2|control|freq_out[5]~17_combout\,
	combout => \inst8|inst2|temp|_~21_combout\);

-- Location: LCCOMB_X17_Y10_N8
\inst8|inst2|temp|_~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|_~17_combout\ = (!\inst8|inst2|control|s63~q\ & (\inst8|inst2|temp|_~11_combout\ & (\inst8|inst2|temp|_~12_combout\ & \inst8|inst2|temp|_~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s63~q\,
	datab => \inst8|inst2|temp|_~11_combout\,
	datac => \inst8|inst2|temp|_~12_combout\,
	datad => \inst8|inst2|temp|_~21_combout\,
	combout => \inst8|inst2|temp|_~17_combout\);

-- Location: LCCOMB_X16_Y10_N18
\inst8|inst2|control|freq_out[9]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|freq_out[9]~25_combout\ = (!\inst8|inst2|control|s66~q\ & (!\inst8|inst2|control|s46~q\ & !\inst8|inst2|control|s59~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s66~q\,
	datac => \inst8|inst2|control|s46~q\,
	datad => \inst8|inst2|control|s59~q\,
	combout => \inst8|inst2|control|freq_out[9]~25_combout\);

-- Location: LCCOMB_X16_Y14_N22
\inst8|inst2|temp|_~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|_~10_combout\ = (!\inst8|inst2|control|s45~q\ & (!\inst8|inst2|control|s65~q\ & !\inst8|inst2|control|s58~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst2|control|s45~q\,
	datac => \inst8|inst2|control|s65~q\,
	datad => \inst8|inst2|control|s58~q\,
	combout => \inst8|inst2|temp|_~10_combout\);

-- Location: LCCOMB_X18_Y14_N4
\inst8|inst2|temp|_~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|_~18_combout\ = (\inst8|inst2|control|freq_out[9]~25_combout\ & (!\inst8|inst2|control|s44~q\ & (\inst8|inst2|temp|_~13_combout\ & \inst8|inst2|temp|_~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|freq_out[9]~25_combout\,
	datab => \inst8|inst2|control|s44~q\,
	datac => \inst8|inst2|temp|_~13_combout\,
	datad => \inst8|inst2|temp|_~10_combout\,
	combout => \inst8|inst2|temp|_~18_combout\);

-- Location: LCCOMB_X13_Y12_N0
\inst8|inst2|temp|_~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|_~20_combout\ = (\inst8|inst2|temp|q~9_combout\ & (\inst8|inst2|temp|q~5_combout\ & (\inst8|inst2|control|START~q\ & \inst8|inst2|temp|_~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|temp|q~9_combout\,
	datab => \inst8|inst2|temp|q~5_combout\,
	datac => \inst8|inst2|control|START~q\,
	datad => \inst8|inst2|temp|_~18_combout\,
	combout => \inst8|inst2|temp|_~20_combout\);

-- Location: LCCOMB_X13_Y12_N24
\inst8|inst2|temp|_~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|_~22_combout\ = (\inst8|inst2|temp|_~15_combout\ & (\inst8|inst2|temp|_~17_combout\ & (!\inst8|inst2|control|s88~q\ & \inst8|inst2|temp|_~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|temp|_~15_combout\,
	datab => \inst8|inst2|temp|_~17_combout\,
	datac => \inst8|inst2|control|s88~q\,
	datad => \inst8|inst2|temp|_~20_combout\,
	combout => \inst8|inst2|temp|_~22_combout\);

-- Location: LCCOMB_X13_Y12_N28
\inst8|inst2|temp|cnt[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|cnt[1]~8_combout\ = (\inst8|inst2|temp|_~22_combout\) # ((\inst8|inst2|temp|q~10_combout\ & \inst8|inst2|temp|op_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst2|temp|q~10_combout\,
	datac => \inst8|inst2|temp|op_1~2_combout\,
	datad => \inst8|inst2|temp|_~22_combout\,
	combout => \inst8|inst2|temp|cnt[1]~8_combout\);

-- Location: FF_X13_Y12_N29
\inst8|inst2|temp|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|temp|cnt[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|temp|cnt\(1));

-- Location: LCCOMB_X14_Y12_N8
\inst8|inst2|temp|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|op_1~4_combout\ = (\inst8|inst2|temp|cnt\(2) & ((GND) # (!\inst8|inst2|temp|op_1~3\))) # (!\inst8|inst2|temp|cnt\(2) & (\inst8|inst2|temp|op_1~3\ $ (GND)))
-- \inst8|inst2|temp|op_1~5\ = CARRY((\inst8|inst2|temp|cnt\(2)) # (!\inst8|inst2|temp|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|temp|cnt\(2),
	datad => VCC,
	cin => \inst8|inst2|temp|op_1~3\,
	combout => \inst8|inst2|temp|op_1~4_combout\,
	cout => \inst8|inst2|temp|op_1~5\);

-- Location: LCCOMB_X13_Y12_N8
\inst8|inst2|temp|op_1~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|op_1~70_combout\ = (\inst8|inst2|temp|op_1~4_combout\ & ((!\inst8|inst2|temp|q~5_combout\) # (!\inst8|inst2|temp|q~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|temp|q~9_combout\,
	datac => \inst8|inst2|temp|q~5_combout\,
	datad => \inst8|inst2|temp|op_1~4_combout\,
	combout => \inst8|inst2|temp|op_1~70_combout\);

-- Location: FF_X13_Y12_N9
\inst8|inst2|temp|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|temp|op_1~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|temp|cnt\(2));

-- Location: LCCOMB_X14_Y12_N10
\inst8|inst2|temp|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|op_1~6_combout\ = (\inst8|inst2|temp|cnt\(3) & (\inst8|inst2|temp|op_1~5\ & VCC)) # (!\inst8|inst2|temp|cnt\(3) & (!\inst8|inst2|temp|op_1~5\))
-- \inst8|inst2|temp|op_1~7\ = CARRY((!\inst8|inst2|temp|cnt\(3) & !\inst8|inst2|temp|op_1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|temp|cnt\(3),
	datad => VCC,
	cin => \inst8|inst2|temp|op_1~5\,
	combout => \inst8|inst2|temp|op_1~6_combout\,
	cout => \inst8|inst2|temp|op_1~7\);

-- Location: LCCOMB_X13_Y12_N2
\inst8|inst2|temp|cnt[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|cnt[3]~7_combout\ = (\inst8|inst2|temp|_~22_combout\) # ((\inst8|inst2|temp|q~10_combout\ & \inst8|inst2|temp|op_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst2|temp|q~10_combout\,
	datac => \inst8|inst2|temp|op_1~6_combout\,
	datad => \inst8|inst2|temp|_~22_combout\,
	combout => \inst8|inst2|temp|cnt[3]~7_combout\);

-- Location: FF_X13_Y12_N3
\inst8|inst2|temp|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|temp|cnt[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|temp|cnt\(3));

-- Location: LCCOMB_X14_Y12_N12
\inst8|inst2|temp|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|op_1~8_combout\ = (\inst8|inst2|temp|cnt\(4) & ((GND) # (!\inst8|inst2|temp|op_1~7\))) # (!\inst8|inst2|temp|cnt\(4) & (\inst8|inst2|temp|op_1~7\ $ (GND)))
-- \inst8|inst2|temp|op_1~9\ = CARRY((\inst8|inst2|temp|cnt\(4)) # (!\inst8|inst2|temp|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|temp|cnt\(4),
	datad => VCC,
	cin => \inst8|inst2|temp|op_1~7\,
	combout => \inst8|inst2|temp|op_1~8_combout\,
	cout => \inst8|inst2|temp|op_1~9\);

-- Location: LCCOMB_X13_Y12_N26
\inst8|inst2|temp|op_1~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|op_1~69_combout\ = (\inst8|inst2|temp|q~10_combout\ & (((\inst8|inst2|temp|op_1~8_combout\)))) # (!\inst8|inst2|temp|q~10_combout\ & (\inst8|inst2|control|START~q\ & ((!\inst8|inst2|temp|_~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|START~q\,
	datab => \inst8|inst2|temp|q~10_combout\,
	datac => \inst8|inst2|temp|op_1~8_combout\,
	datad => \inst8|inst2|temp|_~18_combout\,
	combout => \inst8|inst2|temp|op_1~69_combout\);

-- Location: FF_X13_Y12_N27
\inst8|inst2|temp|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|temp|op_1~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|temp|cnt\(4));

-- Location: LCCOMB_X14_Y12_N14
\inst8|inst2|temp|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|op_1~10_combout\ = (\inst8|inst2|temp|cnt\(5) & (\inst8|inst2|temp|op_1~9\ & VCC)) # (!\inst8|inst2|temp|cnt\(5) & (!\inst8|inst2|temp|op_1~9\))
-- \inst8|inst2|temp|op_1~11\ = CARRY((!\inst8|inst2|temp|cnt\(5) & !\inst8|inst2|temp|op_1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|temp|cnt\(5),
	datad => VCC,
	cin => \inst8|inst2|temp|op_1~9\,
	combout => \inst8|inst2|temp|op_1~10_combout\,
	cout => \inst8|inst2|temp|op_1~11\);

-- Location: FF_X13_Y12_N7
\inst8|inst2|temp|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|temp|cnt[5]~13_combout\,
	asdata => \inst8|inst2|temp|op_1~10_combout\,
	sload => \inst8|inst2|temp|q~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|temp|cnt\(5));

-- Location: LCCOMB_X18_Y12_N4
\inst8|inst2|temp|cnt[13]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|cnt[13]~14_combout\ = (\inst8|inst2|control|START~q\ & (((\inst8|inst2|control|s88~q\) # (!\inst8|inst2|temp|_~17_combout\)) # (!\inst8|inst2|temp|_~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|START~q\,
	datab => \inst8|inst2|temp|_~15_combout\,
	datac => \inst8|inst2|control|s88~q\,
	datad => \inst8|inst2|temp|_~17_combout\,
	combout => \inst8|inst2|temp|cnt[13]~14_combout\);

-- Location: LCCOMB_X14_Y12_N0
\inst8|inst2|temp|cnt[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|cnt[13]~feeder_combout\ = \inst8|inst2|temp|cnt[13]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst2|temp|cnt[13]~14_combout\,
	combout => \inst8|inst2|temp|cnt[13]~feeder_combout\);

-- Location: LCCOMB_X14_Y12_N28
\inst8|inst2|temp|op_1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|op_1~24_combout\ = (\inst8|inst2|temp|cnt\(12) & ((GND) # (!\inst8|inst2|temp|op_1~23\))) # (!\inst8|inst2|temp|cnt\(12) & (\inst8|inst2|temp|op_1~23\ $ (GND)))
-- \inst8|inst2|temp|op_1~25\ = CARRY((\inst8|inst2|temp|cnt\(12)) # (!\inst8|inst2|temp|op_1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst2|temp|cnt\(12),
	datad => VCC,
	cin => \inst8|inst2|temp|op_1~23\,
	combout => \inst8|inst2|temp|op_1~24_combout\,
	cout => \inst8|inst2|temp|op_1~25\);

-- Location: LCCOMB_X14_Y12_N30
\inst8|inst2|temp|op_1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|op_1~26_combout\ = (\inst8|inst2|temp|cnt\(13) & (\inst8|inst2|temp|op_1~25\ & VCC)) # (!\inst8|inst2|temp|cnt\(13) & (!\inst8|inst2|temp|op_1~25\))
-- \inst8|inst2|temp|op_1~27\ = CARRY((!\inst8|inst2|temp|cnt\(13) & !\inst8|inst2|temp|op_1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst2|temp|cnt\(13),
	datad => VCC,
	cin => \inst8|inst2|temp|op_1~25\,
	combout => \inst8|inst2|temp|op_1~26_combout\,
	cout => \inst8|inst2|temp|op_1~27\);

-- Location: FF_X14_Y12_N1
\inst8|inst2|temp|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|temp|cnt[13]~feeder_combout\,
	asdata => \inst8|inst2|temp|op_1~26_combout\,
	sload => \inst8|inst2|temp|q~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|temp|cnt\(13));

-- Location: LCCOMB_X13_Y12_N14
\inst8|inst2|temp|cnt[18]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|cnt[18]~11_combout\ = (!\inst8|inst2|control|s88~q\ & \inst8|inst2|control|START~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s88~q\,
	datad => \inst8|inst2|control|START~q\,
	combout => \inst8|inst2|temp|cnt[18]~11_combout\);

-- Location: LCCOMB_X18_Y12_N10
\inst8|inst2|temp|_~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|_~16_combout\ = (\inst8|inst2|temp|_~15_combout\ & !\inst8|inst2|control|s88~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|temp|_~15_combout\,
	datad => \inst8|inst2|control|s88~q\,
	combout => \inst8|inst2|temp|_~16_combout\);

-- Location: LCCOMB_X14_Y11_N0
\inst8|inst2|temp|op_1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|op_1~28_combout\ = (\inst8|inst2|temp|cnt\(14) & ((GND) # (!\inst8|inst2|temp|op_1~27\))) # (!\inst8|inst2|temp|cnt\(14) & (\inst8|inst2|temp|op_1~27\ $ (GND)))
-- \inst8|inst2|temp|op_1~29\ = CARRY((\inst8|inst2|temp|cnt\(14)) # (!\inst8|inst2|temp|op_1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|temp|cnt\(14),
	datad => VCC,
	cin => \inst8|inst2|temp|op_1~27\,
	combout => \inst8|inst2|temp|op_1~28_combout\,
	cout => \inst8|inst2|temp|op_1~29\);

-- Location: LCCOMB_X18_Y11_N24
\inst8|inst2|control|temp_out[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|temp_out\(22) = (\inst8|inst2|control|s88~q\) # ((!\inst8|inst2|temp|_~17_combout\) # (!\inst8|inst2|temp|_~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst2|control|s88~q\,
	datac => \inst8|inst2|temp|_~18_combout\,
	datad => \inst8|inst2|temp|_~17_combout\,
	combout => \inst8|inst2|control|temp_out\(22));

-- Location: LCCOMB_X19_Y11_N22
\inst8|inst2|temp|op_1~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|op_1~63_combout\ = (\inst8|inst2|temp|q~10_combout\ & (((\inst8|inst2|temp|op_1~28_combout\)))) # (!\inst8|inst2|temp|q~10_combout\ & (\inst8|inst2|control|START~q\ & ((\inst8|inst2|control|temp_out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|temp|q~10_combout\,
	datab => \inst8|inst2|control|START~q\,
	datac => \inst8|inst2|temp|op_1~28_combout\,
	datad => \inst8|inst2|control|temp_out\(22),
	combout => \inst8|inst2|temp|op_1~63_combout\);

-- Location: FF_X19_Y11_N23
\inst8|inst2|temp|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|temp|op_1~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|temp|cnt\(14));

-- Location: LCCOMB_X14_Y11_N2
\inst8|inst2|temp|op_1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|op_1~30_combout\ = (\inst8|inst2|temp|cnt\(15) & (\inst8|inst2|temp|op_1~29\ & VCC)) # (!\inst8|inst2|temp|cnt\(15) & (!\inst8|inst2|temp|op_1~29\))
-- \inst8|inst2|temp|op_1~31\ = CARRY((!\inst8|inst2|temp|cnt\(15) & !\inst8|inst2|temp|op_1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|temp|cnt\(15),
	datad => VCC,
	cin => \inst8|inst2|temp|op_1~29\,
	combout => \inst8|inst2|temp|op_1~30_combout\,
	cout => \inst8|inst2|temp|op_1~31\);

-- Location: LCCOMB_X18_Y12_N20
\inst8|inst2|temp|_~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|_~19_combout\ = (\inst8|inst2|control|START~q\ & (!\inst8|inst2|temp|q~10_combout\ & \inst8|inst2|temp|_~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|START~q\,
	datac => \inst8|inst2|temp|q~10_combout\,
	datad => \inst8|inst2|temp|_~17_combout\,
	combout => \inst8|inst2|temp|_~19_combout\);

-- Location: LCCOMB_X19_Y11_N28
\inst8|inst2|temp|cnt[15]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|cnt[15]~5_combout\ = (\inst8|inst2|temp|_~18_combout\ & ((\inst8|inst2|temp|_~19_combout\) # ((\inst8|inst2|temp|op_1~30_combout\ & \inst8|inst2|temp|q~10_combout\)))) # (!\inst8|inst2|temp|_~18_combout\ & 
-- (\inst8|inst2|temp|op_1~30_combout\ & (\inst8|inst2|temp|q~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|temp|_~18_combout\,
	datab => \inst8|inst2|temp|op_1~30_combout\,
	datac => \inst8|inst2|temp|q~10_combout\,
	datad => \inst8|inst2|temp|_~19_combout\,
	combout => \inst8|inst2|temp|cnt[15]~5_combout\);

-- Location: FF_X19_Y11_N29
\inst8|inst2|temp|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|temp|cnt[15]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|temp|cnt\(15));

-- Location: LCCOMB_X14_Y11_N4
\inst8|inst2|temp|op_1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|op_1~32_combout\ = (\inst8|inst2|temp|cnt\(16) & ((GND) # (!\inst8|inst2|temp|op_1~31\))) # (!\inst8|inst2|temp|cnt\(16) & (\inst8|inst2|temp|op_1~31\ $ (GND)))
-- \inst8|inst2|temp|op_1~33\ = CARRY((\inst8|inst2|temp|cnt\(16)) # (!\inst8|inst2|temp|op_1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst2|temp|cnt\(16),
	datad => VCC,
	cin => \inst8|inst2|temp|op_1~31\,
	combout => \inst8|inst2|temp|op_1~32_combout\,
	cout => \inst8|inst2|temp|op_1~33\);

-- Location: LCCOMB_X18_Y12_N16
\inst8|inst2|temp|cnt[16]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|cnt[16]~4_combout\ = (\inst8|inst2|temp|q~10_combout\ & (((\inst8|inst2|temp|op_1~32_combout\)))) # (!\inst8|inst2|temp|q~10_combout\ & (\inst8|inst2|temp|_~16_combout\ & (\inst8|inst2|control|START~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|temp|_~16_combout\,
	datab => \inst8|inst2|temp|q~10_combout\,
	datac => \inst8|inst2|control|START~q\,
	datad => \inst8|inst2|temp|op_1~32_combout\,
	combout => \inst8|inst2|temp|cnt[16]~4_combout\);

-- Location: FF_X18_Y12_N17
\inst8|inst2|temp|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|temp|cnt[16]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|temp|cnt\(16));

-- Location: LCCOMB_X14_Y11_N6
\inst8|inst2|temp|op_1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|op_1~34_combout\ = (\inst8|inst2|temp|cnt\(17) & (\inst8|inst2|temp|op_1~33\ & VCC)) # (!\inst8|inst2|temp|cnt\(17) & (!\inst8|inst2|temp|op_1~33\))
-- \inst8|inst2|temp|op_1~35\ = CARRY((!\inst8|inst2|temp|cnt\(17) & !\inst8|inst2|temp|op_1~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|temp|cnt\(17),
	datad => VCC,
	cin => \inst8|inst2|temp|op_1~33\,
	combout => \inst8|inst2|temp|op_1~34_combout\,
	cout => \inst8|inst2|temp|op_1~35\);

-- Location: LCCOMB_X19_Y11_N14
\inst8|inst2|temp|cnt[17]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|cnt[17]~3_combout\ = (\inst8|inst2|temp|q~10_combout\ & (((\inst8|inst2|temp|op_1~34_combout\)))) # (!\inst8|inst2|temp|q~10_combout\ & (\inst8|inst2|temp|_~17_combout\ & ((\inst8|inst2|control|START~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|temp|_~17_combout\,
	datab => \inst8|inst2|temp|op_1~34_combout\,
	datac => \inst8|inst2|control|START~q\,
	datad => \inst8|inst2|temp|q~10_combout\,
	combout => \inst8|inst2|temp|cnt[17]~3_combout\);

-- Location: FF_X19_Y11_N15
\inst8|inst2|temp|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|temp|cnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|temp|cnt\(17));

-- Location: LCCOMB_X14_Y11_N8
\inst8|inst2|temp|op_1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|op_1~36_combout\ = (\inst8|inst2|temp|cnt\(18) & ((GND) # (!\inst8|inst2|temp|op_1~35\))) # (!\inst8|inst2|temp|cnt\(18) & (\inst8|inst2|temp|op_1~35\ $ (GND)))
-- \inst8|inst2|temp|op_1~37\ = CARRY((\inst8|inst2|temp|cnt\(18)) # (!\inst8|inst2|temp|op_1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst2|temp|cnt\(18),
	datad => VCC,
	cin => \inst8|inst2|temp|op_1~35\,
	combout => \inst8|inst2|temp|op_1~36_combout\,
	cout => \inst8|inst2|temp|op_1~37\);

-- Location: FF_X13_Y12_N15
\inst8|inst2|temp|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|temp|cnt[18]~11_combout\,
	asdata => \inst8|inst2|temp|op_1~36_combout\,
	sload => \inst8|inst2|temp|q~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|temp|cnt\(18));

-- Location: LCCOMB_X13_Y12_N18
\inst8|inst2|temp|q~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|q~8_combout\ = (!\inst8|inst2|temp|cnt\(5) & (!\inst8|inst2|temp|cnt\(13) & (!\inst8|inst2|temp|cnt\(11) & !\inst8|inst2|temp|cnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|temp|cnt\(5),
	datab => \inst8|inst2|temp|cnt\(13),
	datac => \inst8|inst2|temp|cnt\(11),
	datad => \inst8|inst2|temp|cnt\(18),
	combout => \inst8|inst2|temp|q~8_combout\);

-- Location: LCCOMB_X14_Y12_N16
\inst8|inst2|temp|op_1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|op_1~12_combout\ = (\inst8|inst2|temp|cnt\(6) & ((GND) # (!\inst8|inst2|temp|op_1~11\))) # (!\inst8|inst2|temp|cnt\(6) & (\inst8|inst2|temp|op_1~11\ $ (GND)))
-- \inst8|inst2|temp|op_1~13\ = CARRY((\inst8|inst2|temp|cnt\(6)) # (!\inst8|inst2|temp|op_1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst2|temp|cnt\(6),
	datad => VCC,
	cin => \inst8|inst2|temp|op_1~11\,
	combout => \inst8|inst2|temp|op_1~12_combout\,
	cout => \inst8|inst2|temp|op_1~13\);

-- Location: LCCOMB_X14_Y12_N2
\inst8|inst2|temp|op_1~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|op_1~68_combout\ = (\inst8|inst2|temp|q~10_combout\ & (((\inst8|inst2|temp|op_1~12_combout\)))) # (!\inst8|inst2|temp|q~10_combout\ & (\inst8|inst2|control|START~q\ & ((!\inst8|inst2|temp|_~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|START~q\,
	datab => \inst8|inst2|temp|op_1~12_combout\,
	datac => \inst8|inst2|temp|_~17_combout\,
	datad => \inst8|inst2|temp|q~10_combout\,
	combout => \inst8|inst2|temp|op_1~68_combout\);

-- Location: FF_X14_Y12_N3
\inst8|inst2|temp|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|temp|op_1~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|temp|cnt\(6));

-- Location: LCCOMB_X14_Y12_N18
\inst8|inst2|temp|op_1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|op_1~14_combout\ = (\inst8|inst2|temp|cnt\(7) & (\inst8|inst2|temp|op_1~13\ & VCC)) # (!\inst8|inst2|temp|cnt\(7) & (!\inst8|inst2|temp|op_1~13\))
-- \inst8|inst2|temp|op_1~15\ = CARRY((!\inst8|inst2|temp|cnt\(7) & !\inst8|inst2|temp|op_1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst2|temp|cnt\(7),
	datad => VCC,
	cin => \inst8|inst2|temp|op_1~13\,
	combout => \inst8|inst2|temp|op_1~14_combout\,
	cout => \inst8|inst2|temp|op_1~15\);

-- Location: LCCOMB_X13_Y12_N4
\inst8|inst2|temp|op_1~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|op_1~67_combout\ = (\inst8|inst2|temp|q~5_combout\ & ((\inst8|inst2|temp|q~9_combout\ & (\inst8|inst2|control|s88~q\)) # (!\inst8|inst2|temp|q~9_combout\ & ((\inst8|inst2|temp|op_1~14_combout\))))) # (!\inst8|inst2|temp|q~5_combout\ & 
-- (((\inst8|inst2|temp|op_1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s88~q\,
	datab => \inst8|inst2|temp|op_1~14_combout\,
	datac => \inst8|inst2|temp|q~5_combout\,
	datad => \inst8|inst2|temp|q~9_combout\,
	combout => \inst8|inst2|temp|op_1~67_combout\);

-- Location: FF_X13_Y12_N5
\inst8|inst2|temp|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|temp|op_1~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|temp|cnt\(7));

-- Location: LCCOMB_X13_Y12_N22
\inst8|inst2|temp|q~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|q~6_combout\ = (!\inst8|inst2|temp|cnt\(4) & (!\inst8|inst2|temp|cnt\(3) & (!\inst8|inst2|temp|cnt\(6) & !\inst8|inst2|temp|cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|temp|cnt\(4),
	datab => \inst8|inst2|temp|cnt\(3),
	datac => \inst8|inst2|temp|cnt\(6),
	datad => \inst8|inst2|temp|cnt\(7),
	combout => \inst8|inst2|temp|q~6_combout\);

-- Location: LCCOMB_X13_Y12_N20
\inst8|inst2|temp|q~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|q~10_combout\ = (((!\inst8|inst2|temp|q~6_combout\) # (!\inst8|inst2|temp|q~5_combout\)) # (!\inst8|inst2|temp|q~8_combout\)) # (!\inst8|inst2|temp|q~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|temp|q~7_combout\,
	datab => \inst8|inst2|temp|q~8_combout\,
	datac => \inst8|inst2|temp|q~5_combout\,
	datad => \inst8|inst2|temp|q~6_combout\,
	combout => \inst8|inst2|temp|q~10_combout\);

-- Location: LCCOMB_X13_Y12_N12
\inst8|inst2|temp|cnt[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|cnt[0]~9_combout\ = (\inst8|inst2|temp|_~22_combout\) # ((\inst8|inst2|temp|q~10_combout\ & !\inst8|inst2|temp|cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst2|temp|q~10_combout\,
	datac => \inst8|inst2|temp|cnt\(0),
	datad => \inst8|inst2|temp|_~22_combout\,
	combout => \inst8|inst2|temp|cnt[0]~9_combout\);

-- Location: FF_X13_Y12_N13
\inst8|inst2|temp|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|temp|cnt[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|temp|cnt\(0));

-- Location: LCCOMB_X13_Y12_N16
\inst8|inst2|temp|cnt[23]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|cnt[23]~10_combout\ = (\inst8|inst2|control|START~q\ & ((\inst8|inst2|control|s88~q\) # (!\inst8|inst2|temp|_~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s88~q\,
	datab => \inst8|inst2|control|START~q\,
	datad => \inst8|inst2|temp|_~15_combout\,
	combout => \inst8|inst2|temp|cnt[23]~10_combout\);

-- Location: LCCOMB_X14_Y11_N10
\inst8|inst2|temp|op_1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|op_1~38_combout\ = (\inst8|inst2|temp|cnt\(19) & (\inst8|inst2|temp|op_1~37\ & VCC)) # (!\inst8|inst2|temp|cnt\(19) & (!\inst8|inst2|temp|op_1~37\))
-- \inst8|inst2|temp|op_1~39\ = CARRY((!\inst8|inst2|temp|cnt\(19) & !\inst8|inst2|temp|op_1~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|temp|cnt\(19),
	datad => VCC,
	cin => \inst8|inst2|temp|op_1~37\,
	combout => \inst8|inst2|temp|op_1~38_combout\,
	cout => \inst8|inst2|temp|op_1~39\);

-- Location: LCCOMB_X19_Y11_N12
\inst8|inst2|temp|op_1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|op_1~62_combout\ = (\inst8|inst2|temp|q~9_combout\ & ((\inst8|inst2|temp|q~5_combout\ & (\inst8|inst2|control|START~q\)) # (!\inst8|inst2|temp|q~5_combout\ & ((\inst8|inst2|temp|op_1~38_combout\))))) # (!\inst8|inst2|temp|q~9_combout\ & 
-- (((\inst8|inst2|temp|op_1~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|temp|q~9_combout\,
	datab => \inst8|inst2|temp|q~5_combout\,
	datac => \inst8|inst2|control|START~q\,
	datad => \inst8|inst2|temp|op_1~38_combout\,
	combout => \inst8|inst2|temp|op_1~62_combout\);

-- Location: FF_X19_Y11_N13
\inst8|inst2|temp|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|temp|op_1~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|temp|cnt\(19));

-- Location: LCCOMB_X14_Y11_N12
\inst8|inst2|temp|op_1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|op_1~40_combout\ = (\inst8|inst2|temp|cnt\(20) & ((GND) # (!\inst8|inst2|temp|op_1~39\))) # (!\inst8|inst2|temp|cnt\(20) & (\inst8|inst2|temp|op_1~39\ $ (GND)))
-- \inst8|inst2|temp|op_1~41\ = CARRY((\inst8|inst2|temp|cnt\(20)) # (!\inst8|inst2|temp|op_1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|temp|cnt\(20),
	datad => VCC,
	cin => \inst8|inst2|temp|op_1~39\,
	combout => \inst8|inst2|temp|op_1~40_combout\,
	cout => \inst8|inst2|temp|op_1~41\);

-- Location: LCCOMB_X19_Y11_N20
\inst8|inst2|temp|op_1~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|op_1~61_combout\ = (\inst8|inst2|temp|q~10_combout\ & ((\inst8|inst2|temp|op_1~40_combout\))) # (!\inst8|inst2|temp|q~10_combout\ & (\inst8|inst2|control|START~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst2|temp|q~10_combout\,
	datac => \inst8|inst2|control|START~q\,
	datad => \inst8|inst2|temp|op_1~40_combout\,
	combout => \inst8|inst2|temp|op_1~61_combout\);

-- Location: FF_X19_Y11_N21
\inst8|inst2|temp|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|temp|op_1~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|temp|cnt\(20));

-- Location: LCCOMB_X14_Y11_N14
\inst8|inst2|temp|op_1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|op_1~42_combout\ = (\inst8|inst2|temp|cnt\(21) & (\inst8|inst2|temp|op_1~41\ & VCC)) # (!\inst8|inst2|temp|cnt\(21) & (!\inst8|inst2|temp|op_1~41\))
-- \inst8|inst2|temp|op_1~43\ = CARRY((!\inst8|inst2|temp|cnt\(21) & !\inst8|inst2|temp|op_1~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst2|temp|cnt\(21),
	datad => VCC,
	cin => \inst8|inst2|temp|op_1~41\,
	combout => \inst8|inst2|temp|op_1~42_combout\,
	cout => \inst8|inst2|temp|op_1~43\);

-- Location: LCCOMB_X19_Y11_N8
\inst8|inst2|temp|cnt[21]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|cnt[21]~2_combout\ = (\inst8|inst2|temp|q~10_combout\ & (((\inst8|inst2|temp|op_1~42_combout\)))) # (!\inst8|inst2|temp|q~10_combout\ & (\inst8|inst2|temp|_~18_combout\ & ((\inst8|inst2|control|START~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|temp|_~18_combout\,
	datab => \inst8|inst2|temp|op_1~42_combout\,
	datac => \inst8|inst2|control|START~q\,
	datad => \inst8|inst2|temp|q~10_combout\,
	combout => \inst8|inst2|temp|cnt[21]~2_combout\);

-- Location: FF_X19_Y11_N9
\inst8|inst2|temp|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|temp|cnt[21]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|temp|cnt\(21));

-- Location: LCCOMB_X14_Y11_N16
\inst8|inst2|temp|op_1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|op_1~44_combout\ = (\inst8|inst2|temp|cnt\(22) & ((GND) # (!\inst8|inst2|temp|op_1~43\))) # (!\inst8|inst2|temp|cnt\(22) & (\inst8|inst2|temp|op_1~43\ $ (GND)))
-- \inst8|inst2|temp|op_1~45\ = CARRY((\inst8|inst2|temp|cnt\(22)) # (!\inst8|inst2|temp|op_1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst2|temp|cnt\(22),
	datad => VCC,
	cin => \inst8|inst2|temp|op_1~43\,
	combout => \inst8|inst2|temp|op_1~44_combout\,
	cout => \inst8|inst2|temp|op_1~45\);

-- Location: LCCOMB_X19_Y11_N4
\inst8|inst2|temp|op_1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|op_1~60_combout\ = (\inst8|inst2|temp|q~10_combout\ & (((\inst8|inst2|temp|op_1~44_combout\)))) # (!\inst8|inst2|temp|q~10_combout\ & (\inst8|inst2|control|START~q\ & ((\inst8|inst2|control|temp_out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|START~q\,
	datab => \inst8|inst2|temp|q~10_combout\,
	datac => \inst8|inst2|temp|op_1~44_combout\,
	datad => \inst8|inst2|control|temp_out\(22),
	combout => \inst8|inst2|temp|op_1~60_combout\);

-- Location: FF_X19_Y11_N5
\inst8|inst2|temp|cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|temp|op_1~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|temp|cnt\(22));

-- Location: LCCOMB_X14_Y11_N18
\inst8|inst2|temp|op_1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|op_1~46_combout\ = (\inst8|inst2|temp|cnt\(23) & (\inst8|inst2|temp|op_1~45\ & VCC)) # (!\inst8|inst2|temp|cnt\(23) & (!\inst8|inst2|temp|op_1~45\))
-- \inst8|inst2|temp|op_1~47\ = CARRY((!\inst8|inst2|temp|cnt\(23) & !\inst8|inst2|temp|op_1~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst2|temp|cnt\(23),
	datad => VCC,
	cin => \inst8|inst2|temp|op_1~45\,
	combout => \inst8|inst2|temp|op_1~46_combout\,
	cout => \inst8|inst2|temp|op_1~47\);

-- Location: FF_X13_Y12_N17
\inst8|inst2|temp|cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|temp|cnt[23]~10_combout\,
	asdata => \inst8|inst2|temp|op_1~46_combout\,
	sload => \inst8|inst2|temp|q~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|temp|cnt\(23));

-- Location: LCCOMB_X13_Y12_N30
\inst8|inst2|temp|q~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|q~7_combout\ = (!\inst8|inst2|temp|cnt\(0) & (!\inst8|inst2|temp|cnt\(1) & (!\inst8|inst2|temp|cnt\(23) & !\inst8|inst2|temp|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|temp|cnt\(0),
	datab => \inst8|inst2|temp|cnt\(1),
	datac => \inst8|inst2|temp|cnt\(23),
	datad => \inst8|inst2|temp|cnt\(2),
	combout => \inst8|inst2|temp|q~7_combout\);

-- Location: LCCOMB_X13_Y12_N10
\inst8|inst2|temp|q~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|q~9_combout\ = (\inst8|inst2|temp|q~7_combout\ & (\inst8|inst2|temp|q~6_combout\ & \inst8|inst2|temp|q~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|temp|q~7_combout\,
	datac => \inst8|inst2|temp|q~6_combout\,
	datad => \inst8|inst2|temp|q~8_combout\,
	combout => \inst8|inst2|temp|q~9_combout\);

-- Location: LCCOMB_X16_Y12_N10
\inst8|inst2|control|s3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s3~0_combout\ = (!\inst1|P2~q\ & (((!\inst8|inst2|temp|q~5_combout\) # (!\inst8|inst2|temp|q~9_combout\)) # (!\inst1|P3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|P2~q\,
	datab => \inst1|P3~q\,
	datac => \inst8|inst2|temp|q~9_combout\,
	datad => \inst8|inst2|temp|q~5_combout\,
	combout => \inst8|inst2|control|s3~0_combout\);

-- Location: LCCOMB_X16_Y10_N16
\inst8|inst2|control|s14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s14~0_combout\ = (\inst8|inst2|control|s3~0_combout\ & ((\inst8|inst2|control|s14~q\) # ((\inst8|inst2|control|s13~q\ & \inst8|inst2|control|_~0_combout\)))) # (!\inst8|inst2|control|s3~0_combout\ & (\inst8|inst2|control|s13~q\ & 
-- ((\inst8|inst2|control|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s3~0_combout\,
	datab => \inst8|inst2|control|s13~q\,
	datac => \inst8|inst2|control|s14~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s14~0_combout\);

-- Location: FF_X16_Y10_N17
\inst8|inst2|control|s14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s14~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s14~q\);

-- Location: LCCOMB_X16_Y13_N28
\inst8|inst2|control|s34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s34~0_combout\ = (\inst8|inst2|control|s33~q\ & ((\inst8|inst2|control|_~0_combout\) # ((\inst8|inst2|control|s3~0_combout\ & \inst8|inst2|control|s34~q\)))) # (!\inst8|inst2|control|s33~q\ & (\inst8|inst2|control|s3~0_combout\ & 
-- (\inst8|inst2|control|s34~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s33~q\,
	datab => \inst8|inst2|control|s3~0_combout\,
	datac => \inst8|inst2|control|s34~q\,
	datad => \inst8|inst2|control|_~0_combout\,
	combout => \inst8|inst2|control|s34~0_combout\);

-- Location: FF_X16_Y13_N29
\inst8|inst2|control|s34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s34~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s34~q\);

-- Location: LCCOMB_X16_Y13_N30
\inst8|inst2|temp|_~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|_~9_combout\ = (!\inst8|inst2|control|s14~q\ & (!\inst8|inst2|control|s9~q\ & (!\inst8|inst2|control|s29~q\ & !\inst8|inst2|control|s34~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s14~q\,
	datab => \inst8|inst2|control|s9~q\,
	datac => \inst8|inst2|control|s29~q\,
	datad => \inst8|inst2|control|s34~q\,
	combout => \inst8|inst2|temp|_~9_combout\);

-- Location: LCCOMB_X16_Y12_N4
\inst8|inst2|temp|_~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|_~14_combout\ = (!\inst8|inst2|control|s90~q\ & (!\inst8|inst2|control|s19~q\ & (!\inst8|inst2|control|s39~q\ & !\inst8|inst2|control|s61~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s90~q\,
	datab => \inst8|inst2|control|s19~q\,
	datac => \inst8|inst2|control|s39~q\,
	datad => \inst8|inst2|control|s61~q\,
	combout => \inst8|inst2|temp|_~14_combout\);

-- Location: LCCOMB_X16_Y11_N24
\inst8|inst2|control|freq_out[15]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|freq_out[15]~10_combout\ = (!\inst8|inst2|control|s55~q\ & !\inst8|inst2|control|s75~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst2|control|s55~q\,
	datad => \inst8|inst2|control|s75~q\,
	combout => \inst8|inst2|control|freq_out[15]~10_combout\);

-- Location: LCCOMB_X16_Y12_N2
\inst8|inst2|temp|_~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|_~15_combout\ = (\inst8|inst2|temp|_~9_combout\ & (\inst8|inst2|temp|_~6_combout\ & (\inst8|inst2|temp|_~14_combout\ & \inst8|inst2|control|freq_out[15]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|temp|_~9_combout\,
	datab => \inst8|inst2|temp|_~6_combout\,
	datac => \inst8|inst2|temp|_~14_combout\,
	datad => \inst8|inst2|control|freq_out[15]~10_combout\,
	combout => \inst8|inst2|temp|_~15_combout\);

-- Location: LCCOMB_X18_Y12_N6
\inst8|inst2|temp|cnt[11]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|cnt[11]~12_combout\ = (\inst8|inst2|control|START~q\ & (((!\inst8|inst2|temp|_~17_combout\) # (!\inst8|inst2|temp|_~18_combout\)) # (!\inst8|inst2|temp|_~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|temp|_~15_combout\,
	datab => \inst8|inst2|temp|_~18_combout\,
	datac => \inst8|inst2|temp|_~17_combout\,
	datad => \inst8|inst2|control|START~q\,
	combout => \inst8|inst2|temp|cnt[11]~12_combout\);

-- Location: LCCOMB_X18_Y12_N22
\inst8|inst2|temp|cnt[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|cnt[11]~feeder_combout\ = \inst8|inst2|temp|cnt[11]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst2|temp|cnt[11]~12_combout\,
	combout => \inst8|inst2|temp|cnt[11]~feeder_combout\);

-- Location: LCCOMB_X14_Y12_N20
\inst8|inst2|temp|op_1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|op_1~16_combout\ = (\inst8|inst2|temp|cnt\(8) & ((GND) # (!\inst8|inst2|temp|op_1~15\))) # (!\inst8|inst2|temp|cnt\(8) & (\inst8|inst2|temp|op_1~15\ $ (GND)))
-- \inst8|inst2|temp|op_1~17\ = CARRY((\inst8|inst2|temp|cnt\(8)) # (!\inst8|inst2|temp|op_1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst2|temp|cnt\(8),
	datad => VCC,
	cin => \inst8|inst2|temp|op_1~15\,
	combout => \inst8|inst2|temp|op_1~16_combout\,
	cout => \inst8|inst2|temp|op_1~17\);

-- Location: LCCOMB_X19_Y11_N24
\inst8|inst2|temp|op_1~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|op_1~66_combout\ = (\inst8|inst2|temp|op_1~16_combout\ & ((!\inst8|inst2|temp|q~9_combout\) # (!\inst8|inst2|temp|q~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst2|temp|q~5_combout\,
	datac => \inst8|inst2|temp|op_1~16_combout\,
	datad => \inst8|inst2|temp|q~9_combout\,
	combout => \inst8|inst2|temp|op_1~66_combout\);

-- Location: FF_X19_Y11_N25
\inst8|inst2|temp|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|temp|op_1~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|temp|cnt\(8));

-- Location: LCCOMB_X14_Y12_N22
\inst8|inst2|temp|op_1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|op_1~18_combout\ = (\inst8|inst2|temp|cnt\(9) & (\inst8|inst2|temp|op_1~17\ & VCC)) # (!\inst8|inst2|temp|cnt\(9) & (!\inst8|inst2|temp|op_1~17\))
-- \inst8|inst2|temp|op_1~19\ = CARRY((!\inst8|inst2|temp|cnt\(9) & !\inst8|inst2|temp|op_1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst2|temp|cnt\(9),
	datad => VCC,
	cin => \inst8|inst2|temp|op_1~17\,
	combout => \inst8|inst2|temp|op_1~18_combout\,
	cout => \inst8|inst2|temp|op_1~19\);

-- Location: LCCOMB_X19_Y11_N0
\inst8|inst2|temp|op_1~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|op_1~65_combout\ = (\inst8|inst2|temp|q~10_combout\ & (((\inst8|inst2|temp|op_1~18_combout\)))) # (!\inst8|inst2|temp|q~10_combout\ & (!\inst8|inst2|temp|_~18_combout\ & (\inst8|inst2|control|START~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|temp|_~18_combout\,
	datab => \inst8|inst2|control|START~q\,
	datac => \inst8|inst2|temp|op_1~18_combout\,
	datad => \inst8|inst2|temp|q~10_combout\,
	combout => \inst8|inst2|temp|op_1~65_combout\);

-- Location: FF_X19_Y11_N1
\inst8|inst2|temp|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|temp|op_1~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|temp|cnt\(9));

-- Location: LCCOMB_X14_Y12_N24
\inst8|inst2|temp|op_1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|op_1~20_combout\ = (\inst8|inst2|temp|cnt\(10) & ((GND) # (!\inst8|inst2|temp|op_1~19\))) # (!\inst8|inst2|temp|cnt\(10) & (\inst8|inst2|temp|op_1~19\ $ (GND)))
-- \inst8|inst2|temp|op_1~21\ = CARRY((\inst8|inst2|temp|cnt\(10)) # (!\inst8|inst2|temp|op_1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|temp|cnt\(10),
	datad => VCC,
	cin => \inst8|inst2|temp|op_1~19\,
	combout => \inst8|inst2|temp|op_1~20_combout\,
	cout => \inst8|inst2|temp|op_1~21\);

-- Location: LCCOMB_X19_Y11_N26
\inst8|inst2|temp|cnt[10]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|cnt[10]~6_combout\ = (\inst8|inst2|control|s88~q\ & (\inst8|inst2|temp|q~10_combout\ & (\inst8|inst2|temp|op_1~20_combout\))) # (!\inst8|inst2|control|s88~q\ & ((\inst8|inst2|temp|_~19_combout\) # ((\inst8|inst2|temp|q~10_combout\ & 
-- \inst8|inst2|temp|op_1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s88~q\,
	datab => \inst8|inst2|temp|q~10_combout\,
	datac => \inst8|inst2|temp|op_1~20_combout\,
	datad => \inst8|inst2|temp|_~19_combout\,
	combout => \inst8|inst2|temp|cnt[10]~6_combout\);

-- Location: FF_X19_Y11_N27
\inst8|inst2|temp|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|temp|cnt[10]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|temp|cnt\(10));

-- Location: LCCOMB_X14_Y12_N26
\inst8|inst2|temp|op_1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|op_1~22_combout\ = (\inst8|inst2|temp|cnt\(11) & (\inst8|inst2|temp|op_1~21\ & VCC)) # (!\inst8|inst2|temp|cnt\(11) & (!\inst8|inst2|temp|op_1~21\))
-- \inst8|inst2|temp|op_1~23\ = CARRY((!\inst8|inst2|temp|cnt\(11) & !\inst8|inst2|temp|op_1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst2|temp|cnt\(11),
	datad => VCC,
	cin => \inst8|inst2|temp|op_1~21\,
	combout => \inst8|inst2|temp|op_1~22_combout\,
	cout => \inst8|inst2|temp|op_1~23\);

-- Location: FF_X18_Y12_N23
\inst8|inst2|temp|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|temp|cnt[11]~feeder_combout\,
	asdata => \inst8|inst2|temp|op_1~22_combout\,
	sload => \inst8|inst2|temp|q~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|temp|cnt\(11));

-- Location: LCCOMB_X19_Y11_N6
\inst8|inst2|temp|op_1~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|op_1~64_combout\ = (\inst8|inst2|temp|q~5_combout\ & ((\inst8|inst2|temp|q~9_combout\ & ((\inst8|inst2|control|START~q\))) # (!\inst8|inst2|temp|q~9_combout\ & (\inst8|inst2|temp|op_1~24_combout\)))) # (!\inst8|inst2|temp|q~5_combout\ & 
-- (\inst8|inst2|temp|op_1~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|temp|op_1~24_combout\,
	datab => \inst8|inst2|temp|q~5_combout\,
	datac => \inst8|inst2|control|START~q\,
	datad => \inst8|inst2|temp|q~9_combout\,
	combout => \inst8|inst2|temp|op_1~64_combout\);

-- Location: FF_X19_Y11_N7
\inst8|inst2|temp|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|temp|op_1~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|temp|cnt\(12));

-- Location: LCCOMB_X19_Y11_N10
\inst8|inst2|temp|q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|q~4_combout\ = (!\inst8|inst2|temp|cnt\(12) & (!\inst8|inst2|temp|cnt\(9) & (!\inst8|inst2|temp|cnt\(8) & !\inst8|inst2|temp|cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|temp|cnt\(12),
	datab => \inst8|inst2|temp|cnt\(9),
	datac => \inst8|inst2|temp|cnt\(8),
	datad => \inst8|inst2|temp|cnt\(10),
	combout => \inst8|inst2|temp|q~4_combout\);

-- Location: LCCOMB_X19_Y11_N18
\inst8|inst2|temp|q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|q~3_combout\ = (!\inst8|inst2|temp|cnt\(14) & (!\inst8|inst2|temp|cnt\(16) & (!\inst8|inst2|temp|cnt\(17) & !\inst8|inst2|temp|cnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|temp|cnt\(14),
	datab => \inst8|inst2|temp|cnt\(16),
	datac => \inst8|inst2|temp|cnt\(17),
	datad => \inst8|inst2|temp|cnt\(15),
	combout => \inst8|inst2|temp|q~3_combout\);

-- Location: LCCOMB_X19_Y11_N30
\inst8|inst2|temp|q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|q~2_combout\ = (!\inst8|inst2|temp|cnt\(19) & (!\inst8|inst2|temp|cnt\(20) & (!\inst8|inst2|temp|cnt\(21) & !\inst8|inst2|temp|cnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|temp|cnt\(19),
	datab => \inst8|inst2|temp|cnt\(20),
	datac => \inst8|inst2|temp|cnt\(21),
	datad => \inst8|inst2|temp|cnt\(22),
	combout => \inst8|inst2|temp|q~2_combout\);

-- Location: LCCOMB_X14_Y11_N20
\inst8|inst2|temp|op_1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|op_1~48_combout\ = (\inst8|inst2|temp|cnt\(24) & ((GND) # (!\inst8|inst2|temp|op_1~47\))) # (!\inst8|inst2|temp|cnt\(24) & (\inst8|inst2|temp|op_1~47\ $ (GND)))
-- \inst8|inst2|temp|op_1~49\ = CARRY((\inst8|inst2|temp|cnt\(24)) # (!\inst8|inst2|temp|op_1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|temp|cnt\(24),
	datad => VCC,
	cin => \inst8|inst2|temp|op_1~47\,
	combout => \inst8|inst2|temp|op_1~48_combout\,
	cout => \inst8|inst2|temp|op_1~49\);

-- Location: LCCOMB_X18_Y12_N18
\inst8|inst2|temp|op_1~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|op_1~59_combout\ = (\inst8|inst2|temp|q~10_combout\ & (((\inst8|inst2|temp|op_1~48_combout\)))) # (!\inst8|inst2|temp|q~10_combout\ & (\inst8|inst2|control|START~q\ & (!\inst8|inst2|temp|_~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|START~q\,
	datab => \inst8|inst2|temp|_~17_combout\,
	datac => \inst8|inst2|temp|op_1~48_combout\,
	datad => \inst8|inst2|temp|q~10_combout\,
	combout => \inst8|inst2|temp|op_1~59_combout\);

-- Location: FF_X18_Y12_N19
\inst8|inst2|temp|cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|temp|op_1~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|temp|cnt\(24));

-- Location: LCCOMB_X14_Y11_N22
\inst8|inst2|temp|op_1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|op_1~50_combout\ = (\inst8|inst2|temp|cnt\(25) & (\inst8|inst2|temp|op_1~49\ & VCC)) # (!\inst8|inst2|temp|cnt\(25) & (!\inst8|inst2|temp|op_1~49\))
-- \inst8|inst2|temp|op_1~51\ = CARRY((!\inst8|inst2|temp|cnt\(25) & !\inst8|inst2|temp|op_1~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst2|temp|cnt\(25),
	datad => VCC,
	cin => \inst8|inst2|temp|op_1~49\,
	combout => \inst8|inst2|temp|op_1~50_combout\,
	cout => \inst8|inst2|temp|op_1~51\);

-- Location: LCCOMB_X18_Y12_N26
\inst8|inst2|temp|op_1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|op_1~58_combout\ = (\inst8|inst2|temp|q~10_combout\ & ((\inst8|inst2|temp|op_1~50_combout\))) # (!\inst8|inst2|temp|q~10_combout\ & (\inst8|inst2|control|s88~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst2|control|s88~q\,
	datac => \inst8|inst2|temp|q~10_combout\,
	datad => \inst8|inst2|temp|op_1~50_combout\,
	combout => \inst8|inst2|temp|op_1~58_combout\);

-- Location: FF_X18_Y12_N27
\inst8|inst2|temp|cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|temp|op_1~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|temp|cnt\(25));

-- Location: LCCOMB_X14_Y11_N24
\inst8|inst2|temp|op_1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|op_1~52_combout\ = (\inst8|inst2|temp|cnt\(26) & ((GND) # (!\inst8|inst2|temp|op_1~51\))) # (!\inst8|inst2|temp|cnt\(26) & (\inst8|inst2|temp|op_1~51\ $ (GND)))
-- \inst8|inst2|temp|op_1~53\ = CARRY((\inst8|inst2|temp|cnt\(26)) # (!\inst8|inst2|temp|op_1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst2|temp|cnt\(26),
	datad => VCC,
	cin => \inst8|inst2|temp|op_1~51\,
	combout => \inst8|inst2|temp|op_1~52_combout\,
	cout => \inst8|inst2|temp|op_1~53\);

-- Location: LCCOMB_X18_Y12_N8
\inst8|inst2|temp|op_1~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|op_1~57_combout\ = (\inst8|inst2|temp|q~10_combout\ & \inst8|inst2|temp|op_1~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst2|temp|q~10_combout\,
	datad => \inst8|inst2|temp|op_1~52_combout\,
	combout => \inst8|inst2|temp|op_1~57_combout\);

-- Location: FF_X18_Y12_N9
\inst8|inst2|temp|cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|temp|op_1~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|temp|cnt\(26));

-- Location: LCCOMB_X14_Y11_N26
\inst8|inst2|temp|op_1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|op_1~54_combout\ = \inst8|inst2|temp|op_1~53\ $ (!\inst8|inst2|temp|cnt\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst2|temp|cnt\(27),
	cin => \inst8|inst2|temp|op_1~53\,
	combout => \inst8|inst2|temp|op_1~54_combout\);

-- Location: LCCOMB_X18_Y12_N30
\inst8|inst2|temp|op_1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|op_1~56_combout\ = (\inst8|inst2|temp|q~10_combout\ & \inst8|inst2|temp|op_1~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst2|temp|q~10_combout\,
	datad => \inst8|inst2|temp|op_1~54_combout\,
	combout => \inst8|inst2|temp|op_1~56_combout\);

-- Location: FF_X18_Y12_N31
\inst8|inst2|temp|cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|temp|op_1~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|temp|cnt\(27));

-- Location: LCCOMB_X18_Y12_N14
\inst8|inst2|temp|q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|q~1_combout\ = (!\inst8|inst2|temp|cnt\(25) & (!\inst8|inst2|temp|cnt\(24) & (!\inst8|inst2|temp|cnt\(27) & !\inst8|inst2|temp|cnt\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|temp|cnt\(25),
	datab => \inst8|inst2|temp|cnt\(24),
	datac => \inst8|inst2|temp|cnt\(27),
	datad => \inst8|inst2|temp|cnt\(26),
	combout => \inst8|inst2|temp|q~1_combout\);

-- Location: LCCOMB_X19_Y11_N2
\inst8|inst2|temp|q~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|q~5_combout\ = (\inst8|inst2|temp|q~4_combout\ & (\inst8|inst2|temp|q~3_combout\ & (\inst8|inst2|temp|q~2_combout\ & \inst8|inst2|temp|q~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|temp|q~4_combout\,
	datab => \inst8|inst2|temp|q~3_combout\,
	datac => \inst8|inst2|temp|q~2_combout\,
	datad => \inst8|inst2|temp|q~1_combout\,
	combout => \inst8|inst2|temp|q~5_combout\);

-- Location: LCCOMB_X19_Y11_N16
\inst8|inst2|control|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|_~0_combout\ = (!\inst1|P2~q\ & (\inst8|inst2|temp|q~5_combout\ & (\inst1|P3~q\ & \inst8|inst2|temp|q~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|P2~q\,
	datab => \inst8|inst2|temp|q~5_combout\,
	datac => \inst1|P3~q\,
	datad => \inst8|inst2|temp|q~9_combout\,
	combout => \inst8|inst2|control|_~0_combout\);

-- Location: LCCOMB_X17_Y14_N12
\inst8|inst2|control|s35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|s35~0_combout\ = (\inst8|inst2|control|_~0_combout\ & ((\inst8|inst2|control|s34~q\) # ((\inst8|inst2|control|s3~0_combout\ & \inst8|inst2|control|s35~q\)))) # (!\inst8|inst2|control|_~0_combout\ & (\inst8|inst2|control|s3~0_combout\ 
-- & (\inst8|inst2|control|s35~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|_~0_combout\,
	datab => \inst8|inst2|control|s3~0_combout\,
	datac => \inst8|inst2|control|s35~q\,
	datad => \inst8|inst2|control|s34~q\,
	combout => \inst8|inst2|control|s35~0_combout\);

-- Location: FF_X17_Y14_N13
\inst8|inst2|control|s35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clk_O~combout\,
	d => \inst8|inst2|control|s35~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|control|s35~q\);

-- Location: LCCOMB_X17_Y14_N4
\inst8|inst2|control|freq_out[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|freq_out[5]~15_combout\ = (!\inst8|inst2|control|s15~q\ & (!\inst8|inst2|control|s25~q\ & (!\inst8|inst2|control|s5~q\ & !\inst8|inst2|control|s10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s15~q\,
	datab => \inst8|inst2|control|s25~q\,
	datac => \inst8|inst2|control|s5~q\,
	datad => \inst8|inst2|control|s10~q\,
	combout => \inst8|inst2|control|freq_out[5]~15_combout\);

-- Location: LCCOMB_X17_Y14_N2
\inst8|inst2|control|freq_out[5]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|freq_out[5]~50_combout\ = (!\inst8|inst2|control|s35~q\ & (\inst8|inst2|control|freq_out[5]~15_combout\ & !\inst8|inst2|control|s30~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s35~q\,
	datac => \inst8|inst2|control|freq_out[5]~15_combout\,
	datad => \inst8|inst2|control|s30~q\,
	combout => \inst8|inst2|control|freq_out[5]~50_combout\);

-- Location: LCCOMB_X17_Y13_N8
\inst8|inst2|control|freq_out[9]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|freq_out[9]~24_combout\ = (!\inst8|inst2|control|s32~q\ & (!\inst8|inst2|control|s37~q\ & (!\inst8|inst2|control|s27~q\ & !\inst8|inst2|control|s17~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s32~q\,
	datab => \inst8|inst2|control|s37~q\,
	datac => \inst8|inst2|control|s27~q\,
	datad => \inst8|inst2|control|s17~q\,
	combout => \inst8|inst2|control|freq_out[9]~24_combout\);

-- Location: LCCOMB_X17_Y13_N14
\inst8|inst2|control|freq_out[9]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|freq_out[9]~23_combout\ = (!\inst8|inst2|control|s12~q\ & (!\inst8|inst2|control|s71~q\ & (!\inst8|inst2|control|s51~q\ & !\inst8|inst2|control|s7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s12~q\,
	datab => \inst8|inst2|control|s71~q\,
	datac => \inst8|inst2|control|s51~q\,
	datad => \inst8|inst2|control|s7~q\,
	combout => \inst8|inst2|control|freq_out[9]~23_combout\);

-- Location: LCCOMB_X17_Y13_N30
\inst8|inst2|control|freq_out[9]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|freq_out[9]~36_combout\ = (\inst8|inst2|control|freq_out[9]~24_combout\ & \inst8|inst2|control|freq_out[9]~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst2|control|freq_out[9]~24_combout\,
	datad => \inst8|inst2|control|freq_out[9]~23_combout\,
	combout => \inst8|inst2|control|freq_out[9]~36_combout\);

-- Location: LCCOMB_X16_Y13_N12
\inst8|inst2|control|freq_out[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|freq_out[8]~27_combout\ = (!\inst8|inst2|control|s84~q\ & (!\inst8|inst2|control|s83~q\ & (!\inst8|inst2|control|s11~q\ & !\inst8|inst2|control|s6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s84~q\,
	datab => \inst8|inst2|control|s83~q\,
	datac => \inst8|inst2|control|s11~q\,
	datad => \inst8|inst2|control|s6~q\,
	combout => \inst8|inst2|control|freq_out[8]~27_combout\);

-- Location: LCCOMB_X16_Y14_N20
\inst8|inst2|control|clk_out~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|clk_out~98_combout\ = (!\inst8|inst2|control|s91~q\ & (!\inst8|inst2|control|s76~q\ & !\inst8|inst2|control|s82~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst2|control|s91~q\,
	datac => \inst8|inst2|control|s76~q\,
	datad => \inst8|inst2|control|s82~q\,
	combout => \inst8|inst2|control|clk_out~98_combout\);

-- Location: LCCOMB_X16_Y10_N4
\inst8|inst2|control|clk_out~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|clk_out~97_combout\ = (\inst8|inst2|control|s20~q\) # ((\inst8|inst2|control|s40~q\) # ((\inst8|inst2|control|s78~q\) # (\inst8|inst2|control|s77~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s20~q\,
	datab => \inst8|inst2|control|s40~q\,
	datac => \inst8|inst2|control|s78~q\,
	datad => \inst8|inst2|control|s77~q\,
	combout => \inst8|inst2|control|clk_out~97_combout\);

-- Location: LCCOMB_X16_Y10_N14
\inst8|inst2|control|clk_out~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|clk_out~99_combout\ = ((\inst8|inst2|control|clk_out~97_combout\) # (!\inst8|inst2|control|freq_out[15]~8_combout\)) # (!\inst8|inst2|control|clk_out~98_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|clk_out~98_combout\,
	datab => \inst8|inst2|control|freq_out[15]~8_combout\,
	datac => \inst8|inst2|control|clk_out~97_combout\,
	combout => \inst8|inst2|control|clk_out~99_combout\);

-- Location: LCCOMB_X17_Y12_N30
\inst8|inst2|control|clk_out~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|clk_out~91_combout\ = (!\inst8|inst2|control|s22~q\ & (!\inst8|inst2|control|s21~q\ & (!\inst8|inst2|control|s2~q\ & !\inst8|inst2|control|s1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s22~q\,
	datab => \inst8|inst2|control|s21~q\,
	datac => \inst8|inst2|control|s2~q\,
	datad => \inst8|inst2|control|s1~q\,
	combout => \inst8|inst2|control|clk_out~91_combout\);

-- Location: LCCOMB_X17_Y12_N4
\inst8|inst2|control|clk_out~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|clk_out~92_combout\ = (!\inst8|inst2|control|s41~q\ & (\inst8|inst2|control|clk_out~91_combout\ & !\inst8|inst2|control|s42~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst2|control|s41~q\,
	datac => \inst8|inst2|control|clk_out~91_combout\,
	datad => \inst8|inst2|control|s42~q\,
	combout => \inst8|inst2|control|clk_out~92_combout\);

-- Location: LCCOMB_X16_Y12_N6
\inst8|inst2|control|freq_out[8]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|freq_out[8]~28_combout\ = (!\inst8|inst2|control|s31~q\ & (!\inst8|inst2|control|s36~q\ & (!\inst8|inst2|control|s26~q\ & !\inst8|inst2|control|s16~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s31~q\,
	datab => \inst8|inst2|control|s36~q\,
	datac => \inst8|inst2|control|s26~q\,
	datad => \inst8|inst2|control|s16~q\,
	combout => \inst8|inst2|control|freq_out[8]~28_combout\);

-- Location: LCCOMB_X17_Y12_N10
\inst8|inst2|control|clk_out~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|clk_out~100_combout\ = ((\inst8|inst2|control|clk_out~99_combout\) # ((!\inst8|inst2|control|freq_out[8]~28_combout\) # (!\inst8|inst2|control|clk_out~92_combout\))) # (!\inst8|inst2|control|freq_out[8]~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|freq_out[8]~27_combout\,
	datab => \inst8|inst2|control|clk_out~99_combout\,
	datac => \inst8|inst2|control|clk_out~92_combout\,
	datad => \inst8|inst2|control|freq_out[8]~28_combout\,
	combout => \inst8|inst2|control|clk_out~100_combout\);

-- Location: LCCOMB_X18_Y12_N12
\inst8|inst2|control|clk_out~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|clk_out~101_combout\ = (((\inst8|inst2|control|clk_out~100_combout\) # (!\inst8|inst2|temp|_~18_combout\)) # (!\inst8|inst2|control|freq_out[9]~36_combout\)) # (!\inst8|inst2|control|freq_out[5]~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|freq_out[5]~50_combout\,
	datab => \inst8|inst2|control|freq_out[9]~36_combout\,
	datac => \inst8|inst2|temp|_~18_combout\,
	datad => \inst8|inst2|control|clk_out~100_combout\,
	combout => \inst8|inst2|control|clk_out~101_combout\);

-- Location: LCCOMB_X16_Y13_N16
\inst8|inst2|control|freq_out[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|freq_out[1]~34_combout\ = (!\inst8|inst2|control|s81~q\ & !\inst8|inst2|control|s80~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s81~q\,
	datac => \inst8|inst2|control|s80~q\,
	combout => \inst8|inst2|control|freq_out[1]~34_combout\);

-- Location: LCCOMB_X18_Y12_N2
\inst8|inst2|control|clk_out~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|clk_out~96_combout\ = (((!\inst8|inst2|control|freq_out[1]~34_combout\) # (!\inst8|inst2|temp|_~17_combout\)) # (!\inst8|inst2|control|clk_out~95_combout\)) # (!\inst8|inst2|temp|_~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|temp|_~16_combout\,
	datab => \inst8|inst2|control|clk_out~95_combout\,
	datac => \inst8|inst2|temp|_~17_combout\,
	datad => \inst8|inst2|control|freq_out[1]~34_combout\,
	combout => \inst8|inst2|control|clk_out~96_combout\);

-- Location: LCCOMB_X18_Y12_N24
\inst8|inst2|control|clk_out\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|clk_out~combout\ = LCELL((\inst3|clk_O~combout\ & (\inst8|inst2|temp|q~10_combout\ & ((\inst8|inst2|control|clk_out~101_combout\) # (\inst8|inst2|control|clk_out~96_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|clk_out~101_combout\,
	datab => \inst3|clk_O~combout\,
	datac => \inst8|inst2|temp|q~10_combout\,
	datad => \inst8|inst2|control|clk_out~96_combout\,
	combout => \inst8|inst2|control|clk_out~combout\);

-- Location: CLKCTRL_G6
\inst8|inst2|control|clk_out~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst8|inst2|control|clk_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst8|inst2|control|clk_out~clkctrl_outclk\);

-- Location: LCCOMB_X17_Y13_N0
\inst8|inst2|control|freq_out[11]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|freq_out[11]~6_combout\ = (!\inst8|inst2|control|s44~q\ & (!\inst8|inst2|control|s57~q\ & (!\inst8|inst2|control|s64~q\ & \inst8|inst2|temp|_~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s44~q\,
	datab => \inst8|inst2|control|s57~q\,
	datac => \inst8|inst2|control|s64~q\,
	datad => \inst8|inst2|temp|_~6_combout\,
	combout => \inst8|inst2|control|freq_out[11]~6_combout\);

-- Location: LCCOMB_X17_Y13_N4
\inst8|inst2|control|freq_out[15]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|freq_out[15]~7_combout\ = (\inst8|inst2|control|clk_out~92_combout\ & (\inst8|inst2|control|freq_out[11]~6_combout\ & (\inst8|inst2|temp|_~7_combout\ & \inst8|inst2|control|START~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|clk_out~92_combout\,
	datab => \inst8|inst2|control|freq_out[11]~6_combout\,
	datac => \inst8|inst2|temp|_~7_combout\,
	datad => \inst8|inst2|control|START~q\,
	combout => \inst8|inst2|control|freq_out[15]~7_combout\);

-- Location: LCCOMB_X18_Y14_N22
\inst8|inst2|temp|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|temp|_~8_combout\ = (!\inst8|inst2|control|s24~q\ & !\inst8|inst2|control|s4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst2|control|s24~q\,
	datad => \inst8|inst2|control|s4~q\,
	combout => \inst8|inst2|temp|_~8_combout\);

-- Location: LCCOMB_X17_Y11_N0
\inst8|inst2|control|freq_out[15]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|freq_out[15]~9_combout\ = (!\inst8|inst2|control|s88~q\ & (\inst8|inst2|control|freq_out[15]~8_combout\ & (!\inst8|inst2|control|s61~q\ & \inst8|inst2|temp|_~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s88~q\,
	datab => \inst8|inst2|control|freq_out[15]~8_combout\,
	datac => \inst8|inst2|control|s61~q\,
	datad => \inst8|inst2|temp|_~8_combout\,
	combout => \inst8|inst2|control|freq_out[15]~9_combout\);

-- Location: LCCOMB_X19_Y13_N28
\inst8|inst2|control|freq_out[15]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|freq_out[15]~49_combout\ = (!\inst8|inst2|control|s75~q\ & (!\inst8|inst2|control|s55~q\ & (\inst8|inst2|control|freq_out[15]~7_combout\ & \inst8|inst2|control|freq_out[15]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s75~q\,
	datab => \inst8|inst2|control|s55~q\,
	datac => \inst8|inst2|control|freq_out[15]~7_combout\,
	datad => \inst8|inst2|control|freq_out[15]~9_combout\,
	combout => \inst8|inst2|control|freq_out[15]~49_combout\);

-- Location: LCCOMB_X17_Y13_N2
\inst8|inst2|control|freq_out[14]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|freq_out[14]~11_combout\ = (\inst8|inst2|control|s0~q\) # (((!\inst8|inst2|control|freq_out[15]~9_combout\) # (!\inst8|inst2|control|freq_out[15]~7_combout\)) # (!\inst8|inst2|control|freq_out[15]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s0~q\,
	datab => \inst8|inst2|control|freq_out[15]~10_combout\,
	datac => \inst8|inst2|control|freq_out[15]~7_combout\,
	datad => \inst8|inst2|control|freq_out[15]~9_combout\,
	combout => \inst8|inst2|control|freq_out[14]~11_combout\);

-- Location: LCCOMB_X17_Y14_N6
\inst8|inst2|control|freq_out[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|freq_out[5]~16_combout\ = (!\inst8|inst2|control|s30~q\ & !\inst8|inst2|control|s35~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst2|control|s30~q\,
	datad => \inst8|inst2|control|s35~q\,
	combout => \inst8|inst2|control|freq_out[5]~16_combout\);

-- Location: LCCOMB_X17_Y14_N0
\inst8|inst2|control|freq_out[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|freq_out[6]~19_combout\ = (\inst8|inst2|control|freq_out[5]~16_combout\ & (\inst8|inst2|control|freq_out[5]~17_combout\ & (\inst8|inst2|control|freq_out[5]~15_combout\ & \inst8|inst2|control|freq_out[6]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|freq_out[5]~16_combout\,
	datab => \inst8|inst2|control|freq_out[5]~17_combout\,
	datac => \inst8|inst2|control|freq_out[5]~15_combout\,
	datad => \inst8|inst2|control|freq_out[6]~18_combout\,
	combout => \inst8|inst2|control|freq_out[6]~19_combout\);

-- Location: LCCOMB_X17_Y14_N16
\inst8|inst2|control|freq_out[13]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|freq_out[13]~20_combout\ = (!\inst8|inst2|control|s80~q\ & (\inst8|inst2|control|freq_out[6]~19_combout\ & !\inst8|inst2|control|s81~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s80~q\,
	datab => \inst8|inst2|control|freq_out[6]~19_combout\,
	datac => \inst8|inst2|control|s81~q\,
	combout => \inst8|inst2|control|freq_out[13]~20_combout\);

-- Location: LCCOMB_X16_Y13_N8
\inst8|inst2|control|freq_out[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|freq_out[8]~12_combout\ = (!\inst8|inst2|control|s78~q\ & (\inst8|inst2|temp|_~9_combout\ & !\inst8|inst2|control|s77~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst2|control|s78~q\,
	datac => \inst8|inst2|temp|_~9_combout\,
	datad => \inst8|inst2|control|s77~q\,
	combout => \inst8|inst2|control|freq_out[8]~12_combout\);

-- Location: LCCOMB_X17_Y11_N6
\inst8|inst2|control|freq_out[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|freq_out[9]~14_combout\ = (\inst8|inst2|control|freq_out[15]~8_combout\ & (!\inst8|inst2|control|s79~q\ & (\inst8|inst2|control|freq_out[15]~13_combout\ & \inst8|inst2|temp|_~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|freq_out[15]~8_combout\,
	datab => \inst8|inst2|control|s79~q\,
	datac => \inst8|inst2|control|freq_out[15]~13_combout\,
	datad => \inst8|inst2|temp|_~8_combout\,
	combout => \inst8|inst2|control|freq_out[9]~14_combout\);

-- Location: LCCOMB_X18_Y14_N12
\inst8|inst2|control|freq_out[13]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|freq_out[13]~21_combout\ = (!\inst8|inst2|control|s55~q\ & (!\inst8|inst2|control|s75~q\ & !\inst8|inst2|control|s0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s55~q\,
	datac => \inst8|inst2|control|s75~q\,
	datad => \inst8|inst2|control|s0~q\,
	combout => \inst8|inst2|control|freq_out[13]~21_combout\);

-- Location: LCCOMB_X18_Y14_N6
\inst8|inst2|control|freq_out[13]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|freq_out[13]~22_combout\ = (((!\inst8|inst2|control|freq_out[13]~21_combout\) # (!\inst8|inst2|control|freq_out[9]~14_combout\)) # (!\inst8|inst2|control|freq_out[8]~12_combout\)) # (!\inst8|inst2|control|freq_out[13]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|freq_out[13]~20_combout\,
	datab => \inst8|inst2|control|freq_out[8]~12_combout\,
	datac => \inst8|inst2|control|freq_out[9]~14_combout\,
	datad => \inst8|inst2|control|freq_out[13]~21_combout\,
	combout => \inst8|inst2|control|freq_out[13]~22_combout\);

-- Location: LCCOMB_X17_Y13_N20
\inst8|inst2|control|freq_out[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|freq_out[6]~26_combout\ = (\inst8|inst2|control|freq_out[9]~25_combout\ & (\inst8|inst2|control|freq_out[11]~6_combout\ & (\inst8|inst2|control|freq_out[9]~24_combout\ & \inst8|inst2|control|freq_out[9]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|freq_out[9]~25_combout\,
	datab => \inst8|inst2|control|freq_out[11]~6_combout\,
	datac => \inst8|inst2|control|freq_out[9]~24_combout\,
	datad => \inst8|inst2|control|freq_out[9]~23_combout\,
	combout => \inst8|inst2|control|freq_out[6]~26_combout\);

-- Location: LCCOMB_X16_Y13_N4
\inst8|inst2|control|freq_out[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|freq_out[8]~29_combout\ = (\inst8|inst2|control|freq_out[8]~28_combout\ & (\inst8|inst2|temp|_~11_combout\ & (\inst8|inst2|temp|_~10_combout\ & \inst8|inst2|control|freq_out[8]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|freq_out[8]~28_combout\,
	datab => \inst8|inst2|temp|_~11_combout\,
	datac => \inst8|inst2|temp|_~10_combout\,
	datad => \inst8|inst2|control|freq_out[8]~27_combout\,
	combout => \inst8|inst2|control|freq_out[8]~29_combout\);

-- Location: LCCOMB_X16_Y13_N18
\inst8|inst2|control|freq_out[12]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|freq_out[12]~30_combout\ = (\inst8|inst2|control|freq_out[8]~12_combout\ & (\inst8|inst2|control|freq_out[8]~29_combout\ & !\inst8|inst2|control|s0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst2|control|freq_out[8]~12_combout\,
	datac => \inst8|inst2|control|freq_out[8]~29_combout\,
	datad => \inst8|inst2|control|s0~q\,
	combout => \inst8|inst2|control|freq_out[12]~30_combout\);

-- Location: LCCOMB_X17_Y13_N12
\inst8|inst2|control|freq_out[12]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|freq_out[12]~31_combout\ = ((!\inst8|inst2|control|freq_out[12]~30_combout\) # (!\inst8|inst2|control|freq_out[6]~26_combout\)) # (!\inst8|inst2|control|freq_out[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|freq_out[9]~14_combout\,
	datab => \inst8|inst2|control|freq_out[6]~26_combout\,
	datad => \inst8|inst2|control|freq_out[12]~30_combout\,
	combout => \inst8|inst2|control|freq_out[12]~31_combout\);

-- Location: LCCOMB_X17_Y13_N18
\inst8|inst2|control|freq_out[11]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|freq_out[11]~32_combout\ = (((\inst8|inst2|control|s85~q\) # (!\inst8|inst2|control|freq_out[12]~30_combout\)) # (!\inst8|inst2|control|freq_out[11]~6_combout\)) # (!\inst8|inst2|control|freq_out[15]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|freq_out[15]~10_combout\,
	datab => \inst8|inst2|control|freq_out[11]~6_combout\,
	datac => \inst8|inst2|control|s85~q\,
	datad => \inst8|inst2|control|freq_out[12]~30_combout\,
	combout => \inst8|inst2|control|freq_out[11]~32_combout\);

-- Location: LCCOMB_X17_Y12_N26
\inst8|inst2|control|freq_out[15]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|freq_out[15]~33_combout\ = (\inst8|inst2|control|clk_out~92_combout\ & (\inst8|inst2|temp|_~7_combout\ & \inst8|inst2|control|START~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst2|control|clk_out~92_combout\,
	datac => \inst8|inst2|temp|_~7_combout\,
	datad => \inst8|inst2|control|START~q\,
	combout => \inst8|inst2|control|freq_out[15]~33_combout\);

-- Location: LCCOMB_X17_Y12_N16
\inst8|inst2|control|freq_out[10]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|freq_out[10]~35_combout\ = (((\inst8|inst2|control|s0~q\) # (!\inst8|inst2|control|freq_out[15]~33_combout\)) # (!\inst8|inst2|control|freq_out[1]~34_combout\)) # (!\inst8|inst2|control|freq_out[15]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|freq_out[15]~9_combout\,
	datab => \inst8|inst2|control|freq_out[1]~34_combout\,
	datac => \inst8|inst2|control|freq_out[15]~33_combout\,
	datad => \inst8|inst2|control|s0~q\,
	combout => \inst8|inst2|control|freq_out[10]~35_combout\);

-- Location: LCCOMB_X17_Y13_N16
\inst8|inst2|control|freq_out[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|freq_out\(9) = (((!\inst8|inst2|control|freq_out[9]~14_combout\) # (!\inst8|inst2|control|freq_out[15]~7_combout\)) # (!\inst8|inst2|control|freq_out[9]~25_combout\)) # (!\inst8|inst2|control|freq_out[9]~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|freq_out[9]~36_combout\,
	datab => \inst8|inst2|control|freq_out[9]~25_combout\,
	datac => \inst8|inst2|control|freq_out[15]~7_combout\,
	datad => \inst8|inst2|control|freq_out[9]~14_combout\,
	combout => \inst8|inst2|control|freq_out\(9));

-- Location: LCCOMB_X16_Y13_N6
\inst8|inst2|control|freq_out[8]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|freq_out[8]~37_combout\ = (\inst8|inst2|control|freq_out[6]~19_combout\ & (!\inst8|inst2|control|s85~q\ & (\inst8|inst2|control|freq_out[8]~29_combout\ & \inst8|inst2|control|freq_out[15]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|freq_out[6]~19_combout\,
	datab => \inst8|inst2|control|s85~q\,
	datac => \inst8|inst2|control|freq_out[8]~29_combout\,
	datad => \inst8|inst2|control|freq_out[15]~9_combout\,
	combout => \inst8|inst2|control|freq_out[8]~37_combout\);

-- Location: LCCOMB_X16_Y13_N14
\inst8|inst2|control|freq_out[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|freq_out\(8) = (\inst8|inst2|control|s77~q\) # ((\inst8|inst2|control|s78~q\) # ((!\inst8|inst2|control|freq_out[8]~37_combout\) # (!\inst8|inst2|temp|_~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s77~q\,
	datab => \inst8|inst2|control|s78~q\,
	datac => \inst8|inst2|temp|_~9_combout\,
	datad => \inst8|inst2|control|freq_out[8]~37_combout\,
	combout => \inst8|inst2|control|freq_out\(8));

-- Location: LCCOMB_X18_Y14_N30
\inst8|inst2|control|freq_out[7]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|freq_out[7]~38_combout\ = (((!\inst8|inst2|control|freq_out[13]~21_combout\) # (!\inst8|inst2|control|freq_out[11]~6_combout\)) # (!\inst8|inst2|control|freq_out[1]~34_combout\)) # (!\inst8|inst2|control|freq_out[6]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|freq_out[6]~19_combout\,
	datab => \inst8|inst2|control|freq_out[1]~34_combout\,
	datac => \inst8|inst2|control|freq_out[11]~6_combout\,
	datad => \inst8|inst2|control|freq_out[13]~21_combout\,
	combout => \inst8|inst2|control|freq_out[7]~38_combout\);

-- Location: LCCOMB_X17_Y13_N24
\inst8|inst2|control|freq_out[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|freq_out\(6) = (((!\inst8|inst2|control|freq_out[6]~26_combout\) # (!\inst8|inst2|control|freq_out[15]~9_combout\)) # (!\inst8|inst2|control|freq_out[6]~19_combout\)) # (!\inst8|inst2|control|freq_out[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|freq_out[8]~12_combout\,
	datab => \inst8|inst2|control|freq_out[6]~19_combout\,
	datac => \inst8|inst2|control|freq_out[15]~9_combout\,
	datad => \inst8|inst2|control|freq_out[6]~26_combout\,
	combout => \inst8|inst2|control|freq_out\(6));

-- Location: LCCOMB_X17_Y10_N22
\inst8|inst2|control|freq_out[5]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|freq_out[5]~39_combout\ = (!\inst8|inst2|control|s19~q\ & (!\inst8|inst2|control|s40~q\ & (!\inst8|inst2|control|s20~q\ & !\inst8|inst2|control|s39~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s19~q\,
	datab => \inst8|inst2|control|s40~q\,
	datac => \inst8|inst2|control|s20~q\,
	datad => \inst8|inst2|control|s39~q\,
	combout => \inst8|inst2|control|freq_out[5]~39_combout\);

-- Location: LCCOMB_X17_Y10_N0
\inst8|inst2|control|freq_out[5]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|freq_out[5]~40_combout\ = (!\inst8|inst2|control|s63~q\ & (\inst8|inst2|temp|_~12_combout\ & (\inst8|inst2|control|freq_out[5]~39_combout\ & !\inst8|inst2|control|s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s63~q\,
	datab => \inst8|inst2|temp|_~12_combout\,
	datac => \inst8|inst2|control|freq_out[5]~39_combout\,
	datad => \inst8|inst2|control|s0~q\,
	combout => \inst8|inst2|control|freq_out[5]~40_combout\);

-- Location: LCCOMB_X18_Y11_N28
\inst8|inst2|control|freq_out[5]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|freq_out[5]~44_combout\ = (\inst8|inst2|control|s44~q\) # (((!\inst8|inst2|control|freq_out[5]~43_combout\) # (!\inst8|inst2|control|freq_out[5]~40_combout\)) # (!\inst8|inst2|control|freq_out[5]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s44~q\,
	datab => \inst8|inst2|control|freq_out[5]~50_combout\,
	datac => \inst8|inst2|control|freq_out[5]~40_combout\,
	datad => \inst8|inst2|control|freq_out[5]~43_combout\,
	combout => \inst8|inst2|control|freq_out[5]~44_combout\);

-- Location: LCCOMB_X16_Y13_N0
\inst8|inst2|control|freq_out[4]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|freq_out[4]~45_combout\ = ((\inst8|inst2|control|s85~q\) # ((!\inst8|inst2|control|freq_out[12]~30_combout\) # (!\inst8|inst2|control|freq_out[9]~14_combout\))) # (!\inst8|inst2|control|freq_out[1]~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|freq_out[1]~34_combout\,
	datab => \inst8|inst2|control|s85~q\,
	datac => \inst8|inst2|control|freq_out[9]~14_combout\,
	datad => \inst8|inst2|control|freq_out[12]~30_combout\,
	combout => \inst8|inst2|control|freq_out[4]~45_combout\);

-- Location: LCCOMB_X17_Y10_N14
\inst8|inst2|control|freq_out[3]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|freq_out[3]~46_combout\ = (((!\inst8|inst2|control|freq_out[5]~40_combout\) # (!\inst8|inst2|control|clk_out~95_combout\)) # (!\inst8|inst2|control|freq_out[3]~41_combout\)) # (!\inst8|inst2|control|freq_out[15]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|freq_out[15]~10_combout\,
	datab => \inst8|inst2|control|freq_out[3]~41_combout\,
	datac => \inst8|inst2|control|clk_out~95_combout\,
	datad => \inst8|inst2|control|freq_out[5]~40_combout\,
	combout => \inst8|inst2|control|freq_out[3]~46_combout\);

-- Location: LCCOMB_X17_Y14_N30
\inst8|inst2|control|freq_out[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|freq_out\(2) = (((\inst8|inst2|control|s85~q\) # (!\inst8|inst2|control|freq_out[11]~6_combout\)) # (!\inst8|inst2|control|freq_out[1]~34_combout\)) # (!\inst8|inst2|control|freq_out[6]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|freq_out[6]~19_combout\,
	datab => \inst8|inst2|control|freq_out[1]~34_combout\,
	datac => \inst8|inst2|control|s85~q\,
	datad => \inst8|inst2|control|freq_out[11]~6_combout\,
	combout => \inst8|inst2|control|freq_out\(2));

-- Location: LCCOMB_X19_Y14_N14
\inst8|inst2|div_clock|cnt[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|div_clock|cnt[1]~18_combout\ = (\inst8|inst2|div_clock|cnt\(0) & (\inst8|inst2|div_clock|cnt\(1) $ (VCC))) # (!\inst8|inst2|div_clock|cnt\(0) & (\inst8|inst2|div_clock|cnt\(1) & VCC))
-- \inst8|inst2|div_clock|cnt[1]~19\ = CARRY((\inst8|inst2|div_clock|cnt\(0) & \inst8|inst2|div_clock|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|div_clock|cnt\(0),
	datab => \inst8|inst2|div_clock|cnt\(1),
	datad => VCC,
	combout => \inst8|inst2|div_clock|cnt[1]~18_combout\,
	cout => \inst8|inst2|div_clock|cnt[1]~19\);

-- Location: LCCOMB_X19_Y13_N12
\inst8|inst2|div_clock|cnt[16]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|div_clock|cnt[16]~48_combout\ = (\inst8|inst2|div_clock|cnt\(16) & (!\inst8|inst2|div_clock|cnt[15]~47\)) # (!\inst8|inst2|div_clock|cnt\(16) & ((\inst8|inst2|div_clock|cnt[15]~47\) # (GND)))
-- \inst8|inst2|div_clock|cnt[16]~49\ = CARRY((!\inst8|inst2|div_clock|cnt[15]~47\) # (!\inst8|inst2|div_clock|cnt\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|div_clock|cnt\(16),
	datad => VCC,
	cin => \inst8|inst2|div_clock|cnt[15]~47\,
	combout => \inst8|inst2|div_clock|cnt[16]~48_combout\,
	cout => \inst8|inst2|div_clock|cnt[16]~49\);

-- Location: LCCOMB_X19_Y13_N14
\inst8|inst2|div_clock|cnt[17]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|div_clock|cnt[17]~51_combout\ = (\inst8|inst2|div_clock|cnt\(17) & (\inst8|inst2|div_clock|cnt[16]~49\ $ (GND))) # (!\inst8|inst2|div_clock|cnt\(17) & (!\inst8|inst2|div_clock|cnt[16]~49\ & VCC))
-- \inst8|inst2|div_clock|cnt[17]~52\ = CARRY((\inst8|inst2|div_clock|cnt\(17) & !\inst8|inst2|div_clock|cnt[16]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst2|div_clock|cnt\(17),
	datad => VCC,
	cin => \inst8|inst2|div_clock|cnt[16]~49\,
	combout => \inst8|inst2|div_clock|cnt[17]~51_combout\,
	cout => \inst8|inst2|div_clock|cnt[17]~52\);

-- Location: FF_X19_Y13_N15
\inst8|inst2|div_clock|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst2|control|clk_out~clkctrl_outclk\,
	d => \inst8|inst2|div_clock|cnt[17]~51_combout\,
	sclr => \inst8|inst2|div_clock|op_1~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|div_clock|cnt\(17));

-- Location: LCCOMB_X19_Y13_N16
\inst8|inst2|div_clock|cnt[18]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|div_clock|cnt[18]~53_combout\ = \inst8|inst2|div_clock|cnt\(18) $ (\inst8|inst2|div_clock|cnt[17]~52\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst2|div_clock|cnt\(18),
	cin => \inst8|inst2|div_clock|cnt[17]~52\,
	combout => \inst8|inst2|div_clock|cnt[18]~53_combout\);

-- Location: FF_X19_Y13_N17
\inst8|inst2|div_clock|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst2|control|clk_out~clkctrl_outclk\,
	d => \inst8|inst2|div_clock|cnt[18]~53_combout\,
	sclr => \inst8|inst2|div_clock|op_1~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|div_clock|cnt\(18));

-- Location: LCCOMB_X19_Y13_N22
\inst8|inst2|div_clock|op_1~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|div_clock|op_1~35_combout\ = (\inst8|inst2|div_clock|cnt\(16)) # ((\inst8|inst2|div_clock|cnt\(18)) # ((\inst8|inst2|div_clock|cnt\(17)) # (!\inst8|inst2|div_clock|op_1~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|div_clock|cnt\(16),
	datab => \inst8|inst2|div_clock|cnt\(18),
	datac => \inst8|inst2|div_clock|cnt\(17),
	datad => \inst8|inst2|div_clock|op_1~32_combout\,
	combout => \inst8|inst2|div_clock|op_1~35_combout\);

-- Location: FF_X18_Y13_N23
\inst8|inst2|div_clock|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst2|control|clk_out~clkctrl_outclk\,
	asdata => \inst8|inst2|div_clock|cnt[1]~18_combout\,
	sclr => \inst8|inst2|div_clock|op_1~35_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|div_clock|cnt\(1));

-- Location: LCCOMB_X17_Y13_N28
\inst8|inst2|control|freq_out[1]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|freq_out[1]~47_combout\ = (((!\inst8|inst2|control|START~q\) # (!\inst8|inst2|temp|_~7_combout\)) # (!\inst8|inst2|control|freq_out[1]~34_combout\)) # (!\inst8|inst2|control|freq_out[9]~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|freq_out[9]~25_combout\,
	datab => \inst8|inst2|control|freq_out[1]~34_combout\,
	datac => \inst8|inst2|temp|_~7_combout\,
	datad => \inst8|inst2|control|START~q\,
	combout => \inst8|inst2|control|freq_out[1]~47_combout\);

-- Location: LCCOMB_X17_Y13_N6
\inst8|inst2|control|freq_out[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|freq_out\(1) = (((\inst8|inst2|control|freq_out[1]~47_combout\) # (!\inst8|inst2|control|freq_out[9]~36_combout\)) # (!\inst8|inst2|control|freq_out[11]~6_combout\)) # (!\inst8|inst2|control|clk_out~92_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|clk_out~92_combout\,
	datab => \inst8|inst2|control|freq_out[11]~6_combout\,
	datac => \inst8|inst2|control|freq_out[9]~36_combout\,
	datad => \inst8|inst2|control|freq_out[1]~47_combout\,
	combout => \inst8|inst2|control|freq_out\(1));

-- Location: LCCOMB_X16_Y13_N20
\inst8|inst2|control|freq_out[0]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|freq_out[0]~48_combout\ = (\inst8|inst2|control|s79~q\) # (((\inst8|inst2|control|s85~q\) # (!\inst8|inst2|control|freq_out[15]~10_combout\)) # (!\inst8|inst2|control|freq_out[1]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|s79~q\,
	datab => \inst8|inst2|control|freq_out[1]~34_combout\,
	datac => \inst8|inst2|control|freq_out[15]~10_combout\,
	datad => \inst8|inst2|control|s85~q\,
	combout => \inst8|inst2|control|freq_out[0]~48_combout\);

-- Location: LCCOMB_X16_Y13_N24
\inst8|inst2|control|freq_out[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|control|freq_out\(0) = ((\inst8|inst2|control|freq_out[0]~48_combout\) # ((!\inst8|inst2|control|freq_out[15]~9_combout\) # (!\inst8|inst2|control|freq_out[8]~29_combout\))) # (!\inst8|inst2|control|freq_out[6]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|freq_out[6]~19_combout\,
	datab => \inst8|inst2|control|freq_out[0]~48_combout\,
	datac => \inst8|inst2|control|freq_out[8]~29_combout\,
	datad => \inst8|inst2|control|freq_out[15]~9_combout\,
	combout => \inst8|inst2|control|freq_out\(0));

-- Location: LCCOMB_X18_Y13_N0
\inst8|inst2|div_clock|op_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|div_clock|op_1~3_cout\ = CARRY((!\inst8|inst2|div_clock|cnt\(0) & \inst8|inst2|control|freq_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|div_clock|cnt\(0),
	datab => \inst8|inst2|control|freq_out\(0),
	datad => VCC,
	cout => \inst8|inst2|div_clock|op_1~3_cout\);

-- Location: LCCOMB_X18_Y13_N2
\inst8|inst2|div_clock|op_1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|div_clock|op_1~5_cout\ = CARRY((\inst8|inst2|div_clock|cnt\(1) & ((!\inst8|inst2|div_clock|op_1~3_cout\) # (!\inst8|inst2|control|freq_out\(1)))) # (!\inst8|inst2|div_clock|cnt\(1) & (!\inst8|inst2|control|freq_out\(1) & 
-- !\inst8|inst2|div_clock|op_1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|div_clock|cnt\(1),
	datab => \inst8|inst2|control|freq_out\(1),
	datad => VCC,
	cin => \inst8|inst2|div_clock|op_1~3_cout\,
	cout => \inst8|inst2|div_clock|op_1~5_cout\);

-- Location: LCCOMB_X18_Y13_N4
\inst8|inst2|div_clock|op_1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|div_clock|op_1~7_cout\ = CARRY((\inst8|inst2|control|freq_out\(2) & ((!\inst8|inst2|div_clock|op_1~5_cout\) # (!\inst8|inst2|div_clock|cnt\(2)))) # (!\inst8|inst2|control|freq_out\(2) & (!\inst8|inst2|div_clock|cnt\(2) & 
-- !\inst8|inst2|div_clock|op_1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|freq_out\(2),
	datab => \inst8|inst2|div_clock|cnt\(2),
	datad => VCC,
	cin => \inst8|inst2|div_clock|op_1~5_cout\,
	cout => \inst8|inst2|div_clock|op_1~7_cout\);

-- Location: LCCOMB_X18_Y13_N6
\inst8|inst2|div_clock|op_1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|div_clock|op_1~9_cout\ = CARRY((\inst8|inst2|control|freq_out[3]~46_combout\ & ((\inst8|inst2|div_clock|cnt\(3)) # (!\inst8|inst2|div_clock|op_1~7_cout\))) # (!\inst8|inst2|control|freq_out[3]~46_combout\ & (\inst8|inst2|div_clock|cnt\(3) & 
-- !\inst8|inst2|div_clock|op_1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|freq_out[3]~46_combout\,
	datab => \inst8|inst2|div_clock|cnt\(3),
	datad => VCC,
	cin => \inst8|inst2|div_clock|op_1~7_cout\,
	cout => \inst8|inst2|div_clock|op_1~9_cout\);

-- Location: LCCOMB_X18_Y13_N8
\inst8|inst2|div_clock|op_1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|div_clock|op_1~11_cout\ = CARRY((\inst8|inst2|div_clock|cnt\(4) & (!\inst8|inst2|control|freq_out[4]~45_combout\ & !\inst8|inst2|div_clock|op_1~9_cout\)) # (!\inst8|inst2|div_clock|cnt\(4) & ((!\inst8|inst2|div_clock|op_1~9_cout\) # 
-- (!\inst8|inst2|control|freq_out[4]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|div_clock|cnt\(4),
	datab => \inst8|inst2|control|freq_out[4]~45_combout\,
	datad => VCC,
	cin => \inst8|inst2|div_clock|op_1~9_cout\,
	cout => \inst8|inst2|div_clock|op_1~11_cout\);

-- Location: LCCOMB_X18_Y13_N10
\inst8|inst2|div_clock|op_1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|div_clock|op_1~13_cout\ = CARRY((\inst8|inst2|control|freq_out[5]~44_combout\ & ((\inst8|inst2|div_clock|cnt\(5)) # (!\inst8|inst2|div_clock|op_1~11_cout\))) # (!\inst8|inst2|control|freq_out[5]~44_combout\ & (\inst8|inst2|div_clock|cnt\(5) & 
-- !\inst8|inst2|div_clock|op_1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|freq_out[5]~44_combout\,
	datab => \inst8|inst2|div_clock|cnt\(5),
	datad => VCC,
	cin => \inst8|inst2|div_clock|op_1~11_cout\,
	cout => \inst8|inst2|div_clock|op_1~13_cout\);

-- Location: LCCOMB_X18_Y13_N12
\inst8|inst2|div_clock|op_1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|div_clock|op_1~15_cout\ = CARRY((\inst8|inst2|div_clock|cnt\(6) & (\inst8|inst2|control|freq_out\(6) & !\inst8|inst2|div_clock|op_1~13_cout\)) # (!\inst8|inst2|div_clock|cnt\(6) & ((\inst8|inst2|control|freq_out\(6)) # 
-- (!\inst8|inst2|div_clock|op_1~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|div_clock|cnt\(6),
	datab => \inst8|inst2|control|freq_out\(6),
	datad => VCC,
	cin => \inst8|inst2|div_clock|op_1~13_cout\,
	cout => \inst8|inst2|div_clock|op_1~15_cout\);

-- Location: LCCOMB_X18_Y13_N14
\inst8|inst2|div_clock|op_1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|div_clock|op_1~17_cout\ = CARRY((\inst8|inst2|control|freq_out[7]~38_combout\ & ((\inst8|inst2|div_clock|cnt\(7)) # (!\inst8|inst2|div_clock|op_1~15_cout\))) # (!\inst8|inst2|control|freq_out[7]~38_combout\ & (\inst8|inst2|div_clock|cnt\(7) & 
-- !\inst8|inst2|div_clock|op_1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|freq_out[7]~38_combout\,
	datab => \inst8|inst2|div_clock|cnt\(7),
	datad => VCC,
	cin => \inst8|inst2|div_clock|op_1~15_cout\,
	cout => \inst8|inst2|div_clock|op_1~17_cout\);

-- Location: LCCOMB_X18_Y13_N16
\inst8|inst2|div_clock|op_1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|div_clock|op_1~19_cout\ = CARRY((\inst8|inst2|div_clock|cnt\(8) & (\inst8|inst2|control|freq_out\(8) & !\inst8|inst2|div_clock|op_1~17_cout\)) # (!\inst8|inst2|div_clock|cnt\(8) & ((\inst8|inst2|control|freq_out\(8)) # 
-- (!\inst8|inst2|div_clock|op_1~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|div_clock|cnt\(8),
	datab => \inst8|inst2|control|freq_out\(8),
	datad => VCC,
	cin => \inst8|inst2|div_clock|op_1~17_cout\,
	cout => \inst8|inst2|div_clock|op_1~19_cout\);

-- Location: LCCOMB_X18_Y13_N18
\inst8|inst2|div_clock|op_1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|div_clock|op_1~21_cout\ = CARRY((\inst8|inst2|control|freq_out\(9) & (\inst8|inst2|div_clock|cnt\(9) & !\inst8|inst2|div_clock|op_1~19_cout\)) # (!\inst8|inst2|control|freq_out\(9) & ((\inst8|inst2|div_clock|cnt\(9)) # 
-- (!\inst8|inst2|div_clock|op_1~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|freq_out\(9),
	datab => \inst8|inst2|div_clock|cnt\(9),
	datad => VCC,
	cin => \inst8|inst2|div_clock|op_1~19_cout\,
	cout => \inst8|inst2|div_clock|op_1~21_cout\);

-- Location: LCCOMB_X18_Y13_N20
\inst8|inst2|div_clock|op_1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|div_clock|op_1~23_cout\ = CARRY((\inst8|inst2|control|freq_out[10]~35_combout\ & (!\inst8|inst2|div_clock|cnt\(10) & !\inst8|inst2|div_clock|op_1~21_cout\)) # (!\inst8|inst2|control|freq_out[10]~35_combout\ & 
-- ((!\inst8|inst2|div_clock|op_1~21_cout\) # (!\inst8|inst2|div_clock|cnt\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|freq_out[10]~35_combout\,
	datab => \inst8|inst2|div_clock|cnt\(10),
	datad => VCC,
	cin => \inst8|inst2|div_clock|op_1~21_cout\,
	cout => \inst8|inst2|div_clock|op_1~23_cout\);

-- Location: LCCOMB_X18_Y13_N22
\inst8|inst2|div_clock|op_1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|div_clock|op_1~25_cout\ = CARRY((\inst8|inst2|div_clock|cnt\(11) & ((\inst8|inst2|control|freq_out[11]~32_combout\) # (!\inst8|inst2|div_clock|op_1~23_cout\))) # (!\inst8|inst2|div_clock|cnt\(11) & 
-- (\inst8|inst2|control|freq_out[11]~32_combout\ & !\inst8|inst2|div_clock|op_1~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|div_clock|cnt\(11),
	datab => \inst8|inst2|control|freq_out[11]~32_combout\,
	datad => VCC,
	cin => \inst8|inst2|div_clock|op_1~23_cout\,
	cout => \inst8|inst2|div_clock|op_1~25_cout\);

-- Location: LCCOMB_X18_Y13_N24
\inst8|inst2|div_clock|op_1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|div_clock|op_1~27_cout\ = CARRY((\inst8|inst2|control|freq_out[12]~31_combout\ & (!\inst8|inst2|div_clock|cnt\(12) & !\inst8|inst2|div_clock|op_1~25_cout\)) # (!\inst8|inst2|control|freq_out[12]~31_combout\ & 
-- ((!\inst8|inst2|div_clock|op_1~25_cout\) # (!\inst8|inst2|div_clock|cnt\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|freq_out[12]~31_combout\,
	datab => \inst8|inst2|div_clock|cnt\(12),
	datad => VCC,
	cin => \inst8|inst2|div_clock|op_1~25_cout\,
	cout => \inst8|inst2|div_clock|op_1~27_cout\);

-- Location: LCCOMB_X18_Y13_N26
\inst8|inst2|div_clock|op_1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|div_clock|op_1~29_cout\ = CARRY((\inst8|inst2|div_clock|cnt\(13) & ((\inst8|inst2|control|freq_out[13]~22_combout\) # (!\inst8|inst2|div_clock|op_1~27_cout\))) # (!\inst8|inst2|div_clock|cnt\(13) & 
-- (\inst8|inst2|control|freq_out[13]~22_combout\ & !\inst8|inst2|div_clock|op_1~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|div_clock|cnt\(13),
	datab => \inst8|inst2|control|freq_out[13]~22_combout\,
	datad => VCC,
	cin => \inst8|inst2|div_clock|op_1~27_cout\,
	cout => \inst8|inst2|div_clock|op_1~29_cout\);

-- Location: LCCOMB_X18_Y13_N28
\inst8|inst2|div_clock|op_1~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|div_clock|op_1~31_cout\ = CARRY((\inst8|inst2|control|freq_out[14]~11_combout\ & (!\inst8|inst2|div_clock|cnt\(14) & !\inst8|inst2|div_clock|op_1~29_cout\)) # (!\inst8|inst2|control|freq_out[14]~11_combout\ & 
-- ((!\inst8|inst2|div_clock|op_1~29_cout\) # (!\inst8|inst2|div_clock|cnt\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|control|freq_out[14]~11_combout\,
	datab => \inst8|inst2|div_clock|cnt\(14),
	datad => VCC,
	cin => \inst8|inst2|div_clock|op_1~29_cout\,
	cout => \inst8|inst2|div_clock|op_1~31_cout\);

-- Location: LCCOMB_X18_Y13_N30
\inst8|inst2|div_clock|op_1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|div_clock|op_1~32_combout\ = (\inst8|inst2|div_clock|cnt\(15) & (\inst8|inst2|div_clock|op_1~31_cout\ & !\inst8|inst2|control|freq_out[15]~49_combout\)) # (!\inst8|inst2|div_clock|cnt\(15) & ((\inst8|inst2|div_clock|op_1~31_cout\) # 
-- (!\inst8|inst2|control|freq_out[15]~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst2|div_clock|cnt\(15),
	datad => \inst8|inst2|control|freq_out[15]~49_combout\,
	cin => \inst8|inst2|div_clock|op_1~31_cout\,
	combout => \inst8|inst2|div_clock|op_1~32_combout\);

-- Location: LCCOMB_X19_Y13_N18
\inst8|inst2|div_clock|op_1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|div_clock|op_1~34_combout\ = (!\inst8|inst2|div_clock|cnt\(17) & !\inst8|inst2|div_clock|cnt\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst2|div_clock|cnt\(17),
	datad => \inst8|inst2|div_clock|cnt\(18),
	combout => \inst8|inst2|div_clock|op_1~34_combout\);

-- Location: LCCOMB_X19_Y13_N20
\inst8|inst2|div_clock|cnt[0]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|div_clock|cnt[0]~50_combout\ = (!\inst8|inst2|div_clock|cnt\(16) & (\inst8|inst2|div_clock|op_1~32_combout\ & (!\inst8|inst2|div_clock|cnt\(0) & \inst8|inst2|div_clock|op_1~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|div_clock|cnt\(16),
	datab => \inst8|inst2|div_clock|op_1~32_combout\,
	datac => \inst8|inst2|div_clock|cnt\(0),
	datad => \inst8|inst2|div_clock|op_1~34_combout\,
	combout => \inst8|inst2|div_clock|cnt[0]~50_combout\);

-- Location: FF_X19_Y13_N21
\inst8|inst2|div_clock|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst2|control|clk_out~clkctrl_outclk\,
	d => \inst8|inst2|div_clock|cnt[0]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|div_clock|cnt\(0));

-- Location: LCCOMB_X19_Y14_N16
\inst8|inst2|div_clock|cnt[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|div_clock|cnt[2]~20_combout\ = (\inst8|inst2|div_clock|cnt\(2) & (!\inst8|inst2|div_clock|cnt[1]~19\)) # (!\inst8|inst2|div_clock|cnt\(2) & ((\inst8|inst2|div_clock|cnt[1]~19\) # (GND)))
-- \inst8|inst2|div_clock|cnt[2]~21\ = CARRY((!\inst8|inst2|div_clock|cnt[1]~19\) # (!\inst8|inst2|div_clock|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst2|div_clock|cnt\(2),
	datad => VCC,
	cin => \inst8|inst2|div_clock|cnt[1]~19\,
	combout => \inst8|inst2|div_clock|cnt[2]~20_combout\,
	cout => \inst8|inst2|div_clock|cnt[2]~21\);

-- Location: FF_X19_Y14_N17
\inst8|inst2|div_clock|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst2|control|clk_out~clkctrl_outclk\,
	d => \inst8|inst2|div_clock|cnt[2]~20_combout\,
	sclr => \inst8|inst2|div_clock|op_1~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|div_clock|cnt\(2));

-- Location: LCCOMB_X19_Y14_N18
\inst8|inst2|div_clock|cnt[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|div_clock|cnt[3]~22_combout\ = (\inst8|inst2|div_clock|cnt\(3) & (\inst8|inst2|div_clock|cnt[2]~21\ $ (GND))) # (!\inst8|inst2|div_clock|cnt\(3) & (!\inst8|inst2|div_clock|cnt[2]~21\ & VCC))
-- \inst8|inst2|div_clock|cnt[3]~23\ = CARRY((\inst8|inst2|div_clock|cnt\(3) & !\inst8|inst2|div_clock|cnt[2]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst2|div_clock|cnt\(3),
	datad => VCC,
	cin => \inst8|inst2|div_clock|cnt[2]~21\,
	combout => \inst8|inst2|div_clock|cnt[3]~22_combout\,
	cout => \inst8|inst2|div_clock|cnt[3]~23\);

-- Location: FF_X19_Y14_N19
\inst8|inst2|div_clock|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst2|control|clk_out~clkctrl_outclk\,
	d => \inst8|inst2|div_clock|cnt[3]~22_combout\,
	sclr => \inst8|inst2|div_clock|op_1~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|div_clock|cnt\(3));

-- Location: LCCOMB_X19_Y14_N20
\inst8|inst2|div_clock|cnt[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|div_clock|cnt[4]~24_combout\ = (\inst8|inst2|div_clock|cnt\(4) & (!\inst8|inst2|div_clock|cnt[3]~23\)) # (!\inst8|inst2|div_clock|cnt\(4) & ((\inst8|inst2|div_clock|cnt[3]~23\) # (GND)))
-- \inst8|inst2|div_clock|cnt[4]~25\ = CARRY((!\inst8|inst2|div_clock|cnt[3]~23\) # (!\inst8|inst2|div_clock|cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst2|div_clock|cnt\(4),
	datad => VCC,
	cin => \inst8|inst2|div_clock|cnt[3]~23\,
	combout => \inst8|inst2|div_clock|cnt[4]~24_combout\,
	cout => \inst8|inst2|div_clock|cnt[4]~25\);

-- Location: FF_X19_Y14_N21
\inst8|inst2|div_clock|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst2|control|clk_out~clkctrl_outclk\,
	d => \inst8|inst2|div_clock|cnt[4]~24_combout\,
	sclr => \inst8|inst2|div_clock|op_1~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|div_clock|cnt\(4));

-- Location: LCCOMB_X19_Y14_N22
\inst8|inst2|div_clock|cnt[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|div_clock|cnt[5]~26_combout\ = (\inst8|inst2|div_clock|cnt\(5) & (\inst8|inst2|div_clock|cnt[4]~25\ $ (GND))) # (!\inst8|inst2|div_clock|cnt\(5) & (!\inst8|inst2|div_clock|cnt[4]~25\ & VCC))
-- \inst8|inst2|div_clock|cnt[5]~27\ = CARRY((\inst8|inst2|div_clock|cnt\(5) & !\inst8|inst2|div_clock|cnt[4]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|div_clock|cnt\(5),
	datad => VCC,
	cin => \inst8|inst2|div_clock|cnt[4]~25\,
	combout => \inst8|inst2|div_clock|cnt[5]~26_combout\,
	cout => \inst8|inst2|div_clock|cnt[5]~27\);

-- Location: FF_X19_Y14_N23
\inst8|inst2|div_clock|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst2|control|clk_out~clkctrl_outclk\,
	d => \inst8|inst2|div_clock|cnt[5]~26_combout\,
	sclr => \inst8|inst2|div_clock|op_1~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|div_clock|cnt\(5));

-- Location: LCCOMB_X19_Y14_N24
\inst8|inst2|div_clock|cnt[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|div_clock|cnt[6]~28_combout\ = (\inst8|inst2|div_clock|cnt\(6) & (!\inst8|inst2|div_clock|cnt[5]~27\)) # (!\inst8|inst2|div_clock|cnt\(6) & ((\inst8|inst2|div_clock|cnt[5]~27\) # (GND)))
-- \inst8|inst2|div_clock|cnt[6]~29\ = CARRY((!\inst8|inst2|div_clock|cnt[5]~27\) # (!\inst8|inst2|div_clock|cnt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst2|div_clock|cnt\(6),
	datad => VCC,
	cin => \inst8|inst2|div_clock|cnt[5]~27\,
	combout => \inst8|inst2|div_clock|cnt[6]~28_combout\,
	cout => \inst8|inst2|div_clock|cnt[6]~29\);

-- Location: FF_X19_Y14_N25
\inst8|inst2|div_clock|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst2|control|clk_out~clkctrl_outclk\,
	d => \inst8|inst2|div_clock|cnt[6]~28_combout\,
	sclr => \inst8|inst2|div_clock|op_1~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|div_clock|cnt\(6));

-- Location: LCCOMB_X19_Y14_N26
\inst8|inst2|div_clock|cnt[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|div_clock|cnt[7]~30_combout\ = (\inst8|inst2|div_clock|cnt\(7) & (\inst8|inst2|div_clock|cnt[6]~29\ $ (GND))) # (!\inst8|inst2|div_clock|cnt\(7) & (!\inst8|inst2|div_clock|cnt[6]~29\ & VCC))
-- \inst8|inst2|div_clock|cnt[7]~31\ = CARRY((\inst8|inst2|div_clock|cnt\(7) & !\inst8|inst2|div_clock|cnt[6]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|div_clock|cnt\(7),
	datad => VCC,
	cin => \inst8|inst2|div_clock|cnt[6]~29\,
	combout => \inst8|inst2|div_clock|cnt[7]~30_combout\,
	cout => \inst8|inst2|div_clock|cnt[7]~31\);

-- Location: FF_X19_Y14_N27
\inst8|inst2|div_clock|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst2|control|clk_out~clkctrl_outclk\,
	d => \inst8|inst2|div_clock|cnt[7]~30_combout\,
	sclr => \inst8|inst2|div_clock|op_1~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|div_clock|cnt\(7));

-- Location: LCCOMB_X19_Y14_N28
\inst8|inst2|div_clock|cnt[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|div_clock|cnt[8]~32_combout\ = (\inst8|inst2|div_clock|cnt\(8) & (!\inst8|inst2|div_clock|cnt[7]~31\)) # (!\inst8|inst2|div_clock|cnt\(8) & ((\inst8|inst2|div_clock|cnt[7]~31\) # (GND)))
-- \inst8|inst2|div_clock|cnt[8]~33\ = CARRY((!\inst8|inst2|div_clock|cnt[7]~31\) # (!\inst8|inst2|div_clock|cnt\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst2|div_clock|cnt\(8),
	datad => VCC,
	cin => \inst8|inst2|div_clock|cnt[7]~31\,
	combout => \inst8|inst2|div_clock|cnt[8]~32_combout\,
	cout => \inst8|inst2|div_clock|cnt[8]~33\);

-- Location: FF_X19_Y14_N29
\inst8|inst2|div_clock|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst2|control|clk_out~clkctrl_outclk\,
	d => \inst8|inst2|div_clock|cnt[8]~32_combout\,
	sclr => \inst8|inst2|div_clock|op_1~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|div_clock|cnt\(8));

-- Location: LCCOMB_X19_Y14_N30
\inst8|inst2|div_clock|cnt[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|div_clock|cnt[9]~34_combout\ = (\inst8|inst2|div_clock|cnt\(9) & (\inst8|inst2|div_clock|cnt[8]~33\ $ (GND))) # (!\inst8|inst2|div_clock|cnt\(9) & (!\inst8|inst2|div_clock|cnt[8]~33\ & VCC))
-- \inst8|inst2|div_clock|cnt[9]~35\ = CARRY((\inst8|inst2|div_clock|cnt\(9) & !\inst8|inst2|div_clock|cnt[8]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|div_clock|cnt\(9),
	datad => VCC,
	cin => \inst8|inst2|div_clock|cnt[8]~33\,
	combout => \inst8|inst2|div_clock|cnt[9]~34_combout\,
	cout => \inst8|inst2|div_clock|cnt[9]~35\);

-- Location: FF_X19_Y14_N31
\inst8|inst2|div_clock|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst2|control|clk_out~clkctrl_outclk\,
	d => \inst8|inst2|div_clock|cnt[9]~34_combout\,
	sclr => \inst8|inst2|div_clock|op_1~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|div_clock|cnt\(9));

-- Location: LCCOMB_X19_Y13_N0
\inst8|inst2|div_clock|cnt[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|div_clock|cnt[10]~36_combout\ = (\inst8|inst2|div_clock|cnt\(10) & (!\inst8|inst2|div_clock|cnt[9]~35\)) # (!\inst8|inst2|div_clock|cnt\(10) & ((\inst8|inst2|div_clock|cnt[9]~35\) # (GND)))
-- \inst8|inst2|div_clock|cnt[10]~37\ = CARRY((!\inst8|inst2|div_clock|cnt[9]~35\) # (!\inst8|inst2|div_clock|cnt\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst2|div_clock|cnt\(10),
	datad => VCC,
	cin => \inst8|inst2|div_clock|cnt[9]~35\,
	combout => \inst8|inst2|div_clock|cnt[10]~36_combout\,
	cout => \inst8|inst2|div_clock|cnt[10]~37\);

-- Location: FF_X19_Y13_N1
\inst8|inst2|div_clock|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst2|control|clk_out~clkctrl_outclk\,
	d => \inst8|inst2|div_clock|cnt[10]~36_combout\,
	sclr => \inst8|inst2|div_clock|op_1~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|div_clock|cnt\(10));

-- Location: LCCOMB_X19_Y13_N2
\inst8|inst2|div_clock|cnt[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|div_clock|cnt[11]~38_combout\ = (\inst8|inst2|div_clock|cnt\(11) & (\inst8|inst2|div_clock|cnt[10]~37\ $ (GND))) # (!\inst8|inst2|div_clock|cnt\(11) & (!\inst8|inst2|div_clock|cnt[10]~37\ & VCC))
-- \inst8|inst2|div_clock|cnt[11]~39\ = CARRY((\inst8|inst2|div_clock|cnt\(11) & !\inst8|inst2|div_clock|cnt[10]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst2|div_clock|cnt\(11),
	datad => VCC,
	cin => \inst8|inst2|div_clock|cnt[10]~37\,
	combout => \inst8|inst2|div_clock|cnt[11]~38_combout\,
	cout => \inst8|inst2|div_clock|cnt[11]~39\);

-- Location: FF_X19_Y13_N3
\inst8|inst2|div_clock|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst2|control|clk_out~clkctrl_outclk\,
	d => \inst8|inst2|div_clock|cnt[11]~38_combout\,
	sclr => \inst8|inst2|div_clock|op_1~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|div_clock|cnt\(11));

-- Location: LCCOMB_X19_Y13_N4
\inst8|inst2|div_clock|cnt[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|div_clock|cnt[12]~40_combout\ = (\inst8|inst2|div_clock|cnt\(12) & (!\inst8|inst2|div_clock|cnt[11]~39\)) # (!\inst8|inst2|div_clock|cnt\(12) & ((\inst8|inst2|div_clock|cnt[11]~39\) # (GND)))
-- \inst8|inst2|div_clock|cnt[12]~41\ = CARRY((!\inst8|inst2|div_clock|cnt[11]~39\) # (!\inst8|inst2|div_clock|cnt\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst2|div_clock|cnt\(12),
	datad => VCC,
	cin => \inst8|inst2|div_clock|cnt[11]~39\,
	combout => \inst8|inst2|div_clock|cnt[12]~40_combout\,
	cout => \inst8|inst2|div_clock|cnt[12]~41\);

-- Location: FF_X19_Y13_N5
\inst8|inst2|div_clock|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst2|control|clk_out~clkctrl_outclk\,
	d => \inst8|inst2|div_clock|cnt[12]~40_combout\,
	sclr => \inst8|inst2|div_clock|op_1~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|div_clock|cnt\(12));

-- Location: LCCOMB_X19_Y13_N6
\inst8|inst2|div_clock|cnt[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|div_clock|cnt[13]~42_combout\ = (\inst8|inst2|div_clock|cnt\(13) & (\inst8|inst2|div_clock|cnt[12]~41\ $ (GND))) # (!\inst8|inst2|div_clock|cnt\(13) & (!\inst8|inst2|div_clock|cnt[12]~41\ & VCC))
-- \inst8|inst2|div_clock|cnt[13]~43\ = CARRY((\inst8|inst2|div_clock|cnt\(13) & !\inst8|inst2|div_clock|cnt[12]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|div_clock|cnt\(13),
	datad => VCC,
	cin => \inst8|inst2|div_clock|cnt[12]~41\,
	combout => \inst8|inst2|div_clock|cnt[13]~42_combout\,
	cout => \inst8|inst2|div_clock|cnt[13]~43\);

-- Location: FF_X19_Y13_N7
\inst8|inst2|div_clock|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst2|control|clk_out~clkctrl_outclk\,
	d => \inst8|inst2|div_clock|cnt[13]~42_combout\,
	sclr => \inst8|inst2|div_clock|op_1~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|div_clock|cnt\(13));

-- Location: LCCOMB_X19_Y13_N8
\inst8|inst2|div_clock|cnt[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|div_clock|cnt[14]~44_combout\ = (\inst8|inst2|div_clock|cnt\(14) & (!\inst8|inst2|div_clock|cnt[13]~43\)) # (!\inst8|inst2|div_clock|cnt\(14) & ((\inst8|inst2|div_clock|cnt[13]~43\) # (GND)))
-- \inst8|inst2|div_clock|cnt[14]~45\ = CARRY((!\inst8|inst2|div_clock|cnt[13]~43\) # (!\inst8|inst2|div_clock|cnt\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst2|div_clock|cnt\(14),
	datad => VCC,
	cin => \inst8|inst2|div_clock|cnt[13]~43\,
	combout => \inst8|inst2|div_clock|cnt[14]~44_combout\,
	cout => \inst8|inst2|div_clock|cnt[14]~45\);

-- Location: FF_X19_Y13_N9
\inst8|inst2|div_clock|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst2|control|clk_out~clkctrl_outclk\,
	d => \inst8|inst2|div_clock|cnt[14]~44_combout\,
	sclr => \inst8|inst2|div_clock|op_1~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|div_clock|cnt\(14));

-- Location: LCCOMB_X19_Y13_N10
\inst8|inst2|div_clock|cnt[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|div_clock|cnt[15]~46_combout\ = (\inst8|inst2|div_clock|cnt\(15) & (\inst8|inst2|div_clock|cnt[14]~45\ $ (GND))) # (!\inst8|inst2|div_clock|cnt\(15) & (!\inst8|inst2|div_clock|cnt[14]~45\ & VCC))
-- \inst8|inst2|div_clock|cnt[15]~47\ = CARRY((\inst8|inst2|div_clock|cnt\(15) & !\inst8|inst2|div_clock|cnt[14]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|div_clock|cnt\(15),
	datad => VCC,
	cin => \inst8|inst2|div_clock|cnt[14]~45\,
	combout => \inst8|inst2|div_clock|cnt[15]~46_combout\,
	cout => \inst8|inst2|div_clock|cnt[15]~47\);

-- Location: FF_X19_Y13_N11
\inst8|inst2|div_clock|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst2|control|clk_out~clkctrl_outclk\,
	d => \inst8|inst2|div_clock|cnt[15]~46_combout\,
	sclr => \inst8|inst2|div_clock|op_1~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|div_clock|cnt\(15));

-- Location: FF_X19_Y13_N13
\inst8|inst2|div_clock|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst2|control|clk_out~clkctrl_outclk\,
	d => \inst8|inst2|div_clock|cnt[16]~48_combout\,
	sclr => \inst8|inst2|div_clock|op_1~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|div_clock|cnt\(16));

-- Location: LCCOMB_X19_Y13_N30
\inst8|inst2|div_clock|alternador~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|div_clock|alternador~1_combout\ = \inst8|inst2|div_clock|alternador~q\ $ (((\inst8|inst2|div_clock|cnt\(16)) # ((!\inst8|inst2|div_clock|op_1~34_combout\) # (!\inst8|inst2|div_clock|op_1~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|div_clock|cnt\(16),
	datab => \inst8|inst2|div_clock|op_1~32_combout\,
	datac => \inst8|inst2|div_clock|alternador~q\,
	datad => \inst8|inst2|div_clock|op_1~34_combout\,
	combout => \inst8|inst2|div_clock|alternador~1_combout\);

-- Location: FF_X19_Y13_N31
\inst8|inst2|div_clock|alternador\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst2|control|clk_out~clkctrl_outclk\,
	d => \inst8|inst2|div_clock|alternador~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|div_clock|alternador~q\);

-- Location: IOIBUF_X34_Y12_N1
\key[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(4),
	o => \key[4]~input_o\);

-- Location: LCCOMB_X31_Y10_N28
\inst|inst3|ff1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|ff1~feeder_combout\ = \key[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key[4]~input_o\,
	combout => \inst|inst3|ff1~feeder_combout\);

-- Location: FF_X31_Y10_N29
\inst|inst3|ff1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst3|ff1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|ff1~q\);

-- Location: FF_X31_Y10_N27
\inst|inst3|ff2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst|inst3|ff1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|ff2~q\);

-- Location: LCCOMB_X31_Y10_N22
\inst|inst3|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|_~7_combout\ = (!\inst|inst3|contador\(0) & (!\inst|inst3|_~6_combout\ & (\inst|inst3|ff2~q\ $ (!\inst|inst3|ff1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|ff2~q\,
	datab => \inst|inst3|ff1~q\,
	datac => \inst|inst3|contador\(0),
	datad => \inst|inst3|_~6_combout\,
	combout => \inst|inst3|_~7_combout\);

-- Location: FF_X31_Y10_N23
\inst|inst3|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst3|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|contador\(0));

-- Location: LCCOMB_X32_Y11_N12
\inst|inst3|contador[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|contador[1]~20_combout\ = (\inst|inst3|contador\(1) & (\inst|inst3|contador\(0) $ (VCC))) # (!\inst|inst3|contador\(1) & (\inst|inst3|contador\(0) & VCC))
-- \inst|inst3|contador[1]~21\ = CARRY((\inst|inst3|contador\(1) & \inst|inst3|contador\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|contador\(1),
	datab => \inst|inst3|contador\(0),
	datad => VCC,
	combout => \inst|inst3|contador[1]~20_combout\,
	cout => \inst|inst3|contador[1]~21\);

-- Location: LCCOMB_X31_Y10_N0
\inst|inst3|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|_~8_combout\ = (\inst|inst3|_~6_combout\) # (\inst|inst3|ff1~q\ $ (\inst|inst3|ff2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|ff1~q\,
	datac => \inst|inst3|ff2~q\,
	datad => \inst|inst3|_~6_combout\,
	combout => \inst|inst3|_~8_combout\);

-- Location: FF_X32_Y11_N13
\inst|inst3|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst3|contador[1]~20_combout\,
	sclr => \inst|inst3|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|contador\(1));

-- Location: LCCOMB_X32_Y11_N14
\inst|inst3|contador[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|contador[2]~22_combout\ = (\inst|inst3|contador\(2) & (!\inst|inst3|contador[1]~21\)) # (!\inst|inst3|contador\(2) & ((\inst|inst3|contador[1]~21\) # (GND)))
-- \inst|inst3|contador[2]~23\ = CARRY((!\inst|inst3|contador[1]~21\) # (!\inst|inst3|contador\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|contador\(2),
	datad => VCC,
	cin => \inst|inst3|contador[1]~21\,
	combout => \inst|inst3|contador[2]~22_combout\,
	cout => \inst|inst3|contador[2]~23\);

-- Location: FF_X32_Y11_N15
\inst|inst3|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst3|contador[2]~22_combout\,
	sclr => \inst|inst3|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|contador\(2));

-- Location: LCCOMB_X32_Y11_N16
\inst|inst3|contador[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|contador[3]~24_combout\ = (\inst|inst3|contador\(3) & (\inst|inst3|contador[2]~23\ $ (GND))) # (!\inst|inst3|contador\(3) & (!\inst|inst3|contador[2]~23\ & VCC))
-- \inst|inst3|contador[3]~25\ = CARRY((\inst|inst3|contador\(3) & !\inst|inst3|contador[2]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|contador\(3),
	datad => VCC,
	cin => \inst|inst3|contador[2]~23\,
	combout => \inst|inst3|contador[3]~24_combout\,
	cout => \inst|inst3|contador[3]~25\);

-- Location: FF_X32_Y11_N17
\inst|inst3|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst3|contador[3]~24_combout\,
	sclr => \inst|inst3|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|contador\(3));

-- Location: LCCOMB_X32_Y11_N18
\inst|inst3|contador[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|contador[4]~26_combout\ = (\inst|inst3|contador\(4) & (!\inst|inst3|contador[3]~25\)) # (!\inst|inst3|contador\(4) & ((\inst|inst3|contador[3]~25\) # (GND)))
-- \inst|inst3|contador[4]~27\ = CARRY((!\inst|inst3|contador[3]~25\) # (!\inst|inst3|contador\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|contador\(4),
	datad => VCC,
	cin => \inst|inst3|contador[3]~25\,
	combout => \inst|inst3|contador[4]~26_combout\,
	cout => \inst|inst3|contador[4]~27\);

-- Location: FF_X32_Y11_N19
\inst|inst3|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst3|contador[4]~26_combout\,
	sclr => \inst|inst3|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|contador\(4));

-- Location: LCCOMB_X32_Y11_N20
\inst|inst3|contador[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|contador[5]~28_combout\ = (\inst|inst3|contador\(5) & (\inst|inst3|contador[4]~27\ $ (GND))) # (!\inst|inst3|contador\(5) & (!\inst|inst3|contador[4]~27\ & VCC))
-- \inst|inst3|contador[5]~29\ = CARRY((\inst|inst3|contador\(5) & !\inst|inst3|contador[4]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|contador\(5),
	datad => VCC,
	cin => \inst|inst3|contador[4]~27\,
	combout => \inst|inst3|contador[5]~28_combout\,
	cout => \inst|inst3|contador[5]~29\);

-- Location: FF_X32_Y11_N21
\inst|inst3|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst3|contador[5]~28_combout\,
	sclr => \inst|inst3|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|contador\(5));

-- Location: LCCOMB_X32_Y11_N22
\inst|inst3|contador[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|contador[6]~30_combout\ = (\inst|inst3|contador\(6) & (!\inst|inst3|contador[5]~29\)) # (!\inst|inst3|contador\(6) & ((\inst|inst3|contador[5]~29\) # (GND)))
-- \inst|inst3|contador[6]~31\ = CARRY((!\inst|inst3|contador[5]~29\) # (!\inst|inst3|contador\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|contador\(6),
	datad => VCC,
	cin => \inst|inst3|contador[5]~29\,
	combout => \inst|inst3|contador[6]~30_combout\,
	cout => \inst|inst3|contador[6]~31\);

-- Location: FF_X32_Y11_N23
\inst|inst3|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst3|contador[6]~30_combout\,
	sclr => \inst|inst3|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|contador\(6));

-- Location: LCCOMB_X32_Y11_N24
\inst|inst3|contador[7]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|contador[7]~32_combout\ = (\inst|inst3|contador\(7) & (\inst|inst3|contador[6]~31\ $ (GND))) # (!\inst|inst3|contador\(7) & (!\inst|inst3|contador[6]~31\ & VCC))
-- \inst|inst3|contador[7]~33\ = CARRY((\inst|inst3|contador\(7) & !\inst|inst3|contador[6]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|contador\(7),
	datad => VCC,
	cin => \inst|inst3|contador[6]~31\,
	combout => \inst|inst3|contador[7]~32_combout\,
	cout => \inst|inst3|contador[7]~33\);

-- Location: FF_X32_Y11_N25
\inst|inst3|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst3|contador[7]~32_combout\,
	sclr => \inst|inst3|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|contador\(7));

-- Location: LCCOMB_X32_Y11_N26
\inst|inst3|contador[8]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|contador[8]~34_combout\ = (\inst|inst3|contador\(8) & (!\inst|inst3|contador[7]~33\)) # (!\inst|inst3|contador\(8) & ((\inst|inst3|contador[7]~33\) # (GND)))
-- \inst|inst3|contador[8]~35\ = CARRY((!\inst|inst3|contador[7]~33\) # (!\inst|inst3|contador\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|contador\(8),
	datad => VCC,
	cin => \inst|inst3|contador[7]~33\,
	combout => \inst|inst3|contador[8]~34_combout\,
	cout => \inst|inst3|contador[8]~35\);

-- Location: FF_X32_Y11_N27
\inst|inst3|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst3|contador[8]~34_combout\,
	sclr => \inst|inst3|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|contador\(8));

-- Location: LCCOMB_X32_Y11_N28
\inst|inst3|contador[9]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|contador[9]~36_combout\ = (\inst|inst3|contador\(9) & (\inst|inst3|contador[8]~35\ $ (GND))) # (!\inst|inst3|contador\(9) & (!\inst|inst3|contador[8]~35\ & VCC))
-- \inst|inst3|contador[9]~37\ = CARRY((\inst|inst3|contador\(9) & !\inst|inst3|contador[8]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|contador\(9),
	datad => VCC,
	cin => \inst|inst3|contador[8]~35\,
	combout => \inst|inst3|contador[9]~36_combout\,
	cout => \inst|inst3|contador[9]~37\);

-- Location: FF_X32_Y11_N29
\inst|inst3|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst3|contador[9]~36_combout\,
	sclr => \inst|inst3|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|contador\(9));

-- Location: LCCOMB_X32_Y11_N30
\inst|inst3|contador[10]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|contador[10]~38_combout\ = (\inst|inst3|contador\(10) & (!\inst|inst3|contador[9]~37\)) # (!\inst|inst3|contador\(10) & ((\inst|inst3|contador[9]~37\) # (GND)))
-- \inst|inst3|contador[10]~39\ = CARRY((!\inst|inst3|contador[9]~37\) # (!\inst|inst3|contador\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|contador\(10),
	datad => VCC,
	cin => \inst|inst3|contador[9]~37\,
	combout => \inst|inst3|contador[10]~38_combout\,
	cout => \inst|inst3|contador[10]~39\);

-- Location: FF_X32_Y11_N31
\inst|inst3|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst3|contador[10]~38_combout\,
	sclr => \inst|inst3|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|contador\(10));

-- Location: LCCOMB_X32_Y10_N0
\inst|inst3|contador[11]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|contador[11]~40_combout\ = (\inst|inst3|contador\(11) & (\inst|inst3|contador[10]~39\ $ (GND))) # (!\inst|inst3|contador\(11) & (!\inst|inst3|contador[10]~39\ & VCC))
-- \inst|inst3|contador[11]~41\ = CARRY((\inst|inst3|contador\(11) & !\inst|inst3|contador[10]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|contador\(11),
	datad => VCC,
	cin => \inst|inst3|contador[10]~39\,
	combout => \inst|inst3|contador[11]~40_combout\,
	cout => \inst|inst3|contador[11]~41\);

-- Location: FF_X32_Y10_N1
\inst|inst3|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst3|contador[11]~40_combout\,
	sclr => \inst|inst3|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|contador\(11));

-- Location: LCCOMB_X32_Y10_N2
\inst|inst3|contador[12]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|contador[12]~42_combout\ = (\inst|inst3|contador\(12) & (!\inst|inst3|contador[11]~41\)) # (!\inst|inst3|contador\(12) & ((\inst|inst3|contador[11]~41\) # (GND)))
-- \inst|inst3|contador[12]~43\ = CARRY((!\inst|inst3|contador[11]~41\) # (!\inst|inst3|contador\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|contador\(12),
	datad => VCC,
	cin => \inst|inst3|contador[11]~41\,
	combout => \inst|inst3|contador[12]~42_combout\,
	cout => \inst|inst3|contador[12]~43\);

-- Location: FF_X32_Y10_N3
\inst|inst3|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst3|contador[12]~42_combout\,
	sclr => \inst|inst3|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|contador\(12));

-- Location: LCCOMB_X32_Y10_N4
\inst|inst3|contador[13]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|contador[13]~44_combout\ = (\inst|inst3|contador\(13) & (\inst|inst3|contador[12]~43\ $ (GND))) # (!\inst|inst3|contador\(13) & (!\inst|inst3|contador[12]~43\ & VCC))
-- \inst|inst3|contador[13]~45\ = CARRY((\inst|inst3|contador\(13) & !\inst|inst3|contador[12]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|contador\(13),
	datad => VCC,
	cin => \inst|inst3|contador[12]~43\,
	combout => \inst|inst3|contador[13]~44_combout\,
	cout => \inst|inst3|contador[13]~45\);

-- Location: FF_X32_Y10_N5
\inst|inst3|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst3|contador[13]~44_combout\,
	sclr => \inst|inst3|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|contador\(13));

-- Location: LCCOMB_X32_Y10_N6
\inst|inst3|contador[14]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|contador[14]~46_combout\ = (\inst|inst3|contador\(14) & (!\inst|inst3|contador[13]~45\)) # (!\inst|inst3|contador\(14) & ((\inst|inst3|contador[13]~45\) # (GND)))
-- \inst|inst3|contador[14]~47\ = CARRY((!\inst|inst3|contador[13]~45\) # (!\inst|inst3|contador\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|contador\(14),
	datad => VCC,
	cin => \inst|inst3|contador[13]~45\,
	combout => \inst|inst3|contador[14]~46_combout\,
	cout => \inst|inst3|contador[14]~47\);

-- Location: FF_X32_Y10_N7
\inst|inst3|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst3|contador[14]~46_combout\,
	sclr => \inst|inst3|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|contador\(14));

-- Location: LCCOMB_X32_Y10_N8
\inst|inst3|contador[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|contador[15]~48_combout\ = (\inst|inst3|contador\(15) & (\inst|inst3|contador[14]~47\ $ (GND))) # (!\inst|inst3|contador\(15) & (!\inst|inst3|contador[14]~47\ & VCC))
-- \inst|inst3|contador[15]~49\ = CARRY((\inst|inst3|contador\(15) & !\inst|inst3|contador[14]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|contador\(15),
	datad => VCC,
	cin => \inst|inst3|contador[14]~47\,
	combout => \inst|inst3|contador[15]~48_combout\,
	cout => \inst|inst3|contador[15]~49\);

-- Location: FF_X32_Y10_N9
\inst|inst3|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst3|contador[15]~48_combout\,
	sclr => \inst|inst3|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|contador\(15));

-- Location: LCCOMB_X32_Y10_N10
\inst|inst3|contador[16]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|contador[16]~50_combout\ = (\inst|inst3|contador\(16) & (!\inst|inst3|contador[15]~49\)) # (!\inst|inst3|contador\(16) & ((\inst|inst3|contador[15]~49\) # (GND)))
-- \inst|inst3|contador[16]~51\ = CARRY((!\inst|inst3|contador[15]~49\) # (!\inst|inst3|contador\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|contador\(16),
	datad => VCC,
	cin => \inst|inst3|contador[15]~49\,
	combout => \inst|inst3|contador[16]~50_combout\,
	cout => \inst|inst3|contador[16]~51\);

-- Location: FF_X32_Y10_N11
\inst|inst3|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst3|contador[16]~50_combout\,
	sclr => \inst|inst3|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|contador\(16));

-- Location: LCCOMB_X32_Y10_N12
\inst|inst3|contador[17]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|contador[17]~52_combout\ = (\inst|inst3|contador\(17) & (\inst|inst3|contador[16]~51\ $ (GND))) # (!\inst|inst3|contador\(17) & (!\inst|inst3|contador[16]~51\ & VCC))
-- \inst|inst3|contador[17]~53\ = CARRY((\inst|inst3|contador\(17) & !\inst|inst3|contador[16]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|contador\(17),
	datad => VCC,
	cin => \inst|inst3|contador[16]~51\,
	combout => \inst|inst3|contador[17]~52_combout\,
	cout => \inst|inst3|contador[17]~53\);

-- Location: FF_X32_Y10_N13
\inst|inst3|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst3|contador[17]~52_combout\,
	sclr => \inst|inst3|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|contador\(17));

-- Location: LCCOMB_X32_Y10_N14
\inst|inst3|contador[18]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|contador[18]~54_combout\ = (\inst|inst3|contador\(18) & (!\inst|inst3|contador[17]~53\)) # (!\inst|inst3|contador\(18) & ((\inst|inst3|contador[17]~53\) # (GND)))
-- \inst|inst3|contador[18]~55\ = CARRY((!\inst|inst3|contador[17]~53\) # (!\inst|inst3|contador\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|contador\(18),
	datad => VCC,
	cin => \inst|inst3|contador[17]~53\,
	combout => \inst|inst3|contador[18]~54_combout\,
	cout => \inst|inst3|contador[18]~55\);

-- Location: FF_X32_Y10_N15
\inst|inst3|contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst3|contador[18]~54_combout\,
	sclr => \inst|inst3|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|contador\(18));

-- Location: LCCOMB_X32_Y10_N16
\inst|inst3|contador[19]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|contador[19]~56_combout\ = (\inst|inst3|contador\(19) & (\inst|inst3|contador[18]~55\ $ (GND))) # (!\inst|inst3|contador\(19) & (!\inst|inst3|contador[18]~55\ & VCC))
-- \inst|inst3|contador[19]~57\ = CARRY((\inst|inst3|contador\(19) & !\inst|inst3|contador[18]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|contador\(19),
	datad => VCC,
	cin => \inst|inst3|contador[18]~55\,
	combout => \inst|inst3|contador[19]~56_combout\,
	cout => \inst|inst3|contador[19]~57\);

-- Location: FF_X32_Y10_N17
\inst|inst3|contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst3|contador[19]~56_combout\,
	sclr => \inst|inst3|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|contador\(19));

-- Location: LCCOMB_X32_Y10_N18
\inst|inst3|contador[20]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|contador[20]~58_combout\ = \inst|inst3|contador\(20) $ (\inst|inst3|contador[19]~57\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|contador\(20),
	cin => \inst|inst3|contador[19]~57\,
	combout => \inst|inst3|contador[20]~58_combout\);

-- Location: FF_X32_Y10_N19
\inst|inst3|contador[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst3|contador[20]~58_combout\,
	sclr => \inst|inst3|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|contador\(20));

-- Location: LCCOMB_X32_Y10_N30
\inst|inst3|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|_~5_combout\ = (!\inst|inst3|contador\(16) & (!\inst|inst3|contador\(19) & (\inst|inst3|contador\(18) & \inst|inst3|contador\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|contador\(16),
	datab => \inst|inst3|contador\(19),
	datac => \inst|inst3|contador\(18),
	datad => \inst|inst3|contador\(17),
	combout => \inst|inst3|_~5_combout\);

-- Location: LCCOMB_X32_Y10_N20
\inst|inst3|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|_~3_combout\ = (\inst|inst3|contador\(14) & (\inst|inst3|contador\(13) & (\inst|inst3|contador\(15) & !\inst|inst3|contador\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|contador\(14),
	datab => \inst|inst3|contador\(13),
	datac => \inst|inst3|contador\(15),
	datad => \inst|inst3|contador\(12),
	combout => \inst|inst3|_~3_combout\);

-- Location: LCCOMB_X31_Y10_N4
\inst|inst3|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|_~0_combout\ = (!\inst|inst3|contador\(3) & (!\inst|inst3|contador\(0) & (!\inst|inst3|contador\(1) & !\inst|inst3|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|contador\(3),
	datab => \inst|inst3|contador\(0),
	datac => \inst|inst3|contador\(1),
	datad => \inst|inst3|contador\(2),
	combout => \inst|inst3|_~0_combout\);

-- Location: LCCOMB_X31_Y10_N30
\inst|inst3|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|_~2_combout\ = (!\inst|inst3|contador\(11) & (\inst|inst3|contador\(9) & (!\inst|inst3|contador\(10) & \inst|inst3|contador\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|contador\(11),
	datab => \inst|inst3|contador\(9),
	datac => \inst|inst3|contador\(10),
	datad => \inst|inst3|contador\(8),
	combout => \inst|inst3|_~2_combout\);

-- Location: LCCOMB_X32_Y11_N0
\inst|inst3|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|_~1_combout\ = (\inst|inst3|contador\(5) & (!\inst|inst3|contador\(4) & (\inst|inst3|contador\(6) & !\inst|inst3|contador\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|contador\(5),
	datab => \inst|inst3|contador\(4),
	datac => \inst|inst3|contador\(6),
	datad => \inst|inst3|contador\(7),
	combout => \inst|inst3|_~1_combout\);

-- Location: LCCOMB_X31_Y10_N20
\inst|inst3|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|_~4_combout\ = (\inst|inst3|_~3_combout\ & (\inst|inst3|_~0_combout\ & (\inst|inst3|_~2_combout\ & \inst|inst3|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|_~3_combout\,
	datab => \inst|inst3|_~0_combout\,
	datac => \inst|inst3|_~2_combout\,
	datad => \inst|inst3|_~1_combout\,
	combout => \inst|inst3|_~4_combout\);

-- Location: LCCOMB_X31_Y10_N2
\inst|inst3|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|_~6_combout\ = (\inst|inst3|contador\(20) & (\inst|inst3|_~5_combout\ & \inst|inst3|_~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|contador\(20),
	datac => \inst|inst3|_~5_combout\,
	datad => \inst|inst3|_~4_combout\,
	combout => \inst|inst3|_~6_combout\);

-- Location: LCCOMB_X31_Y10_N16
\inst|inst3|aux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|aux~0_combout\ = (\inst|inst3|_~6_combout\ & (\inst|inst3|ff2~q\ & (\inst|inst3|ff1~q\))) # (!\inst|inst3|_~6_combout\ & (\inst|inst3|aux~q\ & (\inst|inst3|ff2~q\ $ (!\inst|inst3|ff1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|ff2~q\,
	datab => \inst|inst3|ff1~q\,
	datac => \inst|inst3|aux~q\,
	datad => \inst|inst3|_~6_combout\,
	combout => \inst|inst3|aux~0_combout\);

-- Location: FF_X31_Y10_N17
\inst|inst3|aux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|inst3|aux~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|aux~q\);

-- Location: LCCOMB_X31_Y10_N26
\inst8|inst4|buzzer_out\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst4|buzzer_out~combout\ = (\inst8|inst2|div_clock|alternador~q\ & \inst|inst3|aux~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst2|div_clock|alternador~q\,
	datad => \inst|inst3|aux~q\,
	combout => \inst8|inst4|buzzer_out~combout\);

-- Location: LCCOMB_X13_Y15_N28
\inst2|inst6|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|_~4_combout\ = (!\inst2|inst6|ff\(0) & !\inst2|inst6|_~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst6|ff\(0),
	datad => \inst2|inst6|_~3_combout\,
	combout => \inst2|inst6|_~4_combout\);

-- Location: FF_X13_Y15_N29
\inst2|inst6|ff[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|inst6|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|ff\(0));

-- Location: LCCOMB_X13_Y15_N2
\inst2|inst6|ff[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|ff[1]~12_combout\ = (\inst2|inst6|ff\(1) & (\inst2|inst6|ff\(0) $ (VCC))) # (!\inst2|inst6|ff\(1) & (\inst2|inst6|ff\(0) & VCC))
-- \inst2|inst6|ff[1]~13\ = CARRY((\inst2|inst6|ff\(1) & \inst2|inst6|ff\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|ff\(1),
	datab => \inst2|inst6|ff\(0),
	datad => VCC,
	combout => \inst2|inst6|ff[1]~12_combout\,
	cout => \inst2|inst6|ff[1]~13\);

-- Location: FF_X13_Y15_N3
\inst2|inst6|ff[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|inst6|ff[1]~12_combout\,
	sclr => \inst2|inst6|_~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|ff\(1));

-- Location: LCCOMB_X13_Y15_N4
\inst2|inst6|ff[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|ff[2]~14_combout\ = (\inst2|inst6|ff\(2) & (!\inst2|inst6|ff[1]~13\)) # (!\inst2|inst6|ff\(2) & ((\inst2|inst6|ff[1]~13\) # (GND)))
-- \inst2|inst6|ff[2]~15\ = CARRY((!\inst2|inst6|ff[1]~13\) # (!\inst2|inst6|ff\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst6|ff\(2),
	datad => VCC,
	cin => \inst2|inst6|ff[1]~13\,
	combout => \inst2|inst6|ff[2]~14_combout\,
	cout => \inst2|inst6|ff[2]~15\);

-- Location: FF_X13_Y15_N5
\inst2|inst6|ff[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|inst6|ff[2]~14_combout\,
	sclr => \inst2|inst6|_~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|ff\(2));

-- Location: LCCOMB_X13_Y15_N6
\inst2|inst6|ff[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|ff[3]~16_combout\ = (\inst2|inst6|ff\(3) & (\inst2|inst6|ff[2]~15\ $ (GND))) # (!\inst2|inst6|ff\(3) & (!\inst2|inst6|ff[2]~15\ & VCC))
-- \inst2|inst6|ff[3]~17\ = CARRY((\inst2|inst6|ff\(3) & !\inst2|inst6|ff[2]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|ff\(3),
	datad => VCC,
	cin => \inst2|inst6|ff[2]~15\,
	combout => \inst2|inst6|ff[3]~16_combout\,
	cout => \inst2|inst6|ff[3]~17\);

-- Location: FF_X13_Y15_N7
\inst2|inst6|ff[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|inst6|ff[3]~16_combout\,
	sclr => \inst2|inst6|_~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|ff\(3));

-- Location: LCCOMB_X13_Y15_N8
\inst2|inst6|ff[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|ff[4]~18_combout\ = (\inst2|inst6|ff\(4) & (!\inst2|inst6|ff[3]~17\)) # (!\inst2|inst6|ff\(4) & ((\inst2|inst6|ff[3]~17\) # (GND)))
-- \inst2|inst6|ff[4]~19\ = CARRY((!\inst2|inst6|ff[3]~17\) # (!\inst2|inst6|ff\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst6|ff\(4),
	datad => VCC,
	cin => \inst2|inst6|ff[3]~17\,
	combout => \inst2|inst6|ff[4]~18_combout\,
	cout => \inst2|inst6|ff[4]~19\);

-- Location: FF_X13_Y15_N9
\inst2|inst6|ff[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|inst6|ff[4]~18_combout\,
	sclr => \inst2|inst6|_~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|ff\(4));

-- Location: LCCOMB_X13_Y15_N10
\inst2|inst6|ff[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|ff[5]~20_combout\ = (\inst2|inst6|ff\(5) & (\inst2|inst6|ff[4]~19\ $ (GND))) # (!\inst2|inst6|ff\(5) & (!\inst2|inst6|ff[4]~19\ & VCC))
-- \inst2|inst6|ff[5]~21\ = CARRY((\inst2|inst6|ff\(5) & !\inst2|inst6|ff[4]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|ff\(5),
	datad => VCC,
	cin => \inst2|inst6|ff[4]~19\,
	combout => \inst2|inst6|ff[5]~20_combout\,
	cout => \inst2|inst6|ff[5]~21\);

-- Location: FF_X13_Y15_N11
\inst2|inst6|ff[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|inst6|ff[5]~20_combout\,
	sclr => \inst2|inst6|_~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|ff\(5));

-- Location: LCCOMB_X13_Y15_N12
\inst2|inst6|ff[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|ff[6]~22_combout\ = (\inst2|inst6|ff\(6) & (!\inst2|inst6|ff[5]~21\)) # (!\inst2|inst6|ff\(6) & ((\inst2|inst6|ff[5]~21\) # (GND)))
-- \inst2|inst6|ff[6]~23\ = CARRY((!\inst2|inst6|ff[5]~21\) # (!\inst2|inst6|ff\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|ff\(6),
	datad => VCC,
	cin => \inst2|inst6|ff[5]~21\,
	combout => \inst2|inst6|ff[6]~22_combout\,
	cout => \inst2|inst6|ff[6]~23\);

-- Location: FF_X13_Y15_N13
\inst2|inst6|ff[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|inst6|ff[6]~22_combout\,
	sclr => \inst2|inst6|_~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|ff\(6));

-- Location: LCCOMB_X13_Y15_N14
\inst2|inst6|ff[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|ff[7]~24_combout\ = (\inst2|inst6|ff\(7) & (\inst2|inst6|ff[6]~23\ $ (GND))) # (!\inst2|inst6|ff\(7) & (!\inst2|inst6|ff[6]~23\ & VCC))
-- \inst2|inst6|ff[7]~25\ = CARRY((\inst2|inst6|ff\(7) & !\inst2|inst6|ff[6]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst6|ff\(7),
	datad => VCC,
	cin => \inst2|inst6|ff[6]~23\,
	combout => \inst2|inst6|ff[7]~24_combout\,
	cout => \inst2|inst6|ff[7]~25\);

-- Location: FF_X13_Y15_N15
\inst2|inst6|ff[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|inst6|ff[7]~24_combout\,
	sclr => \inst2|inst6|_~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|ff\(7));

-- Location: LCCOMB_X13_Y15_N16
\inst2|inst6|ff[8]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|ff[8]~26_combout\ = (\inst2|inst6|ff\(8) & (!\inst2|inst6|ff[7]~25\)) # (!\inst2|inst6|ff\(8) & ((\inst2|inst6|ff[7]~25\) # (GND)))
-- \inst2|inst6|ff[8]~27\ = CARRY((!\inst2|inst6|ff[7]~25\) # (!\inst2|inst6|ff\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst6|ff\(8),
	datad => VCC,
	cin => \inst2|inst6|ff[7]~25\,
	combout => \inst2|inst6|ff[8]~26_combout\,
	cout => \inst2|inst6|ff[8]~27\);

-- Location: FF_X13_Y15_N17
\inst2|inst6|ff[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|inst6|ff[8]~26_combout\,
	sclr => \inst2|inst6|_~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|ff\(8));

-- Location: LCCOMB_X13_Y15_N18
\inst2|inst6|ff[9]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|ff[9]~28_combout\ = (\inst2|inst6|ff\(9) & (\inst2|inst6|ff[8]~27\ $ (GND))) # (!\inst2|inst6|ff\(9) & (!\inst2|inst6|ff[8]~27\ & VCC))
-- \inst2|inst6|ff[9]~29\ = CARRY((\inst2|inst6|ff\(9) & !\inst2|inst6|ff[8]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst6|ff\(9),
	datad => VCC,
	cin => \inst2|inst6|ff[8]~27\,
	combout => \inst2|inst6|ff[9]~28_combout\,
	cout => \inst2|inst6|ff[9]~29\);

-- Location: FF_X13_Y15_N19
\inst2|inst6|ff[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|inst6|ff[9]~28_combout\,
	sclr => \inst2|inst6|_~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|ff\(9));

-- Location: LCCOMB_X13_Y15_N20
\inst2|inst6|ff[10]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|ff[10]~30_combout\ = (\inst2|inst6|ff\(10) & (!\inst2|inst6|ff[9]~29\)) # (!\inst2|inst6|ff\(10) & ((\inst2|inst6|ff[9]~29\) # (GND)))
-- \inst2|inst6|ff[10]~31\ = CARRY((!\inst2|inst6|ff[9]~29\) # (!\inst2|inst6|ff\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst6|ff\(10),
	datad => VCC,
	cin => \inst2|inst6|ff[9]~29\,
	combout => \inst2|inst6|ff[10]~30_combout\,
	cout => \inst2|inst6|ff[10]~31\);

-- Location: FF_X13_Y15_N21
\inst2|inst6|ff[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|inst6|ff[10]~30_combout\,
	sclr => \inst2|inst6|_~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|ff\(10));

-- Location: LCCOMB_X13_Y15_N22
\inst2|inst6|ff[11]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|ff[11]~32_combout\ = (\inst2|inst6|ff\(11) & (\inst2|inst6|ff[10]~31\ $ (GND))) # (!\inst2|inst6|ff\(11) & (!\inst2|inst6|ff[10]~31\ & VCC))
-- \inst2|inst6|ff[11]~33\ = CARRY((\inst2|inst6|ff\(11) & !\inst2|inst6|ff[10]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|ff\(11),
	datad => VCC,
	cin => \inst2|inst6|ff[10]~31\,
	combout => \inst2|inst6|ff[11]~32_combout\,
	cout => \inst2|inst6|ff[11]~33\);

-- Location: FF_X13_Y15_N23
\inst2|inst6|ff[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|inst6|ff[11]~32_combout\,
	sclr => \inst2|inst6|_~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|ff\(11));

-- Location: LCCOMB_X13_Y15_N24
\inst2|inst6|ff[12]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|ff[12]~34_combout\ = \inst2|inst6|ff\(12) $ (\inst2|inst6|ff[11]~33\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst6|ff\(12),
	cin => \inst2|inst6|ff[11]~33\,
	combout => \inst2|inst6|ff[12]~34_combout\);

-- Location: FF_X13_Y15_N25
\inst2|inst6|ff[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|inst6|ff[12]~34_combout\,
	sclr => \inst2|inst6|_~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|ff\(12));

-- Location: LCCOMB_X13_Y15_N0
\inst2|inst6|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|_~1_combout\ = (\inst2|inst6|ff\(5)) # ((\inst2|inst6|ff\(4)) # ((\inst2|inst6|ff\(6)) # (!\inst2|inst6|ff\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|ff\(5),
	datab => \inst2|inst6|ff\(4),
	datac => \inst2|inst6|ff\(7),
	datad => \inst2|inst6|ff\(6),
	combout => \inst2|inst6|_~1_combout\);

-- Location: LCCOMB_X13_Y15_N26
\inst2|inst6|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|_~0_combout\ = ((\inst2|inst6|ff\(0)) # ((\inst2|inst6|ff\(2)) # (\inst2|inst6|ff\(1)))) # (!\inst2|inst6|ff\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|ff\(3),
	datab => \inst2|inst6|ff\(0),
	datac => \inst2|inst6|ff\(2),
	datad => \inst2|inst6|ff\(1),
	combout => \inst2|inst6|_~0_combout\);

-- Location: LCCOMB_X12_Y15_N24
\inst2|inst6|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|_~2_combout\ = (\inst2|inst6|ff\(10)) # (((\inst2|inst6|ff\(11)) # (!\inst2|inst6|ff\(9))) # (!\inst2|inst6|ff\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|ff\(10),
	datab => \inst2|inst6|ff\(8),
	datac => \inst2|inst6|ff\(11),
	datad => \inst2|inst6|ff\(9),
	combout => \inst2|inst6|_~2_combout\);

-- Location: LCCOMB_X13_Y15_N30
\inst2|inst6|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|_~3_combout\ = (\inst2|inst6|ff\(12) & (!\inst2|inst6|_~1_combout\ & (!\inst2|inst6|_~0_combout\ & !\inst2|inst6|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|ff\(12),
	datab => \inst2|inst6|_~1_combout\,
	datac => \inst2|inst6|_~0_combout\,
	datad => \inst2|inst6|_~2_combout\,
	combout => \inst2|inst6|_~3_combout\);

-- Location: LCCOMB_X14_Y14_N6
\inst2|inst6|auxf[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|auxf[0]~1_combout\ = \inst2|inst6|_~3_combout\ $ (\inst2|inst6|auxf\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst6|_~3_combout\,
	datac => \inst2|inst6|auxf\(0),
	combout => \inst2|inst6|auxf[0]~1_combout\);

-- Location: FF_X14_Y14_N7
\inst2|inst6|auxf[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|inst6|auxf[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|auxf\(0));

-- Location: LCCOMB_X14_Y14_N24
\inst2|inst6|auxf[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|auxf[1]~0_combout\ = \inst2|inst6|auxf\(1) $ (((\inst2|inst6|auxf\(0) & \inst2|inst6|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|auxf\(0),
	datab => \inst2|inst6|_~3_combout\,
	datac => \inst2|inst6|auxf\(1),
	combout => \inst2|inst6|auxf[1]~0_combout\);

-- Location: FF_X14_Y14_N25
\inst2|inst6|auxf[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|inst6|auxf[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|auxf\(1));

-- Location: LCCOMB_X14_Y14_N4
\inst2|inst6|sel_disp[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|sel_disp\(3) = (\inst2|inst6|auxf\(1)) # (\inst2|inst6|auxf\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst6|auxf\(1),
	datad => \inst2|inst6|auxf\(0),
	combout => \inst2|inst6|sel_disp\(3));

-- Location: LCCOMB_X13_Y14_N26
\inst2|inst6|sel_disp[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|sel_disp\(2) = (\inst2|inst6|auxf\(1)) # (!\inst2|inst6|auxf\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|auxf\(0),
	datad => \inst2|inst6|auxf\(1),
	combout => \inst2|inst6|sel_disp\(2));

-- Location: LCCOMB_X14_Y14_N10
\inst2|inst6|sel_disp[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|sel_disp\(1) = (\inst2|inst6|auxf\(0)) # (!\inst2|inst6|auxf\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst6|auxf\(1),
	datad => \inst2|inst6|auxf\(0),
	combout => \inst2|inst6|sel_disp\(1));

-- Location: LCCOMB_X13_Y14_N24
\inst2|inst6|sel_disp[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|sel_disp[3]~4_combout\ = (\inst2|inst6|auxf\(0) & \inst2|inst6|auxf\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|auxf\(0),
	datad => \inst2|inst6|auxf\(1),
	combout => \inst2|inst6|sel_disp[3]~4_combout\);

-- Location: LCCOMB_X23_Y12_N16
\inst2|inst5|led[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst5|led[3]~4_combout\ = (\inst1|S3~q\) # ((\inst1|S4~q\) # (!\inst1|S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|S3~q\,
	datac => \inst1|S4~q\,
	datad => \inst1|S1~q\,
	combout => \inst2|inst5|led[3]~4_combout\);

-- Location: LCCOMB_X23_Y12_N30
\inst2|inst5|led[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst5|led[2]~5_combout\ = ((\inst1|S4~q\) # (!\inst1|S3~q\)) # (!\inst1|S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|S1~q\,
	datac => \inst1|S3~q\,
	datad => \inst1|S4~q\,
	combout => \inst2|inst5|led[2]~5_combout\);

-- Location: LCCOMB_X23_Y12_N26
\inst2|inst5|led[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst5|led[1]~6_combout\ = ((\inst1|S3~q\) # (!\inst1|S1~q\)) # (!\inst1|S4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|S4~q\,
	datac => \inst1|S3~q\,
	datad => \inst1|S1~q\,
	combout => \inst2|inst5|led[1]~6_combout\);

-- Location: LCCOMB_X23_Y12_N28
\inst2|inst5|led[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst5|led\(0) = (\inst1|S1~q\ & ((!\inst1|S3~q\) # (!\inst1|S4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|S4~q\,
	datac => \inst1|S3~q\,
	datad => \inst1|S1~q\,
	combout => \inst2|inst5|led\(0));

-- Location: LCCOMB_X23_Y16_N0
\inst7|inst11|clock_025|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_025|_~8_combout\ = (!\inst7|inst11|clock_025|q\(0) & !\inst7|inst11|clock_025|_~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst11|clock_025|q\(0),
	datad => \inst7|inst11|clock_025|_~7_combout\,
	combout => \inst7|inst11|clock_025|_~8_combout\);

-- Location: FF_X23_Y16_N1
\inst7|inst11|clock_025|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_025|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_025|q\(0));

-- Location: LCCOMB_X23_Y16_N8
\inst7|inst11|clock_025|q[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_025|q[1]~24_combout\ = (\inst7|inst11|clock_025|q\(1) & (\inst7|inst11|clock_025|q\(0) $ (VCC))) # (!\inst7|inst11|clock_025|q\(1) & (\inst7|inst11|clock_025|q\(0) & VCC))
-- \inst7|inst11|clock_025|q[1]~25\ = CARRY((\inst7|inst11|clock_025|q\(1) & \inst7|inst11|clock_025|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_025|q\(1),
	datab => \inst7|inst11|clock_025|q\(0),
	datad => VCC,
	combout => \inst7|inst11|clock_025|q[1]~24_combout\,
	cout => \inst7|inst11|clock_025|q[1]~25\);

-- Location: FF_X23_Y16_N9
\inst7|inst11|clock_025|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_025|q[1]~24_combout\,
	sclr => \inst7|inst11|clock_025|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_025|q\(1));

-- Location: LCCOMB_X23_Y16_N10
\inst7|inst11|clock_025|q[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_025|q[2]~26_combout\ = (\inst7|inst11|clock_025|q\(2) & (!\inst7|inst11|clock_025|q[1]~25\)) # (!\inst7|inst11|clock_025|q\(2) & ((\inst7|inst11|clock_025|q[1]~25\) # (GND)))
-- \inst7|inst11|clock_025|q[2]~27\ = CARRY((!\inst7|inst11|clock_025|q[1]~25\) # (!\inst7|inst11|clock_025|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_025|q\(2),
	datad => VCC,
	cin => \inst7|inst11|clock_025|q[1]~25\,
	combout => \inst7|inst11|clock_025|q[2]~26_combout\,
	cout => \inst7|inst11|clock_025|q[2]~27\);

-- Location: FF_X23_Y16_N11
\inst7|inst11|clock_025|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_025|q[2]~26_combout\,
	sclr => \inst7|inst11|clock_025|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_025|q\(2));

-- Location: LCCOMB_X23_Y16_N12
\inst7|inst11|clock_025|q[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_025|q[3]~28_combout\ = (\inst7|inst11|clock_025|q\(3) & (\inst7|inst11|clock_025|q[2]~27\ $ (GND))) # (!\inst7|inst11|clock_025|q\(3) & (!\inst7|inst11|clock_025|q[2]~27\ & VCC))
-- \inst7|inst11|clock_025|q[3]~29\ = CARRY((\inst7|inst11|clock_025|q\(3) & !\inst7|inst11|clock_025|q[2]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_025|q\(3),
	datad => VCC,
	cin => \inst7|inst11|clock_025|q[2]~27\,
	combout => \inst7|inst11|clock_025|q[3]~28_combout\,
	cout => \inst7|inst11|clock_025|q[3]~29\);

-- Location: FF_X23_Y16_N13
\inst7|inst11|clock_025|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_025|q[3]~28_combout\,
	sclr => \inst7|inst11|clock_025|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_025|q\(3));

-- Location: LCCOMB_X23_Y16_N14
\inst7|inst11|clock_025|q[4]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_025|q[4]~30_combout\ = (\inst7|inst11|clock_025|q\(4) & (!\inst7|inst11|clock_025|q[3]~29\)) # (!\inst7|inst11|clock_025|q\(4) & ((\inst7|inst11|clock_025|q[3]~29\) # (GND)))
-- \inst7|inst11|clock_025|q[4]~31\ = CARRY((!\inst7|inst11|clock_025|q[3]~29\) # (!\inst7|inst11|clock_025|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_025|q\(4),
	datad => VCC,
	cin => \inst7|inst11|clock_025|q[3]~29\,
	combout => \inst7|inst11|clock_025|q[4]~30_combout\,
	cout => \inst7|inst11|clock_025|q[4]~31\);

-- Location: FF_X23_Y16_N15
\inst7|inst11|clock_025|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_025|q[4]~30_combout\,
	sclr => \inst7|inst11|clock_025|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_025|q\(4));

-- Location: LCCOMB_X23_Y16_N16
\inst7|inst11|clock_025|q[5]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_025|q[5]~32_combout\ = (\inst7|inst11|clock_025|q\(5) & (\inst7|inst11|clock_025|q[4]~31\ $ (GND))) # (!\inst7|inst11|clock_025|q\(5) & (!\inst7|inst11|clock_025|q[4]~31\ & VCC))
-- \inst7|inst11|clock_025|q[5]~33\ = CARRY((\inst7|inst11|clock_025|q\(5) & !\inst7|inst11|clock_025|q[4]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_025|q\(5),
	datad => VCC,
	cin => \inst7|inst11|clock_025|q[4]~31\,
	combout => \inst7|inst11|clock_025|q[5]~32_combout\,
	cout => \inst7|inst11|clock_025|q[5]~33\);

-- Location: FF_X23_Y16_N17
\inst7|inst11|clock_025|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_025|q[5]~32_combout\,
	sclr => \inst7|inst11|clock_025|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_025|q\(5));

-- Location: LCCOMB_X23_Y16_N18
\inst7|inst11|clock_025|q[6]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_025|q[6]~34_combout\ = (\inst7|inst11|clock_025|q\(6) & (!\inst7|inst11|clock_025|q[5]~33\)) # (!\inst7|inst11|clock_025|q\(6) & ((\inst7|inst11|clock_025|q[5]~33\) # (GND)))
-- \inst7|inst11|clock_025|q[6]~35\ = CARRY((!\inst7|inst11|clock_025|q[5]~33\) # (!\inst7|inst11|clock_025|q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_025|q\(6),
	datad => VCC,
	cin => \inst7|inst11|clock_025|q[5]~33\,
	combout => \inst7|inst11|clock_025|q[6]~34_combout\,
	cout => \inst7|inst11|clock_025|q[6]~35\);

-- Location: FF_X23_Y16_N19
\inst7|inst11|clock_025|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_025|q[6]~34_combout\,
	sclr => \inst7|inst11|clock_025|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_025|q\(6));

-- Location: LCCOMB_X23_Y16_N20
\inst7|inst11|clock_025|q[7]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_025|q[7]~36_combout\ = (\inst7|inst11|clock_025|q\(7) & (\inst7|inst11|clock_025|q[6]~35\ $ (GND))) # (!\inst7|inst11|clock_025|q\(7) & (!\inst7|inst11|clock_025|q[6]~35\ & VCC))
-- \inst7|inst11|clock_025|q[7]~37\ = CARRY((\inst7|inst11|clock_025|q\(7) & !\inst7|inst11|clock_025|q[6]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_025|q\(7),
	datad => VCC,
	cin => \inst7|inst11|clock_025|q[6]~35\,
	combout => \inst7|inst11|clock_025|q[7]~36_combout\,
	cout => \inst7|inst11|clock_025|q[7]~37\);

-- Location: FF_X23_Y16_N21
\inst7|inst11|clock_025|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_025|q[7]~36_combout\,
	sclr => \inst7|inst11|clock_025|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_025|q\(7));

-- Location: LCCOMB_X23_Y16_N22
\inst7|inst11|clock_025|q[8]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_025|q[8]~38_combout\ = (\inst7|inst11|clock_025|q\(8) & (!\inst7|inst11|clock_025|q[7]~37\)) # (!\inst7|inst11|clock_025|q\(8) & ((\inst7|inst11|clock_025|q[7]~37\) # (GND)))
-- \inst7|inst11|clock_025|q[8]~39\ = CARRY((!\inst7|inst11|clock_025|q[7]~37\) # (!\inst7|inst11|clock_025|q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_025|q\(8),
	datad => VCC,
	cin => \inst7|inst11|clock_025|q[7]~37\,
	combout => \inst7|inst11|clock_025|q[8]~38_combout\,
	cout => \inst7|inst11|clock_025|q[8]~39\);

-- Location: FF_X23_Y16_N23
\inst7|inst11|clock_025|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_025|q[8]~38_combout\,
	sclr => \inst7|inst11|clock_025|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_025|q\(8));

-- Location: LCCOMB_X23_Y16_N24
\inst7|inst11|clock_025|q[9]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_025|q[9]~40_combout\ = (\inst7|inst11|clock_025|q\(9) & (\inst7|inst11|clock_025|q[8]~39\ $ (GND))) # (!\inst7|inst11|clock_025|q\(9) & (!\inst7|inst11|clock_025|q[8]~39\ & VCC))
-- \inst7|inst11|clock_025|q[9]~41\ = CARRY((\inst7|inst11|clock_025|q\(9) & !\inst7|inst11|clock_025|q[8]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_025|q\(9),
	datad => VCC,
	cin => \inst7|inst11|clock_025|q[8]~39\,
	combout => \inst7|inst11|clock_025|q[9]~40_combout\,
	cout => \inst7|inst11|clock_025|q[9]~41\);

-- Location: FF_X23_Y16_N25
\inst7|inst11|clock_025|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_025|q[9]~40_combout\,
	sclr => \inst7|inst11|clock_025|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_025|q\(9));

-- Location: LCCOMB_X23_Y16_N26
\inst7|inst11|clock_025|q[10]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_025|q[10]~42_combout\ = (\inst7|inst11|clock_025|q\(10) & (!\inst7|inst11|clock_025|q[9]~41\)) # (!\inst7|inst11|clock_025|q\(10) & ((\inst7|inst11|clock_025|q[9]~41\) # (GND)))
-- \inst7|inst11|clock_025|q[10]~43\ = CARRY((!\inst7|inst11|clock_025|q[9]~41\) # (!\inst7|inst11|clock_025|q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_025|q\(10),
	datad => VCC,
	cin => \inst7|inst11|clock_025|q[9]~41\,
	combout => \inst7|inst11|clock_025|q[10]~42_combout\,
	cout => \inst7|inst11|clock_025|q[10]~43\);

-- Location: FF_X23_Y16_N27
\inst7|inst11|clock_025|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_025|q[10]~42_combout\,
	sclr => \inst7|inst11|clock_025|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_025|q\(10));

-- Location: LCCOMB_X23_Y16_N28
\inst7|inst11|clock_025|q[11]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_025|q[11]~44_combout\ = (\inst7|inst11|clock_025|q\(11) & (\inst7|inst11|clock_025|q[10]~43\ $ (GND))) # (!\inst7|inst11|clock_025|q\(11) & (!\inst7|inst11|clock_025|q[10]~43\ & VCC))
-- \inst7|inst11|clock_025|q[11]~45\ = CARRY((\inst7|inst11|clock_025|q\(11) & !\inst7|inst11|clock_025|q[10]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_025|q\(11),
	datad => VCC,
	cin => \inst7|inst11|clock_025|q[10]~43\,
	combout => \inst7|inst11|clock_025|q[11]~44_combout\,
	cout => \inst7|inst11|clock_025|q[11]~45\);

-- Location: FF_X23_Y16_N29
\inst7|inst11|clock_025|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_025|q[11]~44_combout\,
	sclr => \inst7|inst11|clock_025|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_025|q\(11));

-- Location: LCCOMB_X23_Y16_N30
\inst7|inst11|clock_025|q[12]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_025|q[12]~46_combout\ = (\inst7|inst11|clock_025|q\(12) & (!\inst7|inst11|clock_025|q[11]~45\)) # (!\inst7|inst11|clock_025|q\(12) & ((\inst7|inst11|clock_025|q[11]~45\) # (GND)))
-- \inst7|inst11|clock_025|q[12]~47\ = CARRY((!\inst7|inst11|clock_025|q[11]~45\) # (!\inst7|inst11|clock_025|q\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_025|q\(12),
	datad => VCC,
	cin => \inst7|inst11|clock_025|q[11]~45\,
	combout => \inst7|inst11|clock_025|q[12]~46_combout\,
	cout => \inst7|inst11|clock_025|q[12]~47\);

-- Location: FF_X23_Y16_N31
\inst7|inst11|clock_025|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_025|q[12]~46_combout\,
	sclr => \inst7|inst11|clock_025|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_025|q\(12));

-- Location: LCCOMB_X23_Y15_N0
\inst7|inst11|clock_025|q[13]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_025|q[13]~48_combout\ = (\inst7|inst11|clock_025|q\(13) & (\inst7|inst11|clock_025|q[12]~47\ $ (GND))) # (!\inst7|inst11|clock_025|q\(13) & (!\inst7|inst11|clock_025|q[12]~47\ & VCC))
-- \inst7|inst11|clock_025|q[13]~49\ = CARRY((\inst7|inst11|clock_025|q\(13) & !\inst7|inst11|clock_025|q[12]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_025|q\(13),
	datad => VCC,
	cin => \inst7|inst11|clock_025|q[12]~47\,
	combout => \inst7|inst11|clock_025|q[13]~48_combout\,
	cout => \inst7|inst11|clock_025|q[13]~49\);

-- Location: FF_X23_Y15_N1
\inst7|inst11|clock_025|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_025|q[13]~48_combout\,
	sclr => \inst7|inst11|clock_025|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_025|q\(13));

-- Location: LCCOMB_X23_Y15_N2
\inst7|inst11|clock_025|q[14]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_025|q[14]~50_combout\ = (\inst7|inst11|clock_025|q\(14) & (!\inst7|inst11|clock_025|q[13]~49\)) # (!\inst7|inst11|clock_025|q\(14) & ((\inst7|inst11|clock_025|q[13]~49\) # (GND)))
-- \inst7|inst11|clock_025|q[14]~51\ = CARRY((!\inst7|inst11|clock_025|q[13]~49\) # (!\inst7|inst11|clock_025|q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_025|q\(14),
	datad => VCC,
	cin => \inst7|inst11|clock_025|q[13]~49\,
	combout => \inst7|inst11|clock_025|q[14]~50_combout\,
	cout => \inst7|inst11|clock_025|q[14]~51\);

-- Location: FF_X23_Y15_N3
\inst7|inst11|clock_025|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_025|q[14]~50_combout\,
	sclr => \inst7|inst11|clock_025|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_025|q\(14));

-- Location: LCCOMB_X23_Y15_N4
\inst7|inst11|clock_025|q[15]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_025|q[15]~52_combout\ = (\inst7|inst11|clock_025|q\(15) & (\inst7|inst11|clock_025|q[14]~51\ $ (GND))) # (!\inst7|inst11|clock_025|q\(15) & (!\inst7|inst11|clock_025|q[14]~51\ & VCC))
-- \inst7|inst11|clock_025|q[15]~53\ = CARRY((\inst7|inst11|clock_025|q\(15) & !\inst7|inst11|clock_025|q[14]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_025|q\(15),
	datad => VCC,
	cin => \inst7|inst11|clock_025|q[14]~51\,
	combout => \inst7|inst11|clock_025|q[15]~52_combout\,
	cout => \inst7|inst11|clock_025|q[15]~53\);

-- Location: FF_X23_Y15_N5
\inst7|inst11|clock_025|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_025|q[15]~52_combout\,
	sclr => \inst7|inst11|clock_025|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_025|q\(15));

-- Location: LCCOMB_X23_Y15_N6
\inst7|inst11|clock_025|q[16]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_025|q[16]~54_combout\ = (\inst7|inst11|clock_025|q\(16) & (!\inst7|inst11|clock_025|q[15]~53\)) # (!\inst7|inst11|clock_025|q\(16) & ((\inst7|inst11|clock_025|q[15]~53\) # (GND)))
-- \inst7|inst11|clock_025|q[16]~55\ = CARRY((!\inst7|inst11|clock_025|q[15]~53\) # (!\inst7|inst11|clock_025|q\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_025|q\(16),
	datad => VCC,
	cin => \inst7|inst11|clock_025|q[15]~53\,
	combout => \inst7|inst11|clock_025|q[16]~54_combout\,
	cout => \inst7|inst11|clock_025|q[16]~55\);

-- Location: FF_X23_Y15_N7
\inst7|inst11|clock_025|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_025|q[16]~54_combout\,
	sclr => \inst7|inst11|clock_025|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_025|q\(16));

-- Location: LCCOMB_X23_Y15_N8
\inst7|inst11|clock_025|q[17]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_025|q[17]~56_combout\ = (\inst7|inst11|clock_025|q\(17) & (\inst7|inst11|clock_025|q[16]~55\ $ (GND))) # (!\inst7|inst11|clock_025|q\(17) & (!\inst7|inst11|clock_025|q[16]~55\ & VCC))
-- \inst7|inst11|clock_025|q[17]~57\ = CARRY((\inst7|inst11|clock_025|q\(17) & !\inst7|inst11|clock_025|q[16]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_025|q\(17),
	datad => VCC,
	cin => \inst7|inst11|clock_025|q[16]~55\,
	combout => \inst7|inst11|clock_025|q[17]~56_combout\,
	cout => \inst7|inst11|clock_025|q[17]~57\);

-- Location: FF_X23_Y15_N9
\inst7|inst11|clock_025|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_025|q[17]~56_combout\,
	sclr => \inst7|inst11|clock_025|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_025|q\(17));

-- Location: LCCOMB_X23_Y15_N10
\inst7|inst11|clock_025|q[18]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_025|q[18]~58_combout\ = (\inst7|inst11|clock_025|q\(18) & (!\inst7|inst11|clock_025|q[17]~57\)) # (!\inst7|inst11|clock_025|q\(18) & ((\inst7|inst11|clock_025|q[17]~57\) # (GND)))
-- \inst7|inst11|clock_025|q[18]~59\ = CARRY((!\inst7|inst11|clock_025|q[17]~57\) # (!\inst7|inst11|clock_025|q\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_025|q\(18),
	datad => VCC,
	cin => \inst7|inst11|clock_025|q[17]~57\,
	combout => \inst7|inst11|clock_025|q[18]~58_combout\,
	cout => \inst7|inst11|clock_025|q[18]~59\);

-- Location: FF_X23_Y15_N11
\inst7|inst11|clock_025|q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_025|q[18]~58_combout\,
	sclr => \inst7|inst11|clock_025|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_025|q\(18));

-- Location: LCCOMB_X23_Y15_N12
\inst7|inst11|clock_025|q[19]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_025|q[19]~60_combout\ = (\inst7|inst11|clock_025|q\(19) & (\inst7|inst11|clock_025|q[18]~59\ $ (GND))) # (!\inst7|inst11|clock_025|q\(19) & (!\inst7|inst11|clock_025|q[18]~59\ & VCC))
-- \inst7|inst11|clock_025|q[19]~61\ = CARRY((\inst7|inst11|clock_025|q\(19) & !\inst7|inst11|clock_025|q[18]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_025|q\(19),
	datad => VCC,
	cin => \inst7|inst11|clock_025|q[18]~59\,
	combout => \inst7|inst11|clock_025|q[19]~60_combout\,
	cout => \inst7|inst11|clock_025|q[19]~61\);

-- Location: FF_X23_Y15_N13
\inst7|inst11|clock_025|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_025|q[19]~60_combout\,
	sclr => \inst7|inst11|clock_025|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_025|q\(19));

-- Location: LCCOMB_X23_Y15_N14
\inst7|inst11|clock_025|q[20]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_025|q[20]~62_combout\ = (\inst7|inst11|clock_025|q\(20) & (!\inst7|inst11|clock_025|q[19]~61\)) # (!\inst7|inst11|clock_025|q\(20) & ((\inst7|inst11|clock_025|q[19]~61\) # (GND)))
-- \inst7|inst11|clock_025|q[20]~63\ = CARRY((!\inst7|inst11|clock_025|q[19]~61\) # (!\inst7|inst11|clock_025|q\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_025|q\(20),
	datad => VCC,
	cin => \inst7|inst11|clock_025|q[19]~61\,
	combout => \inst7|inst11|clock_025|q[20]~62_combout\,
	cout => \inst7|inst11|clock_025|q[20]~63\);

-- Location: FF_X23_Y15_N15
\inst7|inst11|clock_025|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_025|q[20]~62_combout\,
	sclr => \inst7|inst11|clock_025|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_025|q\(20));

-- Location: LCCOMB_X23_Y15_N16
\inst7|inst11|clock_025|q[21]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_025|q[21]~64_combout\ = (\inst7|inst11|clock_025|q\(21) & (\inst7|inst11|clock_025|q[20]~63\ $ (GND))) # (!\inst7|inst11|clock_025|q\(21) & (!\inst7|inst11|clock_025|q[20]~63\ & VCC))
-- \inst7|inst11|clock_025|q[21]~65\ = CARRY((\inst7|inst11|clock_025|q\(21) & !\inst7|inst11|clock_025|q[20]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_025|q\(21),
	datad => VCC,
	cin => \inst7|inst11|clock_025|q[20]~63\,
	combout => \inst7|inst11|clock_025|q[21]~64_combout\,
	cout => \inst7|inst11|clock_025|q[21]~65\);

-- Location: FF_X23_Y15_N17
\inst7|inst11|clock_025|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_025|q[21]~64_combout\,
	sclr => \inst7|inst11|clock_025|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_025|q\(21));

-- Location: LCCOMB_X23_Y15_N18
\inst7|inst11|clock_025|q[22]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_025|q[22]~66_combout\ = (\inst7|inst11|clock_025|q\(22) & (!\inst7|inst11|clock_025|q[21]~65\)) # (!\inst7|inst11|clock_025|q\(22) & ((\inst7|inst11|clock_025|q[21]~65\) # (GND)))
-- \inst7|inst11|clock_025|q[22]~67\ = CARRY((!\inst7|inst11|clock_025|q[21]~65\) # (!\inst7|inst11|clock_025|q\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_025|q\(22),
	datad => VCC,
	cin => \inst7|inst11|clock_025|q[21]~65\,
	combout => \inst7|inst11|clock_025|q[22]~66_combout\,
	cout => \inst7|inst11|clock_025|q[22]~67\);

-- Location: FF_X23_Y15_N19
\inst7|inst11|clock_025|q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_025|q[22]~66_combout\,
	sclr => \inst7|inst11|clock_025|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_025|q\(22));

-- Location: LCCOMB_X23_Y15_N20
\inst7|inst11|clock_025|q[23]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_025|q[23]~68_combout\ = (\inst7|inst11|clock_025|q\(23) & (\inst7|inst11|clock_025|q[22]~67\ $ (GND))) # (!\inst7|inst11|clock_025|q\(23) & (!\inst7|inst11|clock_025|q[22]~67\ & VCC))
-- \inst7|inst11|clock_025|q[23]~69\ = CARRY((\inst7|inst11|clock_025|q\(23) & !\inst7|inst11|clock_025|q[22]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_025|q\(23),
	datad => VCC,
	cin => \inst7|inst11|clock_025|q[22]~67\,
	combout => \inst7|inst11|clock_025|q[23]~68_combout\,
	cout => \inst7|inst11|clock_025|q[23]~69\);

-- Location: FF_X23_Y15_N21
\inst7|inst11|clock_025|q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_025|q[23]~68_combout\,
	sclr => \inst7|inst11|clock_025|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_025|q\(23));

-- Location: LCCOMB_X23_Y15_N30
\inst7|inst11|clock_025|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_025|_~6_combout\ = (!\inst7|inst11|clock_025|q\(21) & (\inst7|inst11|clock_025|q\(23) & (\inst7|inst11|clock_025|q\(20) & !\inst7|inst11|clock_025|q\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_025|q\(21),
	datab => \inst7|inst11|clock_025|q\(23),
	datac => \inst7|inst11|clock_025|q\(20),
	datad => \inst7|inst11|clock_025|q\(22),
	combout => \inst7|inst11|clock_025|_~6_combout\);

-- Location: LCCOMB_X23_Y15_N22
\inst7|inst11|clock_025|q[24]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_025|q[24]~70_combout\ = \inst7|inst11|clock_025|q\(24) $ (\inst7|inst11|clock_025|q[23]~69\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_025|q\(24),
	cin => \inst7|inst11|clock_025|q[23]~69\,
	combout => \inst7|inst11|clock_025|q[24]~70_combout\);

-- Location: FF_X23_Y15_N23
\inst7|inst11|clock_025|q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_025|q[24]~70_combout\,
	sclr => \inst7|inst11|clock_025|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_025|q\(24));

-- Location: LCCOMB_X22_Y15_N16
\inst7|inst11|clock_025|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_025|_~5_combout\ = (!\inst7|inst11|clock_025|q\(18) & (!\inst7|inst11|clock_025|q\(17) & (\inst7|inst11|clock_025|q\(19) & !\inst7|inst11|clock_025|q\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_025|q\(18),
	datab => \inst7|inst11|clock_025|q\(17),
	datac => \inst7|inst11|clock_025|q\(19),
	datad => \inst7|inst11|clock_025|q\(16),
	combout => \inst7|inst11|clock_025|_~5_combout\);

-- Location: LCCOMB_X23_Y16_N4
\inst7|inst11|clock_025|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_025|_~1_combout\ = (!\inst7|inst11|clock_025|q\(6) & (!\inst7|inst11|clock_025|q\(5) & (!\inst7|inst11|clock_025|q\(4) & \inst7|inst11|clock_025|q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_025|q\(6),
	datab => \inst7|inst11|clock_025|q\(5),
	datac => \inst7|inst11|clock_025|q\(4),
	datad => \inst7|inst11|clock_025|q\(7),
	combout => \inst7|inst11|clock_025|_~1_combout\);

-- Location: LCCOMB_X23_Y15_N24
\inst7|inst11|clock_025|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_025|_~3_combout\ = (\inst7|inst11|clock_025|q\(15) & (!\inst7|inst11|clock_025|q\(14) & (\inst7|inst11|clock_025|q\(12) & !\inst7|inst11|clock_025|q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_025|q\(15),
	datab => \inst7|inst11|clock_025|q\(14),
	datac => \inst7|inst11|clock_025|q\(12),
	datad => \inst7|inst11|clock_025|q\(13),
	combout => \inst7|inst11|clock_025|_~3_combout\);

-- Location: LCCOMB_X23_Y16_N6
\inst7|inst11|clock_025|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_025|_~0_combout\ = (!\inst7|inst11|clock_025|q\(2) & (!\inst7|inst11|clock_025|q\(0) & (!\inst7|inst11|clock_025|q\(1) & !\inst7|inst11|clock_025|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_025|q\(2),
	datab => \inst7|inst11|clock_025|q\(0),
	datac => \inst7|inst11|clock_025|q\(1),
	datad => \inst7|inst11|clock_025|q\(3),
	combout => \inst7|inst11|clock_025|_~0_combout\);

-- Location: LCCOMB_X23_Y16_N2
\inst7|inst11|clock_025|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_025|_~2_combout\ = (!\inst7|inst11|clock_025|q\(8) & (\inst7|inst11|clock_025|q\(9) & (\inst7|inst11|clock_025|q\(10) & !\inst7|inst11|clock_025|q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_025|q\(8),
	datab => \inst7|inst11|clock_025|q\(9),
	datac => \inst7|inst11|clock_025|q\(10),
	datad => \inst7|inst11|clock_025|q\(11),
	combout => \inst7|inst11|clock_025|_~2_combout\);

-- Location: LCCOMB_X23_Y15_N28
\inst7|inst11|clock_025|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_025|_~4_combout\ = (\inst7|inst11|clock_025|_~1_combout\ & (\inst7|inst11|clock_025|_~3_combout\ & (\inst7|inst11|clock_025|_~0_combout\ & \inst7|inst11|clock_025|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_025|_~1_combout\,
	datab => \inst7|inst11|clock_025|_~3_combout\,
	datac => \inst7|inst11|clock_025|_~0_combout\,
	datad => \inst7|inst11|clock_025|_~2_combout\,
	combout => \inst7|inst11|clock_025|_~4_combout\);

-- Location: LCCOMB_X23_Y15_N26
\inst7|inst11|clock_025|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_025|_~7_combout\ = (\inst7|inst11|clock_025|_~6_combout\ & (!\inst7|inst11|clock_025|q\(24) & (\inst7|inst11|clock_025|_~5_combout\ & \inst7|inst11|clock_025|_~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_025|_~6_combout\,
	datab => \inst7|inst11|clock_025|q\(24),
	datac => \inst7|inst11|clock_025|_~5_combout\,
	datad => \inst7|inst11|clock_025|_~4_combout\,
	combout => \inst7|inst11|clock_025|_~7_combout\);

-- Location: FF_X23_Y15_N27
\inst7|inst11|clock_025|aux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_025|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_025|aux~q\);

-- Location: LCCOMB_X16_Y9_N4
\inst7|inst11|clock_2|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_2|_~7_combout\ = (!\inst7|inst11|clock_2|q\(0) & !\inst7|inst11|clock_2|_~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst11|clock_2|q\(0),
	datad => \inst7|inst11|clock_2|_~6_combout\,
	combout => \inst7|inst11|clock_2|_~7_combout\);

-- Location: FF_X16_Y9_N5
\inst7|inst11|clock_2|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_2|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_2|q\(0));

-- Location: LCCOMB_X16_Y9_N12
\inst7|inst11|clock_2|q[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_2|q[1]~21_combout\ = (\inst7|inst11|clock_2|q\(1) & (\inst7|inst11|clock_2|q\(0) $ (VCC))) # (!\inst7|inst11|clock_2|q\(1) & (\inst7|inst11|clock_2|q\(0) & VCC))
-- \inst7|inst11|clock_2|q[1]~22\ = CARRY((\inst7|inst11|clock_2|q\(1) & \inst7|inst11|clock_2|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_2|q\(1),
	datab => \inst7|inst11|clock_2|q\(0),
	datad => VCC,
	combout => \inst7|inst11|clock_2|q[1]~21_combout\,
	cout => \inst7|inst11|clock_2|q[1]~22\);

-- Location: FF_X16_Y9_N13
\inst7|inst11|clock_2|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_2|q[1]~21_combout\,
	sclr => \inst7|inst11|clock_2|_~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_2|q\(1));

-- Location: LCCOMB_X16_Y9_N14
\inst7|inst11|clock_2|q[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_2|q[2]~23_combout\ = (\inst7|inst11|clock_2|q\(2) & (!\inst7|inst11|clock_2|q[1]~22\)) # (!\inst7|inst11|clock_2|q\(2) & ((\inst7|inst11|clock_2|q[1]~22\) # (GND)))
-- \inst7|inst11|clock_2|q[2]~24\ = CARRY((!\inst7|inst11|clock_2|q[1]~22\) # (!\inst7|inst11|clock_2|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_2|q\(2),
	datad => VCC,
	cin => \inst7|inst11|clock_2|q[1]~22\,
	combout => \inst7|inst11|clock_2|q[2]~23_combout\,
	cout => \inst7|inst11|clock_2|q[2]~24\);

-- Location: FF_X16_Y9_N15
\inst7|inst11|clock_2|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_2|q[2]~23_combout\,
	sclr => \inst7|inst11|clock_2|_~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_2|q\(2));

-- Location: LCCOMB_X16_Y9_N16
\inst7|inst11|clock_2|q[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_2|q[3]~25_combout\ = (\inst7|inst11|clock_2|q\(3) & (\inst7|inst11|clock_2|q[2]~24\ $ (GND))) # (!\inst7|inst11|clock_2|q\(3) & (!\inst7|inst11|clock_2|q[2]~24\ & VCC))
-- \inst7|inst11|clock_2|q[3]~26\ = CARRY((\inst7|inst11|clock_2|q\(3) & !\inst7|inst11|clock_2|q[2]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_2|q\(3),
	datad => VCC,
	cin => \inst7|inst11|clock_2|q[2]~24\,
	combout => \inst7|inst11|clock_2|q[3]~25_combout\,
	cout => \inst7|inst11|clock_2|q[3]~26\);

-- Location: FF_X16_Y9_N17
\inst7|inst11|clock_2|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_2|q[3]~25_combout\,
	sclr => \inst7|inst11|clock_2|_~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_2|q\(3));

-- Location: LCCOMB_X16_Y9_N18
\inst7|inst11|clock_2|q[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_2|q[4]~27_combout\ = (\inst7|inst11|clock_2|q\(4) & (!\inst7|inst11|clock_2|q[3]~26\)) # (!\inst7|inst11|clock_2|q\(4) & ((\inst7|inst11|clock_2|q[3]~26\) # (GND)))
-- \inst7|inst11|clock_2|q[4]~28\ = CARRY((!\inst7|inst11|clock_2|q[3]~26\) # (!\inst7|inst11|clock_2|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_2|q\(4),
	datad => VCC,
	cin => \inst7|inst11|clock_2|q[3]~26\,
	combout => \inst7|inst11|clock_2|q[4]~27_combout\,
	cout => \inst7|inst11|clock_2|q[4]~28\);

-- Location: FF_X16_Y9_N19
\inst7|inst11|clock_2|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_2|q[4]~27_combout\,
	sclr => \inst7|inst11|clock_2|_~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_2|q\(4));

-- Location: LCCOMB_X16_Y9_N20
\inst7|inst11|clock_2|q[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_2|q[5]~29_combout\ = (\inst7|inst11|clock_2|q\(5) & (\inst7|inst11|clock_2|q[4]~28\ $ (GND))) # (!\inst7|inst11|clock_2|q\(5) & (!\inst7|inst11|clock_2|q[4]~28\ & VCC))
-- \inst7|inst11|clock_2|q[5]~30\ = CARRY((\inst7|inst11|clock_2|q\(5) & !\inst7|inst11|clock_2|q[4]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_2|q\(5),
	datad => VCC,
	cin => \inst7|inst11|clock_2|q[4]~28\,
	combout => \inst7|inst11|clock_2|q[5]~29_combout\,
	cout => \inst7|inst11|clock_2|q[5]~30\);

-- Location: FF_X16_Y9_N21
\inst7|inst11|clock_2|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_2|q[5]~29_combout\,
	sclr => \inst7|inst11|clock_2|_~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_2|q\(5));

-- Location: LCCOMB_X16_Y9_N22
\inst7|inst11|clock_2|q[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_2|q[6]~31_combout\ = (\inst7|inst11|clock_2|q\(6) & (!\inst7|inst11|clock_2|q[5]~30\)) # (!\inst7|inst11|clock_2|q\(6) & ((\inst7|inst11|clock_2|q[5]~30\) # (GND)))
-- \inst7|inst11|clock_2|q[6]~32\ = CARRY((!\inst7|inst11|clock_2|q[5]~30\) # (!\inst7|inst11|clock_2|q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_2|q\(6),
	datad => VCC,
	cin => \inst7|inst11|clock_2|q[5]~30\,
	combout => \inst7|inst11|clock_2|q[6]~31_combout\,
	cout => \inst7|inst11|clock_2|q[6]~32\);

-- Location: FF_X16_Y9_N23
\inst7|inst11|clock_2|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_2|q[6]~31_combout\,
	sclr => \inst7|inst11|clock_2|_~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_2|q\(6));

-- Location: LCCOMB_X16_Y9_N24
\inst7|inst11|clock_2|q[7]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_2|q[7]~33_combout\ = (\inst7|inst11|clock_2|q\(7) & (\inst7|inst11|clock_2|q[6]~32\ $ (GND))) # (!\inst7|inst11|clock_2|q\(7) & (!\inst7|inst11|clock_2|q[6]~32\ & VCC))
-- \inst7|inst11|clock_2|q[7]~34\ = CARRY((\inst7|inst11|clock_2|q\(7) & !\inst7|inst11|clock_2|q[6]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_2|q\(7),
	datad => VCC,
	cin => \inst7|inst11|clock_2|q[6]~32\,
	combout => \inst7|inst11|clock_2|q[7]~33_combout\,
	cout => \inst7|inst11|clock_2|q[7]~34\);

-- Location: FF_X16_Y9_N25
\inst7|inst11|clock_2|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_2|q[7]~33_combout\,
	sclr => \inst7|inst11|clock_2|_~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_2|q\(7));

-- Location: LCCOMB_X16_Y9_N26
\inst7|inst11|clock_2|q[8]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_2|q[8]~35_combout\ = (\inst7|inst11|clock_2|q\(8) & (!\inst7|inst11|clock_2|q[7]~34\)) # (!\inst7|inst11|clock_2|q\(8) & ((\inst7|inst11|clock_2|q[7]~34\) # (GND)))
-- \inst7|inst11|clock_2|q[8]~36\ = CARRY((!\inst7|inst11|clock_2|q[7]~34\) # (!\inst7|inst11|clock_2|q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_2|q\(8),
	datad => VCC,
	cin => \inst7|inst11|clock_2|q[7]~34\,
	combout => \inst7|inst11|clock_2|q[8]~35_combout\,
	cout => \inst7|inst11|clock_2|q[8]~36\);

-- Location: FF_X16_Y9_N27
\inst7|inst11|clock_2|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_2|q[8]~35_combout\,
	sclr => \inst7|inst11|clock_2|_~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_2|q\(8));

-- Location: LCCOMB_X16_Y9_N28
\inst7|inst11|clock_2|q[9]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_2|q[9]~37_combout\ = (\inst7|inst11|clock_2|q\(9) & (\inst7|inst11|clock_2|q[8]~36\ $ (GND))) # (!\inst7|inst11|clock_2|q\(9) & (!\inst7|inst11|clock_2|q[8]~36\ & VCC))
-- \inst7|inst11|clock_2|q[9]~38\ = CARRY((\inst7|inst11|clock_2|q\(9) & !\inst7|inst11|clock_2|q[8]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_2|q\(9),
	datad => VCC,
	cin => \inst7|inst11|clock_2|q[8]~36\,
	combout => \inst7|inst11|clock_2|q[9]~37_combout\,
	cout => \inst7|inst11|clock_2|q[9]~38\);

-- Location: FF_X16_Y9_N29
\inst7|inst11|clock_2|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_2|q[9]~37_combout\,
	sclr => \inst7|inst11|clock_2|_~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_2|q\(9));

-- Location: LCCOMB_X16_Y9_N30
\inst7|inst11|clock_2|q[10]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_2|q[10]~39_combout\ = (\inst7|inst11|clock_2|q\(10) & (!\inst7|inst11|clock_2|q[9]~38\)) # (!\inst7|inst11|clock_2|q\(10) & ((\inst7|inst11|clock_2|q[9]~38\) # (GND)))
-- \inst7|inst11|clock_2|q[10]~40\ = CARRY((!\inst7|inst11|clock_2|q[9]~38\) # (!\inst7|inst11|clock_2|q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_2|q\(10),
	datad => VCC,
	cin => \inst7|inst11|clock_2|q[9]~38\,
	combout => \inst7|inst11|clock_2|q[10]~39_combout\,
	cout => \inst7|inst11|clock_2|q[10]~40\);

-- Location: FF_X16_Y9_N31
\inst7|inst11|clock_2|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_2|q[10]~39_combout\,
	sclr => \inst7|inst11|clock_2|_~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_2|q\(10));

-- Location: LCCOMB_X16_Y8_N0
\inst7|inst11|clock_2|q[11]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_2|q[11]~41_combout\ = (\inst7|inst11|clock_2|q\(11) & (\inst7|inst11|clock_2|q[10]~40\ $ (GND))) # (!\inst7|inst11|clock_2|q\(11) & (!\inst7|inst11|clock_2|q[10]~40\ & VCC))
-- \inst7|inst11|clock_2|q[11]~42\ = CARRY((\inst7|inst11|clock_2|q\(11) & !\inst7|inst11|clock_2|q[10]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_2|q\(11),
	datad => VCC,
	cin => \inst7|inst11|clock_2|q[10]~40\,
	combout => \inst7|inst11|clock_2|q[11]~41_combout\,
	cout => \inst7|inst11|clock_2|q[11]~42\);

-- Location: FF_X16_Y8_N1
\inst7|inst11|clock_2|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_2|q[11]~41_combout\,
	sclr => \inst7|inst11|clock_2|_~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_2|q\(11));

-- Location: LCCOMB_X16_Y8_N2
\inst7|inst11|clock_2|q[12]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_2|q[12]~43_combout\ = (\inst7|inst11|clock_2|q\(12) & (!\inst7|inst11|clock_2|q[11]~42\)) # (!\inst7|inst11|clock_2|q\(12) & ((\inst7|inst11|clock_2|q[11]~42\) # (GND)))
-- \inst7|inst11|clock_2|q[12]~44\ = CARRY((!\inst7|inst11|clock_2|q[11]~42\) # (!\inst7|inst11|clock_2|q\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_2|q\(12),
	datad => VCC,
	cin => \inst7|inst11|clock_2|q[11]~42\,
	combout => \inst7|inst11|clock_2|q[12]~43_combout\,
	cout => \inst7|inst11|clock_2|q[12]~44\);

-- Location: FF_X16_Y8_N3
\inst7|inst11|clock_2|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_2|q[12]~43_combout\,
	sclr => \inst7|inst11|clock_2|_~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_2|q\(12));

-- Location: LCCOMB_X16_Y8_N4
\inst7|inst11|clock_2|q[13]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_2|q[13]~45_combout\ = (\inst7|inst11|clock_2|q\(13) & (\inst7|inst11|clock_2|q[12]~44\ $ (GND))) # (!\inst7|inst11|clock_2|q\(13) & (!\inst7|inst11|clock_2|q[12]~44\ & VCC))
-- \inst7|inst11|clock_2|q[13]~46\ = CARRY((\inst7|inst11|clock_2|q\(13) & !\inst7|inst11|clock_2|q[12]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_2|q\(13),
	datad => VCC,
	cin => \inst7|inst11|clock_2|q[12]~44\,
	combout => \inst7|inst11|clock_2|q[13]~45_combout\,
	cout => \inst7|inst11|clock_2|q[13]~46\);

-- Location: FF_X16_Y8_N5
\inst7|inst11|clock_2|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_2|q[13]~45_combout\,
	sclr => \inst7|inst11|clock_2|_~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_2|q\(13));

-- Location: LCCOMB_X16_Y8_N6
\inst7|inst11|clock_2|q[14]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_2|q[14]~47_combout\ = (\inst7|inst11|clock_2|q\(14) & (!\inst7|inst11|clock_2|q[13]~46\)) # (!\inst7|inst11|clock_2|q\(14) & ((\inst7|inst11|clock_2|q[13]~46\) # (GND)))
-- \inst7|inst11|clock_2|q[14]~48\ = CARRY((!\inst7|inst11|clock_2|q[13]~46\) # (!\inst7|inst11|clock_2|q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_2|q\(14),
	datad => VCC,
	cin => \inst7|inst11|clock_2|q[13]~46\,
	combout => \inst7|inst11|clock_2|q[14]~47_combout\,
	cout => \inst7|inst11|clock_2|q[14]~48\);

-- Location: FF_X16_Y8_N7
\inst7|inst11|clock_2|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_2|q[14]~47_combout\,
	sclr => \inst7|inst11|clock_2|_~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_2|q\(14));

-- Location: LCCOMB_X16_Y8_N8
\inst7|inst11|clock_2|q[15]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_2|q[15]~49_combout\ = (\inst7|inst11|clock_2|q\(15) & (\inst7|inst11|clock_2|q[14]~48\ $ (GND))) # (!\inst7|inst11|clock_2|q\(15) & (!\inst7|inst11|clock_2|q[14]~48\ & VCC))
-- \inst7|inst11|clock_2|q[15]~50\ = CARRY((\inst7|inst11|clock_2|q\(15) & !\inst7|inst11|clock_2|q[14]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_2|q\(15),
	datad => VCC,
	cin => \inst7|inst11|clock_2|q[14]~48\,
	combout => \inst7|inst11|clock_2|q[15]~49_combout\,
	cout => \inst7|inst11|clock_2|q[15]~50\);

-- Location: FF_X16_Y8_N9
\inst7|inst11|clock_2|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_2|q[15]~49_combout\,
	sclr => \inst7|inst11|clock_2|_~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_2|q\(15));

-- Location: LCCOMB_X16_Y8_N10
\inst7|inst11|clock_2|q[16]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_2|q[16]~51_combout\ = (\inst7|inst11|clock_2|q\(16) & (!\inst7|inst11|clock_2|q[15]~50\)) # (!\inst7|inst11|clock_2|q\(16) & ((\inst7|inst11|clock_2|q[15]~50\) # (GND)))
-- \inst7|inst11|clock_2|q[16]~52\ = CARRY((!\inst7|inst11|clock_2|q[15]~50\) # (!\inst7|inst11|clock_2|q\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_2|q\(16),
	datad => VCC,
	cin => \inst7|inst11|clock_2|q[15]~50\,
	combout => \inst7|inst11|clock_2|q[16]~51_combout\,
	cout => \inst7|inst11|clock_2|q[16]~52\);

-- Location: FF_X16_Y8_N11
\inst7|inst11|clock_2|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_2|q[16]~51_combout\,
	sclr => \inst7|inst11|clock_2|_~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_2|q\(16));

-- Location: LCCOMB_X16_Y8_N12
\inst7|inst11|clock_2|q[17]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_2|q[17]~53_combout\ = (\inst7|inst11|clock_2|q\(17) & (\inst7|inst11|clock_2|q[16]~52\ $ (GND))) # (!\inst7|inst11|clock_2|q\(17) & (!\inst7|inst11|clock_2|q[16]~52\ & VCC))
-- \inst7|inst11|clock_2|q[17]~54\ = CARRY((\inst7|inst11|clock_2|q\(17) & !\inst7|inst11|clock_2|q[16]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_2|q\(17),
	datad => VCC,
	cin => \inst7|inst11|clock_2|q[16]~52\,
	combout => \inst7|inst11|clock_2|q[17]~53_combout\,
	cout => \inst7|inst11|clock_2|q[17]~54\);

-- Location: FF_X16_Y8_N13
\inst7|inst11|clock_2|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_2|q[17]~53_combout\,
	sclr => \inst7|inst11|clock_2|_~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_2|q\(17));

-- Location: LCCOMB_X16_Y8_N14
\inst7|inst11|clock_2|q[18]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_2|q[18]~55_combout\ = (\inst7|inst11|clock_2|q\(18) & (!\inst7|inst11|clock_2|q[17]~54\)) # (!\inst7|inst11|clock_2|q\(18) & ((\inst7|inst11|clock_2|q[17]~54\) # (GND)))
-- \inst7|inst11|clock_2|q[18]~56\ = CARRY((!\inst7|inst11|clock_2|q[17]~54\) # (!\inst7|inst11|clock_2|q\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_2|q\(18),
	datad => VCC,
	cin => \inst7|inst11|clock_2|q[17]~54\,
	combout => \inst7|inst11|clock_2|q[18]~55_combout\,
	cout => \inst7|inst11|clock_2|q[18]~56\);

-- Location: FF_X16_Y8_N15
\inst7|inst11|clock_2|q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_2|q[18]~55_combout\,
	sclr => \inst7|inst11|clock_2|_~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_2|q\(18));

-- Location: LCCOMB_X16_Y8_N16
\inst7|inst11|clock_2|q[19]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_2|q[19]~57_combout\ = (\inst7|inst11|clock_2|q\(19) & (\inst7|inst11|clock_2|q[18]~56\ $ (GND))) # (!\inst7|inst11|clock_2|q\(19) & (!\inst7|inst11|clock_2|q[18]~56\ & VCC))
-- \inst7|inst11|clock_2|q[19]~58\ = CARRY((\inst7|inst11|clock_2|q\(19) & !\inst7|inst11|clock_2|q[18]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_2|q\(19),
	datad => VCC,
	cin => \inst7|inst11|clock_2|q[18]~56\,
	combout => \inst7|inst11|clock_2|q[19]~57_combout\,
	cout => \inst7|inst11|clock_2|q[19]~58\);

-- Location: FF_X16_Y8_N17
\inst7|inst11|clock_2|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_2|q[19]~57_combout\,
	sclr => \inst7|inst11|clock_2|_~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_2|q\(19));

-- Location: LCCOMB_X16_Y8_N18
\inst7|inst11|clock_2|q[20]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_2|q[20]~59_combout\ = (\inst7|inst11|clock_2|q\(20) & (!\inst7|inst11|clock_2|q[19]~58\)) # (!\inst7|inst11|clock_2|q\(20) & ((\inst7|inst11|clock_2|q[19]~58\) # (GND)))
-- \inst7|inst11|clock_2|q[20]~60\ = CARRY((!\inst7|inst11|clock_2|q[19]~58\) # (!\inst7|inst11|clock_2|q\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_2|q\(20),
	datad => VCC,
	cin => \inst7|inst11|clock_2|q[19]~58\,
	combout => \inst7|inst11|clock_2|q[20]~59_combout\,
	cout => \inst7|inst11|clock_2|q[20]~60\);

-- Location: FF_X16_Y8_N19
\inst7|inst11|clock_2|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_2|q[20]~59_combout\,
	sclr => \inst7|inst11|clock_2|_~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_2|q\(20));

-- Location: LCCOMB_X16_Y8_N20
\inst7|inst11|clock_2|q[21]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_2|q[21]~61_combout\ = \inst7|inst11|clock_2|q\(21) $ (!\inst7|inst11|clock_2|q[20]~60\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_2|q\(21),
	cin => \inst7|inst11|clock_2|q[20]~60\,
	combout => \inst7|inst11|clock_2|q[21]~61_combout\);

-- Location: FF_X16_Y8_N21
\inst7|inst11|clock_2|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_2|q[21]~61_combout\,
	sclr => \inst7|inst11|clock_2|_~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_2|q\(21));

-- Location: LCCOMB_X16_Y8_N24
\inst7|inst11|clock_2|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_2|_~5_combout\ = (\inst7|inst11|clock_2|q\(17) & (!\inst7|inst11|clock_2|q\(19) & (!\inst7|inst11|clock_2|q\(18) & \inst7|inst11|clock_2|q\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_2|q\(17),
	datab => \inst7|inst11|clock_2|q\(19),
	datac => \inst7|inst11|clock_2|q\(18),
	datad => \inst7|inst11|clock_2|q\(16),
	combout => \inst7|inst11|clock_2|_~5_combout\);

-- Location: LCCOMB_X16_Y9_N10
\inst7|inst11|clock_2|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_2|_~0_combout\ = (!\inst7|inst11|clock_2|q\(1) & (!\inst7|inst11|clock_2|q\(2) & (!\inst7|inst11|clock_2|q\(0) & !\inst7|inst11|clock_2|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_2|q\(1),
	datab => \inst7|inst11|clock_2|q\(2),
	datac => \inst7|inst11|clock_2|q\(0),
	datad => \inst7|inst11|clock_2|q\(3),
	combout => \inst7|inst11|clock_2|_~0_combout\);

-- Location: LCCOMB_X16_Y9_N2
\inst7|inst11|clock_2|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_2|_~2_combout\ = (!\inst7|inst11|clock_2|q\(8) & (\inst7|inst11|clock_2|q\(9) & (!\inst7|inst11|clock_2|q\(10) & !\inst7|inst11|clock_2|q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_2|q\(8),
	datab => \inst7|inst11|clock_2|q\(9),
	datac => \inst7|inst11|clock_2|q\(10),
	datad => \inst7|inst11|clock_2|q\(11),
	combout => \inst7|inst11|clock_2|_~2_combout\);

-- Location: LCCOMB_X16_Y9_N8
\inst7|inst11|clock_2|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_2|_~1_combout\ = (\inst7|inst11|clock_2|q\(7) & (\inst7|inst11|clock_2|q\(4) & (\inst7|inst11|clock_2|q\(6) & !\inst7|inst11|clock_2|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_2|q\(7),
	datab => \inst7|inst11|clock_2|q\(4),
	datac => \inst7|inst11|clock_2|q\(6),
	datad => \inst7|inst11|clock_2|q\(5),
	combout => \inst7|inst11|clock_2|_~1_combout\);

-- Location: LCCOMB_X16_Y8_N26
\inst7|inst11|clock_2|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_2|_~3_combout\ = (!\inst7|inst11|clock_2|q\(14) & (!\inst7|inst11|clock_2|q\(15) & (!\inst7|inst11|clock_2|q\(13) & \inst7|inst11|clock_2|q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_2|q\(14),
	datab => \inst7|inst11|clock_2|q\(15),
	datac => \inst7|inst11|clock_2|q\(13),
	datad => \inst7|inst11|clock_2|q\(12),
	combout => \inst7|inst11|clock_2|_~3_combout\);

-- Location: LCCOMB_X16_Y9_N0
\inst7|inst11|clock_2|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_2|_~4_combout\ = (\inst7|inst11|clock_2|_~0_combout\ & (\inst7|inst11|clock_2|_~2_combout\ & (\inst7|inst11|clock_2|_~1_combout\ & \inst7|inst11|clock_2|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_2|_~0_combout\,
	datab => \inst7|inst11|clock_2|_~2_combout\,
	datac => \inst7|inst11|clock_2|_~1_combout\,
	datad => \inst7|inst11|clock_2|_~3_combout\,
	combout => \inst7|inst11|clock_2|_~4_combout\);

-- Location: LCCOMB_X16_Y9_N6
\inst7|inst11|clock_2|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_2|_~6_combout\ = (!\inst7|inst11|clock_2|q\(21) & (\inst7|inst11|clock_2|q\(20) & (\inst7|inst11|clock_2|_~5_combout\ & \inst7|inst11|clock_2|_~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_2|q\(21),
	datab => \inst7|inst11|clock_2|q\(20),
	datac => \inst7|inst11|clock_2|_~5_combout\,
	datad => \inst7|inst11|clock_2|_~4_combout\,
	combout => \inst7|inst11|clock_2|_~6_combout\);

-- Location: FF_X19_Y12_N19
\inst7|inst11|clock_2|aux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \inst7|inst11|clock_2|_~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_2|aux~q\);

-- Location: LCCOMB_X19_Y12_N18
\inst7|inst11|clk_O~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clk_O~5_combout\ = (\inst1|Freq_out[1]~0_combout\ & ((\inst7|inst11|clock_025|aux~q\) # ((\inst1|Freq_out[0]~1_combout\)))) # (!\inst1|Freq_out[1]~0_combout\ & (((\inst7|inst11|clock_2|aux~q\ & !\inst1|Freq_out[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Freq_out[1]~0_combout\,
	datab => \inst7|inst11|clock_025|aux~q\,
	datac => \inst7|inst11|clock_2|aux~q\,
	datad => \inst1|Freq_out[0]~1_combout\,
	combout => \inst7|inst11|clk_O~5_combout\);

-- Location: LCCOMB_X19_Y8_N12
\inst7|inst11|clock_050|q[18]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_050|q[18]~57_combout\ = (\inst7|inst11|clock_050|q\(18) & (!\inst7|inst11|clock_050|q[17]~56\)) # (!\inst7|inst11|clock_050|q\(18) & ((\inst7|inst11|clock_050|q[17]~56\) # (GND)))
-- \inst7|inst11|clock_050|q[18]~58\ = CARRY((!\inst7|inst11|clock_050|q[17]~56\) # (!\inst7|inst11|clock_050|q\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_050|q\(18),
	datad => VCC,
	cin => \inst7|inst11|clock_050|q[17]~56\,
	combout => \inst7|inst11|clock_050|q[18]~57_combout\,
	cout => \inst7|inst11|clock_050|q[18]~58\);

-- Location: LCCOMB_X19_Y8_N14
\inst7|inst11|clock_050|q[19]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_050|q[19]~59_combout\ = (\inst7|inst11|clock_050|q\(19) & (\inst7|inst11|clock_050|q[18]~58\ $ (GND))) # (!\inst7|inst11|clock_050|q\(19) & (!\inst7|inst11|clock_050|q[18]~58\ & VCC))
-- \inst7|inst11|clock_050|q[19]~60\ = CARRY((\inst7|inst11|clock_050|q\(19) & !\inst7|inst11|clock_050|q[18]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_050|q\(19),
	datad => VCC,
	cin => \inst7|inst11|clock_050|q[18]~58\,
	combout => \inst7|inst11|clock_050|q[19]~59_combout\,
	cout => \inst7|inst11|clock_050|q[19]~60\);

-- Location: FF_X19_Y8_N15
\inst7|inst11|clock_050|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_050|q[19]~59_combout\,
	sclr => \inst7|inst11|clock_050|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_050|q\(19));

-- Location: LCCOMB_X19_Y8_N16
\inst7|inst11|clock_050|q[20]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_050|q[20]~61_combout\ = (\inst7|inst11|clock_050|q\(20) & (!\inst7|inst11|clock_050|q[19]~60\)) # (!\inst7|inst11|clock_050|q\(20) & ((\inst7|inst11|clock_050|q[19]~60\) # (GND)))
-- \inst7|inst11|clock_050|q[20]~62\ = CARRY((!\inst7|inst11|clock_050|q[19]~60\) # (!\inst7|inst11|clock_050|q\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_050|q\(20),
	datad => VCC,
	cin => \inst7|inst11|clock_050|q[19]~60\,
	combout => \inst7|inst11|clock_050|q[20]~61_combout\,
	cout => \inst7|inst11|clock_050|q[20]~62\);

-- Location: FF_X19_Y8_N17
\inst7|inst11|clock_050|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_050|q[20]~61_combout\,
	sclr => \inst7|inst11|clock_050|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_050|q\(20));

-- Location: LCCOMB_X19_Y8_N18
\inst7|inst11|clock_050|q[21]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_050|q[21]~63_combout\ = (\inst7|inst11|clock_050|q\(21) & (\inst7|inst11|clock_050|q[20]~62\ $ (GND))) # (!\inst7|inst11|clock_050|q\(21) & (!\inst7|inst11|clock_050|q[20]~62\ & VCC))
-- \inst7|inst11|clock_050|q[21]~64\ = CARRY((\inst7|inst11|clock_050|q\(21) & !\inst7|inst11|clock_050|q[20]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_050|q\(21),
	datad => VCC,
	cin => \inst7|inst11|clock_050|q[20]~62\,
	combout => \inst7|inst11|clock_050|q[21]~63_combout\,
	cout => \inst7|inst11|clock_050|q[21]~64\);

-- Location: FF_X19_Y8_N19
\inst7|inst11|clock_050|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_050|q[21]~63_combout\,
	sclr => \inst7|inst11|clock_050|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_050|q\(21));

-- Location: LCCOMB_X19_Y8_N20
\inst7|inst11|clock_050|q[22]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_050|q[22]~65_combout\ = (\inst7|inst11|clock_050|q\(22) & (!\inst7|inst11|clock_050|q[21]~64\)) # (!\inst7|inst11|clock_050|q\(22) & ((\inst7|inst11|clock_050|q[21]~64\) # (GND)))
-- \inst7|inst11|clock_050|q[22]~66\ = CARRY((!\inst7|inst11|clock_050|q[21]~64\) # (!\inst7|inst11|clock_050|q\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_050|q\(22),
	datad => VCC,
	cin => \inst7|inst11|clock_050|q[21]~64\,
	combout => \inst7|inst11|clock_050|q[22]~65_combout\,
	cout => \inst7|inst11|clock_050|q[22]~66\);

-- Location: FF_X19_Y8_N21
\inst7|inst11|clock_050|q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_050|q[22]~65_combout\,
	sclr => \inst7|inst11|clock_050|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_050|q\(22));

-- Location: LCCOMB_X19_Y8_N22
\inst7|inst11|clock_050|q[23]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_050|q[23]~67_combout\ = \inst7|inst11|clock_050|q\(23) $ (!\inst7|inst11|clock_050|q[22]~66\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_050|q\(23),
	cin => \inst7|inst11|clock_050|q[22]~66\,
	combout => \inst7|inst11|clock_050|q[23]~67_combout\);

-- Location: FF_X19_Y8_N23
\inst7|inst11|clock_050|q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_050|q[23]~67_combout\,
	sclr => \inst7|inst11|clock_050|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_050|q\(23));

-- Location: LCCOMB_X19_Y8_N26
\inst7|inst11|clock_050|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_050|_~6_combout\ = (\inst7|inst11|clock_050|q\(22) & (!\inst7|inst11|clock_050|q\(21) & (!\inst7|inst11|clock_050|q\(23) & !\inst7|inst11|clock_050|q\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_050|q\(22),
	datab => \inst7|inst11|clock_050|q\(21),
	datac => \inst7|inst11|clock_050|q\(23),
	datad => \inst7|inst11|clock_050|q\(20),
	combout => \inst7|inst11|clock_050|_~6_combout\);

-- Location: LCCOMB_X19_Y8_N30
\inst7|inst11|clock_050|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_050|_~3_combout\ = (!\inst7|inst11|clock_050|q\(15) & (!\inst7|inst11|clock_050|q\(13) & (\inst7|inst11|clock_050|q\(14) & !\inst7|inst11|clock_050|q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_050|q\(15),
	datab => \inst7|inst11|clock_050|q\(13),
	datac => \inst7|inst11|clock_050|q\(14),
	datad => \inst7|inst11|clock_050|q\(12),
	combout => \inst7|inst11|clock_050|_~3_combout\);

-- Location: LCCOMB_X19_Y9_N6
\inst7|inst11|clock_050|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_050|_~1_combout\ = (!\inst7|inst11|clock_050|q\(4) & (\inst7|inst11|clock_050|q\(6) & (!\inst7|inst11|clock_050|q\(7) & !\inst7|inst11|clock_050|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_050|q\(4),
	datab => \inst7|inst11|clock_050|q\(6),
	datac => \inst7|inst11|clock_050|q\(7),
	datad => \inst7|inst11|clock_050|q\(5),
	combout => \inst7|inst11|clock_050|_~1_combout\);

-- Location: LCCOMB_X19_Y9_N4
\inst7|inst11|clock_050|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_050|_~2_combout\ = (\inst7|inst11|clock_050|q\(11) & (\inst7|inst11|clock_050|q\(8) & (\inst7|inst11|clock_050|q\(9) & !\inst7|inst11|clock_050|q\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_050|q\(11),
	datab => \inst7|inst11|clock_050|q\(8),
	datac => \inst7|inst11|clock_050|q\(9),
	datad => \inst7|inst11|clock_050|q\(10),
	combout => \inst7|inst11|clock_050|_~2_combout\);

-- Location: LCCOMB_X19_Y9_N0
\inst7|inst11|clock_050|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_050|_~0_combout\ = (!\inst7|inst11|clock_050|q\(1) & (!\inst7|inst11|clock_050|q\(2) & (!\inst7|inst11|clock_050|q\(3) & !\inst7|inst11|clock_050|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_050|q\(1),
	datab => \inst7|inst11|clock_050|q\(2),
	datac => \inst7|inst11|clock_050|q\(3),
	datad => \inst7|inst11|clock_050|q\(0),
	combout => \inst7|inst11|clock_050|_~0_combout\);

-- Location: LCCOMB_X19_Y9_N2
\inst7|inst11|clock_050|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_050|_~4_combout\ = (\inst7|inst11|clock_050|_~3_combout\ & (\inst7|inst11|clock_050|_~1_combout\ & (\inst7|inst11|clock_050|_~2_combout\ & \inst7|inst11|clock_050|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_050|_~3_combout\,
	datab => \inst7|inst11|clock_050|_~1_combout\,
	datac => \inst7|inst11|clock_050|_~2_combout\,
	datad => \inst7|inst11|clock_050|_~0_combout\,
	combout => \inst7|inst11|clock_050|_~4_combout\);

-- Location: LCCOMB_X19_Y8_N24
\inst7|inst11|clock_050|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_050|_~8_combout\ = (!\inst7|inst11|clock_050|q\(0) & (((!\inst7|inst11|clock_050|_~4_combout\) # (!\inst7|inst11|clock_050|_~5_combout\)) # (!\inst7|inst11|clock_050|_~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_050|_~6_combout\,
	datab => \inst7|inst11|clock_050|_~5_combout\,
	datac => \inst7|inst11|clock_050|q\(0),
	datad => \inst7|inst11|clock_050|_~4_combout\,
	combout => \inst7|inst11|clock_050|_~8_combout\);

-- Location: FF_X19_Y8_N25
\inst7|inst11|clock_050|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_050|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_050|q\(0));

-- Location: LCCOMB_X19_Y9_N10
\inst7|inst11|clock_050|q[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_050|q[1]~23_combout\ = (\inst7|inst11|clock_050|q\(1) & (\inst7|inst11|clock_050|q\(0) $ (VCC))) # (!\inst7|inst11|clock_050|q\(1) & (\inst7|inst11|clock_050|q\(0) & VCC))
-- \inst7|inst11|clock_050|q[1]~24\ = CARRY((\inst7|inst11|clock_050|q\(1) & \inst7|inst11|clock_050|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_050|q\(1),
	datab => \inst7|inst11|clock_050|q\(0),
	datad => VCC,
	combout => \inst7|inst11|clock_050|q[1]~23_combout\,
	cout => \inst7|inst11|clock_050|q[1]~24\);

-- Location: FF_X19_Y9_N11
\inst7|inst11|clock_050|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_050|q[1]~23_combout\,
	sclr => \inst7|inst11|clock_050|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_050|q\(1));

-- Location: LCCOMB_X19_Y9_N12
\inst7|inst11|clock_050|q[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_050|q[2]~25_combout\ = (\inst7|inst11|clock_050|q\(2) & (!\inst7|inst11|clock_050|q[1]~24\)) # (!\inst7|inst11|clock_050|q\(2) & ((\inst7|inst11|clock_050|q[1]~24\) # (GND)))
-- \inst7|inst11|clock_050|q[2]~26\ = CARRY((!\inst7|inst11|clock_050|q[1]~24\) # (!\inst7|inst11|clock_050|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_050|q\(2),
	datad => VCC,
	cin => \inst7|inst11|clock_050|q[1]~24\,
	combout => \inst7|inst11|clock_050|q[2]~25_combout\,
	cout => \inst7|inst11|clock_050|q[2]~26\);

-- Location: FF_X19_Y9_N13
\inst7|inst11|clock_050|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_050|q[2]~25_combout\,
	sclr => \inst7|inst11|clock_050|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_050|q\(2));

-- Location: LCCOMB_X19_Y9_N14
\inst7|inst11|clock_050|q[3]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_050|q[3]~27_combout\ = (\inst7|inst11|clock_050|q\(3) & (\inst7|inst11|clock_050|q[2]~26\ $ (GND))) # (!\inst7|inst11|clock_050|q\(3) & (!\inst7|inst11|clock_050|q[2]~26\ & VCC))
-- \inst7|inst11|clock_050|q[3]~28\ = CARRY((\inst7|inst11|clock_050|q\(3) & !\inst7|inst11|clock_050|q[2]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_050|q\(3),
	datad => VCC,
	cin => \inst7|inst11|clock_050|q[2]~26\,
	combout => \inst7|inst11|clock_050|q[3]~27_combout\,
	cout => \inst7|inst11|clock_050|q[3]~28\);

-- Location: FF_X19_Y9_N15
\inst7|inst11|clock_050|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_050|q[3]~27_combout\,
	sclr => \inst7|inst11|clock_050|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_050|q\(3));

-- Location: LCCOMB_X19_Y9_N16
\inst7|inst11|clock_050|q[4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_050|q[4]~29_combout\ = (\inst7|inst11|clock_050|q\(4) & (!\inst7|inst11|clock_050|q[3]~28\)) # (!\inst7|inst11|clock_050|q\(4) & ((\inst7|inst11|clock_050|q[3]~28\) # (GND)))
-- \inst7|inst11|clock_050|q[4]~30\ = CARRY((!\inst7|inst11|clock_050|q[3]~28\) # (!\inst7|inst11|clock_050|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_050|q\(4),
	datad => VCC,
	cin => \inst7|inst11|clock_050|q[3]~28\,
	combout => \inst7|inst11|clock_050|q[4]~29_combout\,
	cout => \inst7|inst11|clock_050|q[4]~30\);

-- Location: FF_X19_Y9_N17
\inst7|inst11|clock_050|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_050|q[4]~29_combout\,
	sclr => \inst7|inst11|clock_050|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_050|q\(4));

-- Location: LCCOMB_X19_Y9_N18
\inst7|inst11|clock_050|q[5]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_050|q[5]~31_combout\ = (\inst7|inst11|clock_050|q\(5) & (\inst7|inst11|clock_050|q[4]~30\ $ (GND))) # (!\inst7|inst11|clock_050|q\(5) & (!\inst7|inst11|clock_050|q[4]~30\ & VCC))
-- \inst7|inst11|clock_050|q[5]~32\ = CARRY((\inst7|inst11|clock_050|q\(5) & !\inst7|inst11|clock_050|q[4]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_050|q\(5),
	datad => VCC,
	cin => \inst7|inst11|clock_050|q[4]~30\,
	combout => \inst7|inst11|clock_050|q[5]~31_combout\,
	cout => \inst7|inst11|clock_050|q[5]~32\);

-- Location: FF_X19_Y9_N19
\inst7|inst11|clock_050|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_050|q[5]~31_combout\,
	sclr => \inst7|inst11|clock_050|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_050|q\(5));

-- Location: LCCOMB_X19_Y9_N20
\inst7|inst11|clock_050|q[6]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_050|q[6]~33_combout\ = (\inst7|inst11|clock_050|q\(6) & (!\inst7|inst11|clock_050|q[5]~32\)) # (!\inst7|inst11|clock_050|q\(6) & ((\inst7|inst11|clock_050|q[5]~32\) # (GND)))
-- \inst7|inst11|clock_050|q[6]~34\ = CARRY((!\inst7|inst11|clock_050|q[5]~32\) # (!\inst7|inst11|clock_050|q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_050|q\(6),
	datad => VCC,
	cin => \inst7|inst11|clock_050|q[5]~32\,
	combout => \inst7|inst11|clock_050|q[6]~33_combout\,
	cout => \inst7|inst11|clock_050|q[6]~34\);

-- Location: FF_X19_Y9_N21
\inst7|inst11|clock_050|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_050|q[6]~33_combout\,
	sclr => \inst7|inst11|clock_050|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_050|q\(6));

-- Location: LCCOMB_X19_Y9_N22
\inst7|inst11|clock_050|q[7]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_050|q[7]~35_combout\ = (\inst7|inst11|clock_050|q\(7) & (\inst7|inst11|clock_050|q[6]~34\ $ (GND))) # (!\inst7|inst11|clock_050|q\(7) & (!\inst7|inst11|clock_050|q[6]~34\ & VCC))
-- \inst7|inst11|clock_050|q[7]~36\ = CARRY((\inst7|inst11|clock_050|q\(7) & !\inst7|inst11|clock_050|q[6]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_050|q\(7),
	datad => VCC,
	cin => \inst7|inst11|clock_050|q[6]~34\,
	combout => \inst7|inst11|clock_050|q[7]~35_combout\,
	cout => \inst7|inst11|clock_050|q[7]~36\);

-- Location: FF_X19_Y9_N23
\inst7|inst11|clock_050|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_050|q[7]~35_combout\,
	sclr => \inst7|inst11|clock_050|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_050|q\(7));

-- Location: LCCOMB_X19_Y9_N24
\inst7|inst11|clock_050|q[8]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_050|q[8]~37_combout\ = (\inst7|inst11|clock_050|q\(8) & (!\inst7|inst11|clock_050|q[7]~36\)) # (!\inst7|inst11|clock_050|q\(8) & ((\inst7|inst11|clock_050|q[7]~36\) # (GND)))
-- \inst7|inst11|clock_050|q[8]~38\ = CARRY((!\inst7|inst11|clock_050|q[7]~36\) # (!\inst7|inst11|clock_050|q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_050|q\(8),
	datad => VCC,
	cin => \inst7|inst11|clock_050|q[7]~36\,
	combout => \inst7|inst11|clock_050|q[8]~37_combout\,
	cout => \inst7|inst11|clock_050|q[8]~38\);

-- Location: FF_X19_Y9_N25
\inst7|inst11|clock_050|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_050|q[8]~37_combout\,
	sclr => \inst7|inst11|clock_050|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_050|q\(8));

-- Location: LCCOMB_X19_Y9_N26
\inst7|inst11|clock_050|q[9]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_050|q[9]~39_combout\ = (\inst7|inst11|clock_050|q\(9) & (\inst7|inst11|clock_050|q[8]~38\ $ (GND))) # (!\inst7|inst11|clock_050|q\(9) & (!\inst7|inst11|clock_050|q[8]~38\ & VCC))
-- \inst7|inst11|clock_050|q[9]~40\ = CARRY((\inst7|inst11|clock_050|q\(9) & !\inst7|inst11|clock_050|q[8]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_050|q\(9),
	datad => VCC,
	cin => \inst7|inst11|clock_050|q[8]~38\,
	combout => \inst7|inst11|clock_050|q[9]~39_combout\,
	cout => \inst7|inst11|clock_050|q[9]~40\);

-- Location: FF_X19_Y9_N27
\inst7|inst11|clock_050|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_050|q[9]~39_combout\,
	sclr => \inst7|inst11|clock_050|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_050|q\(9));

-- Location: LCCOMB_X19_Y9_N28
\inst7|inst11|clock_050|q[10]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_050|q[10]~41_combout\ = (\inst7|inst11|clock_050|q\(10) & (!\inst7|inst11|clock_050|q[9]~40\)) # (!\inst7|inst11|clock_050|q\(10) & ((\inst7|inst11|clock_050|q[9]~40\) # (GND)))
-- \inst7|inst11|clock_050|q[10]~42\ = CARRY((!\inst7|inst11|clock_050|q[9]~40\) # (!\inst7|inst11|clock_050|q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_050|q\(10),
	datad => VCC,
	cin => \inst7|inst11|clock_050|q[9]~40\,
	combout => \inst7|inst11|clock_050|q[10]~41_combout\,
	cout => \inst7|inst11|clock_050|q[10]~42\);

-- Location: FF_X19_Y9_N29
\inst7|inst11|clock_050|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_050|q[10]~41_combout\,
	sclr => \inst7|inst11|clock_050|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_050|q\(10));

-- Location: LCCOMB_X19_Y9_N30
\inst7|inst11|clock_050|q[11]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_050|q[11]~43_combout\ = (\inst7|inst11|clock_050|q\(11) & (\inst7|inst11|clock_050|q[10]~42\ $ (GND))) # (!\inst7|inst11|clock_050|q\(11) & (!\inst7|inst11|clock_050|q[10]~42\ & VCC))
-- \inst7|inst11|clock_050|q[11]~44\ = CARRY((\inst7|inst11|clock_050|q\(11) & !\inst7|inst11|clock_050|q[10]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_050|q\(11),
	datad => VCC,
	cin => \inst7|inst11|clock_050|q[10]~42\,
	combout => \inst7|inst11|clock_050|q[11]~43_combout\,
	cout => \inst7|inst11|clock_050|q[11]~44\);

-- Location: FF_X19_Y9_N31
\inst7|inst11|clock_050|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_050|q[11]~43_combout\,
	sclr => \inst7|inst11|clock_050|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_050|q\(11));

-- Location: LCCOMB_X19_Y8_N0
\inst7|inst11|clock_050|q[12]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_050|q[12]~45_combout\ = (\inst7|inst11|clock_050|q\(12) & (!\inst7|inst11|clock_050|q[11]~44\)) # (!\inst7|inst11|clock_050|q\(12) & ((\inst7|inst11|clock_050|q[11]~44\) # (GND)))
-- \inst7|inst11|clock_050|q[12]~46\ = CARRY((!\inst7|inst11|clock_050|q[11]~44\) # (!\inst7|inst11|clock_050|q\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_050|q\(12),
	datad => VCC,
	cin => \inst7|inst11|clock_050|q[11]~44\,
	combout => \inst7|inst11|clock_050|q[12]~45_combout\,
	cout => \inst7|inst11|clock_050|q[12]~46\);

-- Location: FF_X19_Y8_N1
\inst7|inst11|clock_050|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_050|q[12]~45_combout\,
	sclr => \inst7|inst11|clock_050|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_050|q\(12));

-- Location: LCCOMB_X19_Y8_N2
\inst7|inst11|clock_050|q[13]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_050|q[13]~47_combout\ = (\inst7|inst11|clock_050|q\(13) & (\inst7|inst11|clock_050|q[12]~46\ $ (GND))) # (!\inst7|inst11|clock_050|q\(13) & (!\inst7|inst11|clock_050|q[12]~46\ & VCC))
-- \inst7|inst11|clock_050|q[13]~48\ = CARRY((\inst7|inst11|clock_050|q\(13) & !\inst7|inst11|clock_050|q[12]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_050|q\(13),
	datad => VCC,
	cin => \inst7|inst11|clock_050|q[12]~46\,
	combout => \inst7|inst11|clock_050|q[13]~47_combout\,
	cout => \inst7|inst11|clock_050|q[13]~48\);

-- Location: FF_X19_Y8_N3
\inst7|inst11|clock_050|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_050|q[13]~47_combout\,
	sclr => \inst7|inst11|clock_050|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_050|q\(13));

-- Location: LCCOMB_X19_Y8_N4
\inst7|inst11|clock_050|q[14]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_050|q[14]~49_combout\ = (\inst7|inst11|clock_050|q\(14) & (!\inst7|inst11|clock_050|q[13]~48\)) # (!\inst7|inst11|clock_050|q\(14) & ((\inst7|inst11|clock_050|q[13]~48\) # (GND)))
-- \inst7|inst11|clock_050|q[14]~50\ = CARRY((!\inst7|inst11|clock_050|q[13]~48\) # (!\inst7|inst11|clock_050|q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_050|q\(14),
	datad => VCC,
	cin => \inst7|inst11|clock_050|q[13]~48\,
	combout => \inst7|inst11|clock_050|q[14]~49_combout\,
	cout => \inst7|inst11|clock_050|q[14]~50\);

-- Location: FF_X19_Y8_N5
\inst7|inst11|clock_050|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_050|q[14]~49_combout\,
	sclr => \inst7|inst11|clock_050|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_050|q\(14));

-- Location: LCCOMB_X19_Y8_N6
\inst7|inst11|clock_050|q[15]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_050|q[15]~51_combout\ = (\inst7|inst11|clock_050|q\(15) & (\inst7|inst11|clock_050|q[14]~50\ $ (GND))) # (!\inst7|inst11|clock_050|q\(15) & (!\inst7|inst11|clock_050|q[14]~50\ & VCC))
-- \inst7|inst11|clock_050|q[15]~52\ = CARRY((\inst7|inst11|clock_050|q\(15) & !\inst7|inst11|clock_050|q[14]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_050|q\(15),
	datad => VCC,
	cin => \inst7|inst11|clock_050|q[14]~50\,
	combout => \inst7|inst11|clock_050|q[15]~51_combout\,
	cout => \inst7|inst11|clock_050|q[15]~52\);

-- Location: FF_X19_Y8_N7
\inst7|inst11|clock_050|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_050|q[15]~51_combout\,
	sclr => \inst7|inst11|clock_050|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_050|q\(15));

-- Location: LCCOMB_X19_Y8_N8
\inst7|inst11|clock_050|q[16]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_050|q[16]~53_combout\ = (\inst7|inst11|clock_050|q\(16) & (!\inst7|inst11|clock_050|q[15]~52\)) # (!\inst7|inst11|clock_050|q\(16) & ((\inst7|inst11|clock_050|q[15]~52\) # (GND)))
-- \inst7|inst11|clock_050|q[16]~54\ = CARRY((!\inst7|inst11|clock_050|q[15]~52\) # (!\inst7|inst11|clock_050|q\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_050|q\(16),
	datad => VCC,
	cin => \inst7|inst11|clock_050|q[15]~52\,
	combout => \inst7|inst11|clock_050|q[16]~53_combout\,
	cout => \inst7|inst11|clock_050|q[16]~54\);

-- Location: FF_X19_Y8_N9
\inst7|inst11|clock_050|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_050|q[16]~53_combout\,
	sclr => \inst7|inst11|clock_050|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_050|q\(16));

-- Location: LCCOMB_X19_Y8_N10
\inst7|inst11|clock_050|q[17]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_050|q[17]~55_combout\ = (\inst7|inst11|clock_050|q\(17) & (\inst7|inst11|clock_050|q[16]~54\ $ (GND))) # (!\inst7|inst11|clock_050|q\(17) & (!\inst7|inst11|clock_050|q[16]~54\ & VCC))
-- \inst7|inst11|clock_050|q[17]~56\ = CARRY((\inst7|inst11|clock_050|q\(17) & !\inst7|inst11|clock_050|q[16]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_050|q\(17),
	datad => VCC,
	cin => \inst7|inst11|clock_050|q[16]~54\,
	combout => \inst7|inst11|clock_050|q[17]~55_combout\,
	cout => \inst7|inst11|clock_050|q[17]~56\);

-- Location: FF_X19_Y8_N11
\inst7|inst11|clock_050|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_050|q[17]~55_combout\,
	sclr => \inst7|inst11|clock_050|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_050|q\(17));

-- Location: FF_X19_Y8_N13
\inst7|inst11|clock_050|q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_050|q[18]~57_combout\,
	sclr => \inst7|inst11|clock_050|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_050|q\(18));

-- Location: LCCOMB_X19_Y8_N28
\inst7|inst11|clock_050|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_050|_~5_combout\ = (\inst7|inst11|clock_050|q\(18) & (\inst7|inst11|clock_050|q\(19) & (!\inst7|inst11|clock_050|q\(16) & !\inst7|inst11|clock_050|q\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_050|q\(18),
	datab => \inst7|inst11|clock_050|q\(19),
	datac => \inst7|inst11|clock_050|q\(16),
	datad => \inst7|inst11|clock_050|q\(17),
	combout => \inst7|inst11|clock_050|_~5_combout\);

-- Location: LCCOMB_X19_Y9_N8
\inst7|inst11|clock_050|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_050|_~7_combout\ = (\inst7|inst11|clock_050|_~5_combout\ & (\inst7|inst11|clock_050|_~6_combout\ & \inst7|inst11|clock_050|_~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_050|_~5_combout\,
	datac => \inst7|inst11|clock_050|_~6_combout\,
	datad => \inst7|inst11|clock_050|_~4_combout\,
	combout => \inst7|inst11|clock_050|_~7_combout\);

-- Location: FF_X19_Y12_N25
\inst7|inst11|clock_050|aux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \inst7|inst11|clock_050|_~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_050|aux~q\);

-- Location: LCCOMB_X5_Y10_N22
\inst7|inst11|clock_1|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_1|_~5_combout\ = (\inst7|inst11|clock_1|q\(18) & (!\inst7|inst11|clock_1|q\(19) & (!\inst7|inst11|clock_1|q\(16) & \inst7|inst11|clock_1|q\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_1|q\(18),
	datab => \inst7|inst11|clock_1|q\(19),
	datac => \inst7|inst11|clock_1|q\(16),
	datad => \inst7|inst11|clock_1|q\(17),
	combout => \inst7|inst11|clock_1|_~5_combout\);

-- Location: LCCOMB_X5_Y10_N30
\inst7|inst11|clock_1|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_1|_~3_combout\ = (!\inst7|inst11|clock_1|q\(15) & (!\inst7|inst11|clock_1|q\(12) & (!\inst7|inst11|clock_1|q\(14) & \inst7|inst11|clock_1|q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_1|q\(15),
	datab => \inst7|inst11|clock_1|q\(12),
	datac => \inst7|inst11|clock_1|q\(14),
	datad => \inst7|inst11|clock_1|q\(13),
	combout => \inst7|inst11|clock_1|_~3_combout\);

-- Location: LCCOMB_X5_Y11_N2
\inst7|inst11|clock_1|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_1|_~2_combout\ = (!\inst7|inst11|clock_1|q\(9) & (\inst7|inst11|clock_1|q\(10) & (!\inst7|inst11|clock_1|q\(11) & \inst7|inst11|clock_1|q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_1|q\(9),
	datab => \inst7|inst11|clock_1|q\(10),
	datac => \inst7|inst11|clock_1|q\(11),
	datad => \inst7|inst11|clock_1|q\(8),
	combout => \inst7|inst11|clock_1|_~2_combout\);

-- Location: LCCOMB_X5_Y11_N6
\inst7|inst11|clock_1|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_1|_~0_combout\ = (!\inst7|inst11|clock_1|q\(2) & (!\inst7|inst11|clock_1|q\(0) & (!\inst7|inst11|clock_1|q\(3) & !\inst7|inst11|clock_1|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_1|q\(2),
	datab => \inst7|inst11|clock_1|q\(0),
	datac => \inst7|inst11|clock_1|q\(3),
	datad => \inst7|inst11|clock_1|q\(1),
	combout => \inst7|inst11|clock_1|_~0_combout\);

-- Location: LCCOMB_X5_Y11_N8
\inst7|inst11|clock_1|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_1|_~1_combout\ = (!\inst7|inst11|clock_1|q\(4) & (\inst7|inst11|clock_1|q\(5) & (\inst7|inst11|clock_1|q\(7) & !\inst7|inst11|clock_1|q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_1|q\(4),
	datab => \inst7|inst11|clock_1|q\(5),
	datac => \inst7|inst11|clock_1|q\(7),
	datad => \inst7|inst11|clock_1|q\(6),
	combout => \inst7|inst11|clock_1|_~1_combout\);

-- Location: LCCOMB_X5_Y10_N24
\inst7|inst11|clock_1|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_1|_~4_combout\ = (\inst7|inst11|clock_1|_~3_combout\ & (\inst7|inst11|clock_1|_~2_combout\ & (\inst7|inst11|clock_1|_~0_combout\ & \inst7|inst11|clock_1|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_1|_~3_combout\,
	datab => \inst7|inst11|clock_1|_~2_combout\,
	datac => \inst7|inst11|clock_1|_~0_combout\,
	datad => \inst7|inst11|clock_1|_~1_combout\,
	combout => \inst7|inst11|clock_1|_~4_combout\);

-- Location: LCCOMB_X5_Y11_N0
\inst7|inst11|clock_1|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_1|_~8_combout\ = (!\inst7|inst11|clock_1|q\(0) & (((!\inst7|inst11|clock_1|_~4_combout\) # (!\inst7|inst11|clock_1|_~5_combout\)) # (!\inst7|inst11|clock_1|_~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_1|_~6_combout\,
	datab => \inst7|inst11|clock_1|_~5_combout\,
	datac => \inst7|inst11|clock_1|q\(0),
	datad => \inst7|inst11|clock_1|_~4_combout\,
	combout => \inst7|inst11|clock_1|_~8_combout\);

-- Location: FF_X5_Y11_N1
\inst7|inst11|clock_1|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_1|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_1|q\(0));

-- Location: LCCOMB_X5_Y11_N10
\inst7|inst11|clock_1|q[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_1|q[1]~22_combout\ = (\inst7|inst11|clock_1|q\(1) & (\inst7|inst11|clock_1|q\(0) $ (VCC))) # (!\inst7|inst11|clock_1|q\(1) & (\inst7|inst11|clock_1|q\(0) & VCC))
-- \inst7|inst11|clock_1|q[1]~23\ = CARRY((\inst7|inst11|clock_1|q\(1) & \inst7|inst11|clock_1|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_1|q\(1),
	datab => \inst7|inst11|clock_1|q\(0),
	datad => VCC,
	combout => \inst7|inst11|clock_1|q[1]~22_combout\,
	cout => \inst7|inst11|clock_1|q[1]~23\);

-- Location: FF_X5_Y11_N11
\inst7|inst11|clock_1|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_1|q[1]~22_combout\,
	sclr => \inst7|inst11|clock_1|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_1|q\(1));

-- Location: LCCOMB_X5_Y11_N12
\inst7|inst11|clock_1|q[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_1|q[2]~24_combout\ = (\inst7|inst11|clock_1|q\(2) & (!\inst7|inst11|clock_1|q[1]~23\)) # (!\inst7|inst11|clock_1|q\(2) & ((\inst7|inst11|clock_1|q[1]~23\) # (GND)))
-- \inst7|inst11|clock_1|q[2]~25\ = CARRY((!\inst7|inst11|clock_1|q[1]~23\) # (!\inst7|inst11|clock_1|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_1|q\(2),
	datad => VCC,
	cin => \inst7|inst11|clock_1|q[1]~23\,
	combout => \inst7|inst11|clock_1|q[2]~24_combout\,
	cout => \inst7|inst11|clock_1|q[2]~25\);

-- Location: FF_X5_Y11_N13
\inst7|inst11|clock_1|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_1|q[2]~24_combout\,
	sclr => \inst7|inst11|clock_1|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_1|q\(2));

-- Location: LCCOMB_X5_Y11_N14
\inst7|inst11|clock_1|q[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_1|q[3]~26_combout\ = (\inst7|inst11|clock_1|q\(3) & (\inst7|inst11|clock_1|q[2]~25\ $ (GND))) # (!\inst7|inst11|clock_1|q\(3) & (!\inst7|inst11|clock_1|q[2]~25\ & VCC))
-- \inst7|inst11|clock_1|q[3]~27\ = CARRY((\inst7|inst11|clock_1|q\(3) & !\inst7|inst11|clock_1|q[2]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_1|q\(3),
	datad => VCC,
	cin => \inst7|inst11|clock_1|q[2]~25\,
	combout => \inst7|inst11|clock_1|q[3]~26_combout\,
	cout => \inst7|inst11|clock_1|q[3]~27\);

-- Location: FF_X5_Y11_N15
\inst7|inst11|clock_1|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_1|q[3]~26_combout\,
	sclr => \inst7|inst11|clock_1|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_1|q\(3));

-- Location: LCCOMB_X5_Y11_N16
\inst7|inst11|clock_1|q[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_1|q[4]~28_combout\ = (\inst7|inst11|clock_1|q\(4) & (!\inst7|inst11|clock_1|q[3]~27\)) # (!\inst7|inst11|clock_1|q\(4) & ((\inst7|inst11|clock_1|q[3]~27\) # (GND)))
-- \inst7|inst11|clock_1|q[4]~29\ = CARRY((!\inst7|inst11|clock_1|q[3]~27\) # (!\inst7|inst11|clock_1|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_1|q\(4),
	datad => VCC,
	cin => \inst7|inst11|clock_1|q[3]~27\,
	combout => \inst7|inst11|clock_1|q[4]~28_combout\,
	cout => \inst7|inst11|clock_1|q[4]~29\);

-- Location: FF_X5_Y11_N17
\inst7|inst11|clock_1|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_1|q[4]~28_combout\,
	sclr => \inst7|inst11|clock_1|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_1|q\(4));

-- Location: LCCOMB_X5_Y11_N18
\inst7|inst11|clock_1|q[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_1|q[5]~30_combout\ = (\inst7|inst11|clock_1|q\(5) & (\inst7|inst11|clock_1|q[4]~29\ $ (GND))) # (!\inst7|inst11|clock_1|q\(5) & (!\inst7|inst11|clock_1|q[4]~29\ & VCC))
-- \inst7|inst11|clock_1|q[5]~31\ = CARRY((\inst7|inst11|clock_1|q\(5) & !\inst7|inst11|clock_1|q[4]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_1|q\(5),
	datad => VCC,
	cin => \inst7|inst11|clock_1|q[4]~29\,
	combout => \inst7|inst11|clock_1|q[5]~30_combout\,
	cout => \inst7|inst11|clock_1|q[5]~31\);

-- Location: FF_X5_Y11_N19
\inst7|inst11|clock_1|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_1|q[5]~30_combout\,
	sclr => \inst7|inst11|clock_1|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_1|q\(5));

-- Location: LCCOMB_X5_Y11_N20
\inst7|inst11|clock_1|q[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_1|q[6]~32_combout\ = (\inst7|inst11|clock_1|q\(6) & (!\inst7|inst11|clock_1|q[5]~31\)) # (!\inst7|inst11|clock_1|q\(6) & ((\inst7|inst11|clock_1|q[5]~31\) # (GND)))
-- \inst7|inst11|clock_1|q[6]~33\ = CARRY((!\inst7|inst11|clock_1|q[5]~31\) # (!\inst7|inst11|clock_1|q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_1|q\(6),
	datad => VCC,
	cin => \inst7|inst11|clock_1|q[5]~31\,
	combout => \inst7|inst11|clock_1|q[6]~32_combout\,
	cout => \inst7|inst11|clock_1|q[6]~33\);

-- Location: FF_X5_Y11_N21
\inst7|inst11|clock_1|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_1|q[6]~32_combout\,
	sclr => \inst7|inst11|clock_1|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_1|q\(6));

-- Location: LCCOMB_X5_Y11_N22
\inst7|inst11|clock_1|q[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_1|q[7]~34_combout\ = (\inst7|inst11|clock_1|q\(7) & (\inst7|inst11|clock_1|q[6]~33\ $ (GND))) # (!\inst7|inst11|clock_1|q\(7) & (!\inst7|inst11|clock_1|q[6]~33\ & VCC))
-- \inst7|inst11|clock_1|q[7]~35\ = CARRY((\inst7|inst11|clock_1|q\(7) & !\inst7|inst11|clock_1|q[6]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_1|q\(7),
	datad => VCC,
	cin => \inst7|inst11|clock_1|q[6]~33\,
	combout => \inst7|inst11|clock_1|q[7]~34_combout\,
	cout => \inst7|inst11|clock_1|q[7]~35\);

-- Location: FF_X5_Y11_N23
\inst7|inst11|clock_1|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_1|q[7]~34_combout\,
	sclr => \inst7|inst11|clock_1|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_1|q\(7));

-- Location: LCCOMB_X5_Y11_N24
\inst7|inst11|clock_1|q[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_1|q[8]~36_combout\ = (\inst7|inst11|clock_1|q\(8) & (!\inst7|inst11|clock_1|q[7]~35\)) # (!\inst7|inst11|clock_1|q\(8) & ((\inst7|inst11|clock_1|q[7]~35\) # (GND)))
-- \inst7|inst11|clock_1|q[8]~37\ = CARRY((!\inst7|inst11|clock_1|q[7]~35\) # (!\inst7|inst11|clock_1|q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_1|q\(8),
	datad => VCC,
	cin => \inst7|inst11|clock_1|q[7]~35\,
	combout => \inst7|inst11|clock_1|q[8]~36_combout\,
	cout => \inst7|inst11|clock_1|q[8]~37\);

-- Location: FF_X5_Y11_N25
\inst7|inst11|clock_1|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_1|q[8]~36_combout\,
	sclr => \inst7|inst11|clock_1|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_1|q\(8));

-- Location: LCCOMB_X5_Y11_N26
\inst7|inst11|clock_1|q[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_1|q[9]~38_combout\ = (\inst7|inst11|clock_1|q\(9) & (\inst7|inst11|clock_1|q[8]~37\ $ (GND))) # (!\inst7|inst11|clock_1|q\(9) & (!\inst7|inst11|clock_1|q[8]~37\ & VCC))
-- \inst7|inst11|clock_1|q[9]~39\ = CARRY((\inst7|inst11|clock_1|q\(9) & !\inst7|inst11|clock_1|q[8]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_1|q\(9),
	datad => VCC,
	cin => \inst7|inst11|clock_1|q[8]~37\,
	combout => \inst7|inst11|clock_1|q[9]~38_combout\,
	cout => \inst7|inst11|clock_1|q[9]~39\);

-- Location: FF_X5_Y11_N27
\inst7|inst11|clock_1|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_1|q[9]~38_combout\,
	sclr => \inst7|inst11|clock_1|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_1|q\(9));

-- Location: LCCOMB_X5_Y11_N28
\inst7|inst11|clock_1|q[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_1|q[10]~40_combout\ = (\inst7|inst11|clock_1|q\(10) & (!\inst7|inst11|clock_1|q[9]~39\)) # (!\inst7|inst11|clock_1|q\(10) & ((\inst7|inst11|clock_1|q[9]~39\) # (GND)))
-- \inst7|inst11|clock_1|q[10]~41\ = CARRY((!\inst7|inst11|clock_1|q[9]~39\) # (!\inst7|inst11|clock_1|q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_1|q\(10),
	datad => VCC,
	cin => \inst7|inst11|clock_1|q[9]~39\,
	combout => \inst7|inst11|clock_1|q[10]~40_combout\,
	cout => \inst7|inst11|clock_1|q[10]~41\);

-- Location: FF_X5_Y11_N29
\inst7|inst11|clock_1|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_1|q[10]~40_combout\,
	sclr => \inst7|inst11|clock_1|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_1|q\(10));

-- Location: LCCOMB_X5_Y11_N30
\inst7|inst11|clock_1|q[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_1|q[11]~42_combout\ = (\inst7|inst11|clock_1|q\(11) & (\inst7|inst11|clock_1|q[10]~41\ $ (GND))) # (!\inst7|inst11|clock_1|q\(11) & (!\inst7|inst11|clock_1|q[10]~41\ & VCC))
-- \inst7|inst11|clock_1|q[11]~43\ = CARRY((\inst7|inst11|clock_1|q\(11) & !\inst7|inst11|clock_1|q[10]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_1|q\(11),
	datad => VCC,
	cin => \inst7|inst11|clock_1|q[10]~41\,
	combout => \inst7|inst11|clock_1|q[11]~42_combout\,
	cout => \inst7|inst11|clock_1|q[11]~43\);

-- Location: FF_X5_Y11_N31
\inst7|inst11|clock_1|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_1|q[11]~42_combout\,
	sclr => \inst7|inst11|clock_1|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_1|q\(11));

-- Location: LCCOMB_X5_Y10_N0
\inst7|inst11|clock_1|q[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_1|q[12]~44_combout\ = (\inst7|inst11|clock_1|q\(12) & (!\inst7|inst11|clock_1|q[11]~43\)) # (!\inst7|inst11|clock_1|q\(12) & ((\inst7|inst11|clock_1|q[11]~43\) # (GND)))
-- \inst7|inst11|clock_1|q[12]~45\ = CARRY((!\inst7|inst11|clock_1|q[11]~43\) # (!\inst7|inst11|clock_1|q\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_1|q\(12),
	datad => VCC,
	cin => \inst7|inst11|clock_1|q[11]~43\,
	combout => \inst7|inst11|clock_1|q[12]~44_combout\,
	cout => \inst7|inst11|clock_1|q[12]~45\);

-- Location: FF_X5_Y10_N1
\inst7|inst11|clock_1|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_1|q[12]~44_combout\,
	sclr => \inst7|inst11|clock_1|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_1|q\(12));

-- Location: LCCOMB_X5_Y10_N2
\inst7|inst11|clock_1|q[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_1|q[13]~46_combout\ = (\inst7|inst11|clock_1|q\(13) & (\inst7|inst11|clock_1|q[12]~45\ $ (GND))) # (!\inst7|inst11|clock_1|q\(13) & (!\inst7|inst11|clock_1|q[12]~45\ & VCC))
-- \inst7|inst11|clock_1|q[13]~47\ = CARRY((\inst7|inst11|clock_1|q\(13) & !\inst7|inst11|clock_1|q[12]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_1|q\(13),
	datad => VCC,
	cin => \inst7|inst11|clock_1|q[12]~45\,
	combout => \inst7|inst11|clock_1|q[13]~46_combout\,
	cout => \inst7|inst11|clock_1|q[13]~47\);

-- Location: FF_X5_Y10_N3
\inst7|inst11|clock_1|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_1|q[13]~46_combout\,
	sclr => \inst7|inst11|clock_1|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_1|q\(13));

-- Location: LCCOMB_X5_Y10_N4
\inst7|inst11|clock_1|q[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_1|q[14]~48_combout\ = (\inst7|inst11|clock_1|q\(14) & (!\inst7|inst11|clock_1|q[13]~47\)) # (!\inst7|inst11|clock_1|q\(14) & ((\inst7|inst11|clock_1|q[13]~47\) # (GND)))
-- \inst7|inst11|clock_1|q[14]~49\ = CARRY((!\inst7|inst11|clock_1|q[13]~47\) # (!\inst7|inst11|clock_1|q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_1|q\(14),
	datad => VCC,
	cin => \inst7|inst11|clock_1|q[13]~47\,
	combout => \inst7|inst11|clock_1|q[14]~48_combout\,
	cout => \inst7|inst11|clock_1|q[14]~49\);

-- Location: FF_X5_Y10_N5
\inst7|inst11|clock_1|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_1|q[14]~48_combout\,
	sclr => \inst7|inst11|clock_1|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_1|q\(14));

-- Location: LCCOMB_X5_Y10_N6
\inst7|inst11|clock_1|q[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_1|q[15]~50_combout\ = (\inst7|inst11|clock_1|q\(15) & (\inst7|inst11|clock_1|q[14]~49\ $ (GND))) # (!\inst7|inst11|clock_1|q\(15) & (!\inst7|inst11|clock_1|q[14]~49\ & VCC))
-- \inst7|inst11|clock_1|q[15]~51\ = CARRY((\inst7|inst11|clock_1|q\(15) & !\inst7|inst11|clock_1|q[14]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_1|q\(15),
	datad => VCC,
	cin => \inst7|inst11|clock_1|q[14]~49\,
	combout => \inst7|inst11|clock_1|q[15]~50_combout\,
	cout => \inst7|inst11|clock_1|q[15]~51\);

-- Location: FF_X5_Y10_N7
\inst7|inst11|clock_1|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_1|q[15]~50_combout\,
	sclr => \inst7|inst11|clock_1|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_1|q\(15));

-- Location: LCCOMB_X5_Y10_N8
\inst7|inst11|clock_1|q[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_1|q[16]~52_combout\ = (\inst7|inst11|clock_1|q\(16) & (!\inst7|inst11|clock_1|q[15]~51\)) # (!\inst7|inst11|clock_1|q\(16) & ((\inst7|inst11|clock_1|q[15]~51\) # (GND)))
-- \inst7|inst11|clock_1|q[16]~53\ = CARRY((!\inst7|inst11|clock_1|q[15]~51\) # (!\inst7|inst11|clock_1|q\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_1|q\(16),
	datad => VCC,
	cin => \inst7|inst11|clock_1|q[15]~51\,
	combout => \inst7|inst11|clock_1|q[16]~52_combout\,
	cout => \inst7|inst11|clock_1|q[16]~53\);

-- Location: FF_X5_Y10_N9
\inst7|inst11|clock_1|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_1|q[16]~52_combout\,
	sclr => \inst7|inst11|clock_1|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_1|q\(16));

-- Location: LCCOMB_X5_Y10_N10
\inst7|inst11|clock_1|q[17]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_1|q[17]~54_combout\ = (\inst7|inst11|clock_1|q\(17) & (\inst7|inst11|clock_1|q[16]~53\ $ (GND))) # (!\inst7|inst11|clock_1|q\(17) & (!\inst7|inst11|clock_1|q[16]~53\ & VCC))
-- \inst7|inst11|clock_1|q[17]~55\ = CARRY((\inst7|inst11|clock_1|q\(17) & !\inst7|inst11|clock_1|q[16]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_1|q\(17),
	datad => VCC,
	cin => \inst7|inst11|clock_1|q[16]~53\,
	combout => \inst7|inst11|clock_1|q[17]~54_combout\,
	cout => \inst7|inst11|clock_1|q[17]~55\);

-- Location: FF_X5_Y10_N11
\inst7|inst11|clock_1|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_1|q[17]~54_combout\,
	sclr => \inst7|inst11|clock_1|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_1|q\(17));

-- Location: LCCOMB_X5_Y10_N12
\inst7|inst11|clock_1|q[18]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_1|q[18]~56_combout\ = (\inst7|inst11|clock_1|q\(18) & (!\inst7|inst11|clock_1|q[17]~55\)) # (!\inst7|inst11|clock_1|q\(18) & ((\inst7|inst11|clock_1|q[17]~55\) # (GND)))
-- \inst7|inst11|clock_1|q[18]~57\ = CARRY((!\inst7|inst11|clock_1|q[17]~55\) # (!\inst7|inst11|clock_1|q\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|clock_1|q\(18),
	datad => VCC,
	cin => \inst7|inst11|clock_1|q[17]~55\,
	combout => \inst7|inst11|clock_1|q[18]~56_combout\,
	cout => \inst7|inst11|clock_1|q[18]~57\);

-- Location: FF_X5_Y10_N13
\inst7|inst11|clock_1|q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_1|q[18]~56_combout\,
	sclr => \inst7|inst11|clock_1|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_1|q\(18));

-- Location: LCCOMB_X5_Y10_N14
\inst7|inst11|clock_1|q[19]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_1|q[19]~58_combout\ = (\inst7|inst11|clock_1|q\(19) & (\inst7|inst11|clock_1|q[18]~57\ $ (GND))) # (!\inst7|inst11|clock_1|q\(19) & (!\inst7|inst11|clock_1|q[18]~57\ & VCC))
-- \inst7|inst11|clock_1|q[19]~59\ = CARRY((\inst7|inst11|clock_1|q\(19) & !\inst7|inst11|clock_1|q[18]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_1|q\(19),
	datad => VCC,
	cin => \inst7|inst11|clock_1|q[18]~57\,
	combout => \inst7|inst11|clock_1|q[19]~58_combout\,
	cout => \inst7|inst11|clock_1|q[19]~59\);

-- Location: FF_X5_Y10_N15
\inst7|inst11|clock_1|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_1|q[19]~58_combout\,
	sclr => \inst7|inst11|clock_1|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_1|q\(19));

-- Location: LCCOMB_X5_Y10_N16
\inst7|inst11|clock_1|q[20]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_1|q[20]~60_combout\ = (\inst7|inst11|clock_1|q\(20) & (!\inst7|inst11|clock_1|q[19]~59\)) # (!\inst7|inst11|clock_1|q\(20) & ((\inst7|inst11|clock_1|q[19]~59\) # (GND)))
-- \inst7|inst11|clock_1|q[20]~61\ = CARRY((!\inst7|inst11|clock_1|q[19]~59\) # (!\inst7|inst11|clock_1|q\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_1|q\(20),
	datad => VCC,
	cin => \inst7|inst11|clock_1|q[19]~59\,
	combout => \inst7|inst11|clock_1|q[20]~60_combout\,
	cout => \inst7|inst11|clock_1|q[20]~61\);

-- Location: FF_X5_Y10_N17
\inst7|inst11|clock_1|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_1|q[20]~60_combout\,
	sclr => \inst7|inst11|clock_1|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_1|q\(20));

-- Location: LCCOMB_X5_Y10_N18
\inst7|inst11|clock_1|q[21]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_1|q[21]~62_combout\ = (\inst7|inst11|clock_1|q\(21) & (\inst7|inst11|clock_1|q[20]~61\ $ (GND))) # (!\inst7|inst11|clock_1|q\(21) & (!\inst7|inst11|clock_1|q[20]~61\ & VCC))
-- \inst7|inst11|clock_1|q[21]~63\ = CARRY((\inst7|inst11|clock_1|q\(21) & !\inst7|inst11|clock_1|q[20]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_1|q\(21),
	datad => VCC,
	cin => \inst7|inst11|clock_1|q[20]~61\,
	combout => \inst7|inst11|clock_1|q[21]~62_combout\,
	cout => \inst7|inst11|clock_1|q[21]~63\);

-- Location: FF_X5_Y10_N19
\inst7|inst11|clock_1|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_1|q[21]~62_combout\,
	sclr => \inst7|inst11|clock_1|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_1|q\(21));

-- Location: LCCOMB_X5_Y10_N20
\inst7|inst11|clock_1|q[22]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_1|q[22]~64_combout\ = \inst7|inst11|clock_1|q\(22) $ (\inst7|inst11|clock_1|q[21]~63\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_1|q\(22),
	cin => \inst7|inst11|clock_1|q[21]~63\,
	combout => \inst7|inst11|clock_1|q[22]~64_combout\);

-- Location: FF_X5_Y10_N21
\inst7|inst11|clock_1|q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|inst11|clock_1|q[22]~64_combout\,
	sclr => \inst7|inst11|clock_1|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_1|q\(22));

-- Location: LCCOMB_X5_Y10_N28
\inst7|inst11|clock_1|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_1|_~6_combout\ = (!\inst7|inst11|clock_1|q\(22) & (\inst7|inst11|clock_1|q\(21) & !\inst7|inst11|clock_1|q\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_1|q\(22),
	datac => \inst7|inst11|clock_1|q\(21),
	datad => \inst7|inst11|clock_1|q\(20),
	combout => \inst7|inst11|clock_1|_~6_combout\);

-- Location: LCCOMB_X5_Y10_N26
\inst7|inst11|clock_1|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_1|_~7_combout\ = (\inst7|inst11|clock_1|_~6_combout\ & (\inst7|inst11|clock_1|_~5_combout\ & \inst7|inst11|clock_1|_~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|clock_1|_~6_combout\,
	datac => \inst7|inst11|clock_1|_~5_combout\,
	datad => \inst7|inst11|clock_1|_~4_combout\,
	combout => \inst7|inst11|clock_1|_~7_combout\);

-- Location: LCCOMB_X1_Y10_N24
\inst7|inst11|clock_1|aux~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clock_1|aux~feeder_combout\ = \inst7|inst11|clock_1|_~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|inst11|clock_1|_~7_combout\,
	combout => \inst7|inst11|clock_1|aux~feeder_combout\);

-- Location: FF_X1_Y10_N25
\inst7|inst11|clock_1|aux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst7|inst11|clock_1|aux~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|clock_1|aux~q\);

-- Location: LCCOMB_X19_Y12_N24
\inst7|inst11|clk_O\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|clk_O~combout\ = LCELL((\inst1|Freq_out[0]~1_combout\ & ((\inst7|inst11|clk_O~5_combout\ & ((\inst7|inst11|clock_1|aux~q\))) # (!\inst7|inst11|clk_O~5_combout\ & (\inst7|inst11|clock_050|aux~q\)))) # (!\inst1|Freq_out[0]~1_combout\ & 
-- (\inst7|inst11|clk_O~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Freq_out[0]~1_combout\,
	datab => \inst7|inst11|clk_O~5_combout\,
	datac => \inst7|inst11|clock_050|aux~q\,
	datad => \inst7|inst11|clock_1|aux~q\,
	combout => \inst7|inst11|clk_O~combout\);

-- Location: CLKCTRL_G7
\inst7|inst11|clk_O~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst7|inst11|clk_O~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst7|inst11|clk_O~clkctrl_outclk\);

-- Location: LCCOMB_X13_Y11_N20
\inst7|inst|contador[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst|contador[0]~3_combout\ = !\inst7|inst|contador\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst|contador\(0),
	combout => \inst7|inst|contador[0]~3_combout\);

-- Location: FF_X13_Y11_N21
\inst7|inst|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst11|clk_O~clkctrl_outclk\,
	d => \inst7|inst|contador[0]~3_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	ena => \inst1|P3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst|contador\(0));

-- Location: LCCOMB_X13_Y11_N24
\inst7|inst|contador[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst|contador[2]~2_combout\ = \inst7|inst|contador\(2) $ (((\inst7|inst|contador\(1) & \inst7|inst|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|contador\(1),
	datac => \inst7|inst|contador\(2),
	datad => \inst7|inst|contador\(0),
	combout => \inst7|inst|contador[2]~2_combout\);

-- Location: FF_X13_Y11_N25
\inst7|inst|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst11|clk_O~clkctrl_outclk\,
	d => \inst7|inst|contador[2]~2_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	ena => \inst1|P3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst|contador\(2));

-- Location: LCCOMB_X13_Y11_N12
\inst7|inst|contador[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst|contador[3]~0_combout\ = (\inst7|inst|contador\(1) & (\inst7|inst|contador\(3) $ (((\inst7|inst|contador\(2) & \inst7|inst|contador\(0)))))) # (!\inst7|inst|contador\(1) & (\inst7|inst|contador\(3) & ((\inst7|inst|contador\(2)) # 
-- (!\inst7|inst|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|contador\(1),
	datab => \inst7|inst|contador\(2),
	datac => \inst7|inst|contador\(3),
	datad => \inst7|inst|contador\(0),
	combout => \inst7|inst|contador[3]~0_combout\);

-- Location: FF_X13_Y11_N13
\inst7|inst|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst11|clk_O~clkctrl_outclk\,
	d => \inst7|inst|contador[3]~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	ena => \inst1|P3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst|contador\(3));

-- Location: LCCOMB_X13_Y11_N18
\inst7|inst|contador[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst|contador[1]~1_combout\ = (\inst7|inst|contador\(0) & (!\inst7|inst|contador\(1) & ((\inst7|inst|contador\(2)) # (!\inst7|inst|contador\(3))))) # (!\inst7|inst|contador\(0) & (((\inst7|inst|contador\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|contador\(3),
	datab => \inst7|inst|contador\(0),
	datac => \inst7|inst|contador\(1),
	datad => \inst7|inst|contador\(2),
	combout => \inst7|inst|contador[1]~1_combout\);

-- Location: FF_X13_Y11_N19
\inst7|inst|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst11|clk_O~clkctrl_outclk\,
	d => \inst7|inst|contador[1]~1_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	ena => \inst1|P3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst|contador\(1));

-- Location: LCCOMB_X13_Y11_N10
\inst7|inst|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst|_~0_combout\ = (\inst1|P3~q\ & !\inst7|inst|contador\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|P3~q\,
	datad => \inst7|inst|contador\(1),
	combout => \inst7|inst|_~0_combout\);

-- Location: LCCOMB_X13_Y11_N28
\inst7|inst|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst|_~1_combout\ = (\inst7|inst|contador\(3) & (\inst7|inst|contador\(0) & (\inst7|inst|_~0_combout\ & !\inst7|inst|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|contador\(3),
	datab => \inst7|inst|contador\(0),
	datac => \inst7|inst|_~0_combout\,
	datad => \inst7|inst|contador\(2),
	combout => \inst7|inst|_~1_combout\);

-- Location: FF_X13_Y11_N29
\inst7|inst|aux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst11|clk_O~clkctrl_outclk\,
	d => \inst7|inst|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst|aux~q\);

-- Location: CLKCTRL_G1
\inst7|inst|aux~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst7|inst|aux~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst7|inst|aux~clkctrl_outclk\);

-- Location: LCCOMB_X12_Y14_N24
\inst7|inst2|contador[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst2|contador[0]~3_combout\ = !\inst7|inst2|contador\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst2|contador\(0),
	combout => \inst7|inst2|contador[0]~3_combout\);

-- Location: FF_X12_Y14_N25
\inst7|inst2|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst|aux~clkctrl_outclk\,
	d => \inst7|inst2|contador[0]~3_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	ena => \inst1|P3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|contador\(0));

-- Location: LCCOMB_X11_Y14_N28
\inst7|inst2|contador[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst2|contador[1]~1_combout\ = (\inst7|inst2|contador\(1) & (((!\inst7|inst2|contador\(0))))) # (!\inst7|inst2|contador\(1) & (\inst7|inst2|contador\(0) & ((\inst7|inst2|contador\(2)) # (!\inst7|inst2|contador\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|contador\(3),
	datab => \inst7|inst2|contador\(2),
	datac => \inst7|inst2|contador\(1),
	datad => \inst7|inst2|contador\(0),
	combout => \inst7|inst2|contador[1]~1_combout\);

-- Location: FF_X11_Y14_N29
\inst7|inst2|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst|aux~clkctrl_outclk\,
	d => \inst7|inst2|contador[1]~1_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	ena => \inst1|P3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|contador\(1));

-- Location: LCCOMB_X11_Y14_N24
\inst7|inst2|contador[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst2|contador[2]~2_combout\ = \inst7|inst2|contador\(2) $ (((\inst7|inst2|contador\(1) & \inst7|inst2|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|contador\(1),
	datac => \inst7|inst2|contador\(2),
	datad => \inst7|inst2|contador\(0),
	combout => \inst7|inst2|contador[2]~2_combout\);

-- Location: FF_X11_Y14_N25
\inst7|inst2|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst|aux~clkctrl_outclk\,
	d => \inst7|inst2|contador[2]~2_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	ena => \inst1|P3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|contador\(2));

-- Location: LCCOMB_X11_Y14_N26
\inst7|inst2|contador[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst2|contador[3]~0_combout\ = (\inst7|inst2|contador\(2) & (\inst7|inst2|contador\(3) $ (((\inst7|inst2|contador\(1) & \inst7|inst2|contador\(0)))))) # (!\inst7|inst2|contador\(2) & (\inst7|inst2|contador\(3) & ((\inst7|inst2|contador\(1)) # 
-- (!\inst7|inst2|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|contador\(2),
	datab => \inst7|inst2|contador\(1),
	datac => \inst7|inst2|contador\(3),
	datad => \inst7|inst2|contador\(0),
	combout => \inst7|inst2|contador[3]~0_combout\);

-- Location: FF_X11_Y14_N27
\inst7|inst2|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst|aux~clkctrl_outclk\,
	d => \inst7|inst2|contador[3]~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	ena => \inst1|P3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|contador\(3));

-- Location: LCCOMB_X11_Y14_N22
\inst7|inst2|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst2|_~0_combout\ = (\inst1|P3~q\ & !\inst7|inst2|contador\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|P3~q\,
	datad => \inst7|inst2|contador\(1),
	combout => \inst7|inst2|_~0_combout\);

-- Location: LCCOMB_X11_Y14_N30
\inst7|inst2|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst2|_~1_combout\ = (\inst7|inst2|contador\(3) & (!\inst7|inst2|contador\(2) & (\inst7|inst2|_~0_combout\ & \inst7|inst2|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|contador\(3),
	datab => \inst7|inst2|contador\(2),
	datac => \inst7|inst2|_~0_combout\,
	datad => \inst7|inst2|contador\(0),
	combout => \inst7|inst2|_~1_combout\);

-- Location: FF_X11_Y14_N31
\inst7|inst2|aux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst|aux~clkctrl_outclk\,
	d => \inst7|inst2|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|aux~q\);

-- Location: CLKCTRL_G0
\inst7|inst2|aux~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst7|inst2|aux~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst7|inst2|aux~clkctrl_outclk\);

-- Location: LCCOMB_X13_Y14_N4
\inst7|inst3|contador[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst3|contador[0]~3_combout\ = !\inst7|inst3|contador\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst3|contador\(0),
	combout => \inst7|inst3|contador[0]~3_combout\);

-- Location: FF_X13_Y14_N5
\inst7|inst3|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst2|aux~clkctrl_outclk\,
	d => \inst7|inst3|contador[0]~3_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	ena => \inst1|P3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst3|contador\(0));

-- Location: LCCOMB_X13_Y14_N0
\inst7|inst3|contador[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst3|contador[3]~0_combout\ = \inst7|inst3|contador\(3) $ (((\inst7|inst3|contador\(2) & (\inst7|inst3|contador\(0) & \inst7|inst3|contador\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|contador\(2),
	datab => \inst7|inst3|contador\(0),
	datac => \inst7|inst3|contador\(3),
	datad => \inst7|inst3|contador\(1),
	combout => \inst7|inst3|contador[3]~0_combout\);

-- Location: FF_X13_Y14_N1
\inst7|inst3|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst2|aux~clkctrl_outclk\,
	d => \inst7|inst3|contador[3]~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	ena => \inst1|P3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst3|contador\(3));

-- Location: LCCOMB_X13_Y14_N2
\inst7|inst3|contador[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst3|contador[1]~1_combout\ = (\inst7|inst3|contador\(0) & (!\inst7|inst3|contador\(1) & ((\inst7|inst3|contador\(3)) # (!\inst7|inst3|contador\(2))))) # (!\inst7|inst3|contador\(0) & (((\inst7|inst3|contador\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|contador\(2),
	datab => \inst7|inst3|contador\(0),
	datac => \inst7|inst3|contador\(1),
	datad => \inst7|inst3|contador\(3),
	combout => \inst7|inst3|contador[1]~1_combout\);

-- Location: FF_X13_Y14_N3
\inst7|inst3|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst2|aux~clkctrl_outclk\,
	d => \inst7|inst3|contador[1]~1_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	ena => \inst1|P3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst3|contador\(1));

-- Location: LCCOMB_X13_Y14_N10
\inst7|inst3|contador[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst3|contador[2]~2_combout\ = (\inst7|inst3|contador\(1) & (\inst7|inst3|contador\(0) $ ((\inst7|inst3|contador\(2))))) # (!\inst7|inst3|contador\(1) & (\inst7|inst3|contador\(2) & ((\inst7|inst3|contador\(3)) # (!\inst7|inst3|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|contador\(1),
	datab => \inst7|inst3|contador\(0),
	datac => \inst7|inst3|contador\(2),
	datad => \inst7|inst3|contador\(3),
	combout => \inst7|inst3|contador[2]~2_combout\);

-- Location: FF_X13_Y14_N11
\inst7|inst3|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst2|aux~clkctrl_outclk\,
	d => \inst7|inst3|contador[2]~2_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	ena => \inst1|P3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst3|contador\(2));

-- Location: LCCOMB_X13_Y14_N16
\inst7|inst3|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst3|_~0_combout\ = (\inst1|P3~q\ & !\inst7|inst3|contador\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|P3~q\,
	datad => \inst7|inst3|contador\(1),
	combout => \inst7|inst3|_~0_combout\);

-- Location: LCCOMB_X13_Y14_N20
\inst7|inst3|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst3|_~1_combout\ = (\inst7|inst3|contador\(2) & (\inst7|inst3|contador\(0) & (\inst7|inst3|_~0_combout\ & !\inst7|inst3|contador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|contador\(2),
	datab => \inst7|inst3|contador\(0),
	datac => \inst7|inst3|_~0_combout\,
	datad => \inst7|inst3|contador\(3),
	combout => \inst7|inst3|_~1_combout\);

-- Location: FF_X13_Y14_N21
\inst7|inst3|aux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst2|aux~clkctrl_outclk\,
	d => \inst7|inst3|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst3|aux~q\);

-- Location: CLKCTRL_G4
\inst7|inst3|aux~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst7|inst3|aux~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst7|inst3|aux~clkctrl_outclk\);

-- Location: LCCOMB_X14_Y14_N0
\inst7|inst5|contador[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst5|contador[0]~3_combout\ = !\inst7|inst5|contador\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst5|contador\(0),
	combout => \inst7|inst5|contador[0]~3_combout\);

-- Location: FF_X14_Y14_N1
\inst7|inst5|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst3|aux~clkctrl_outclk\,
	d => \inst7|inst5|contador[0]~3_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	ena => \inst1|P3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst5|contador\(0));

-- Location: LCCOMB_X14_Y14_N30
\inst7|inst5|contador[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst5|contador[2]~2_combout\ = \inst7|inst5|contador\(2) $ (((\inst7|inst5|contador\(1) & \inst7|inst5|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst5|contador\(1),
	datac => \inst7|inst5|contador\(2),
	datad => \inst7|inst5|contador\(0),
	combout => \inst7|inst5|contador[2]~2_combout\);

-- Location: FF_X14_Y14_N31
\inst7|inst5|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst3|aux~clkctrl_outclk\,
	d => \inst7|inst5|contador[2]~2_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	ena => \inst1|P3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst5|contador\(2));

-- Location: LCCOMB_X14_Y14_N28
\inst7|inst5|contador[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst5|contador[3]~0_combout\ = (\inst7|inst5|contador\(2) & (\inst7|inst5|contador\(3) $ (((\inst7|inst5|contador\(0) & \inst7|inst5|contador\(1)))))) # (!\inst7|inst5|contador\(2) & (\inst7|inst5|contador\(3) & ((\inst7|inst5|contador\(1)) # 
-- (!\inst7|inst5|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|contador\(2),
	datab => \inst7|inst5|contador\(0),
	datac => \inst7|inst5|contador\(3),
	datad => \inst7|inst5|contador\(1),
	combout => \inst7|inst5|contador[3]~0_combout\);

-- Location: FF_X14_Y14_N29
\inst7|inst5|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst3|aux~clkctrl_outclk\,
	d => \inst7|inst5|contador[3]~0_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	ena => \inst1|P3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst5|contador\(3));

-- Location: LCCOMB_X14_Y14_N2
\inst7|inst5|contador[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst5|contador[1]~1_combout\ = (\inst7|inst5|contador\(1) & (((!\inst7|inst5|contador\(0))))) # (!\inst7|inst5|contador\(1) & (\inst7|inst5|contador\(0) & ((\inst7|inst5|contador\(2)) # (!\inst7|inst5|contador\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|contador\(2),
	datab => \inst7|inst5|contador\(3),
	datac => \inst7|inst5|contador\(1),
	datad => \inst7|inst5|contador\(0),
	combout => \inst7|inst5|contador[1]~1_combout\);

-- Location: FF_X14_Y14_N3
\inst7|inst5|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst3|aux~clkctrl_outclk\,
	d => \inst7|inst5|contador[1]~1_combout\,
	clrn => \inst1|ALT_INV_P2~q\,
	ena => \inst1|P3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst5|contador\(1));

-- Location: LCCOMB_X14_Y14_N8
\inst2|inst6|num[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|num[1]~2_combout\ = (\inst2|inst6|auxf\(0) & (((\inst2|inst6|auxf\(1))))) # (!\inst2|inst6|auxf\(0) & ((\inst2|inst6|auxf\(1) & ((\inst7|inst2|contador\(1)))) # (!\inst2|inst6|auxf\(1) & (\inst7|inst5|contador\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|auxf\(0),
	datab => \inst7|inst5|contador\(1),
	datac => \inst7|inst2|contador\(1),
	datad => \inst2|inst6|auxf\(1),
	combout => \inst2|inst6|num[1]~2_combout\);

-- Location: LCCOMB_X13_Y14_N8
\inst2|inst6|num[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|num[1]~3_combout\ = (\inst2|inst6|auxf\(0) & ((\inst2|inst6|num[1]~2_combout\ & (!\inst7|inst|contador\(1))) # (!\inst2|inst6|num[1]~2_combout\ & ((!\inst7|inst3|contador\(1)))))) # (!\inst2|inst6|auxf\(0) & 
-- (((!\inst2|inst6|num[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|auxf\(0),
	datab => \inst7|inst|contador\(1),
	datac => \inst2|inst6|num[1]~2_combout\,
	datad => \inst7|inst3|contador\(1),
	combout => \inst2|inst6|num[1]~3_combout\);

-- Location: LCCOMB_X14_Y14_N26
\inst2|inst6|num[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|num[0]~6_combout\ = (\inst2|inst6|auxf\(1) & (((\inst2|inst6|auxf\(0))))) # (!\inst2|inst6|auxf\(1) & ((\inst2|inst6|auxf\(0) & ((\inst7|inst3|contador\(0)))) # (!\inst2|inst6|auxf\(0) & (\inst7|inst5|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|contador\(0),
	datab => \inst2|inst6|auxf\(1),
	datac => \inst7|inst3|contador\(0),
	datad => \inst2|inst6|auxf\(0),
	combout => \inst2|inst6|num[0]~6_combout\);

-- Location: LCCOMB_X13_Y14_N28
\inst2|inst6|num[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|num[0]~7_combout\ = (\inst2|inst6|num[0]~6_combout\ & ((\inst7|inst|contador\(0)) # ((!\inst2|inst6|auxf\(1))))) # (!\inst2|inst6|num[0]~6_combout\ & (((\inst7|inst2|contador\(0) & \inst2|inst6|auxf\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|contador\(0),
	datab => \inst7|inst2|contador\(0),
	datac => \inst2|inst6|num[0]~6_combout\,
	datad => \inst2|inst6|auxf\(1),
	combout => \inst2|inst6|num[0]~7_combout\);

-- Location: LCCOMB_X13_Y14_N22
\inst2|inst6|num[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|num[2]~4_combout\ = (\inst2|inst6|auxf\(0) & ((\inst7|inst3|contador\(2)) # ((\inst2|inst6|auxf\(1))))) # (!\inst2|inst6|auxf\(0) & (((\inst7|inst5|contador\(2) & !\inst2|inst6|auxf\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|contador\(2),
	datab => \inst7|inst5|contador\(2),
	datac => \inst2|inst6|auxf\(0),
	datad => \inst2|inst6|auxf\(1),
	combout => \inst2|inst6|num[2]~4_combout\);

-- Location: LCCOMB_X13_Y14_N6
\inst2|inst6|num[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|num[2]~5_combout\ = (\inst2|inst6|num[2]~4_combout\ & (((\inst7|inst|contador\(2)) # (!\inst2|inst6|auxf\(1))))) # (!\inst2|inst6|num[2]~4_combout\ & (\inst7|inst2|contador\(2) & ((\inst2|inst6|auxf\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|contador\(2),
	datab => \inst7|inst|contador\(2),
	datac => \inst2|inst6|num[2]~4_combout\,
	datad => \inst2|inst6|auxf\(1),
	combout => \inst2|inst6|num[2]~5_combout\);

-- Location: LCCOMB_X13_Y14_N12
\inst2|inst6|num[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|num[3]~0_combout\ = (\inst2|inst6|auxf\(0) & (((\inst2|inst6|auxf\(1))))) # (!\inst2|inst6|auxf\(0) & ((\inst2|inst6|auxf\(1) & ((\inst7|inst2|contador\(3)))) # (!\inst2|inst6|auxf\(1) & (\inst7|inst5|contador\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|contador\(3),
	datab => \inst7|inst2|contador\(3),
	datac => \inst2|inst6|auxf\(0),
	datad => \inst2|inst6|auxf\(1),
	combout => \inst2|inst6|num[3]~0_combout\);

-- Location: LCCOMB_X13_Y14_N18
\inst2|inst6|num[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|num[3]~1_combout\ = (\inst2|inst6|num[3]~0_combout\ & (((\inst2|inst6|auxf\(0) & !\inst7|inst|contador\(3))))) # (!\inst2|inst6|num[3]~0_combout\ & (((!\inst2|inst6|auxf\(0))) # (!\inst7|inst3|contador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010110110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|num[3]~0_combout\,
	datab => \inst7|inst3|contador\(3),
	datac => \inst2|inst6|auxf\(0),
	datad => \inst7|inst|contador\(3),
	combout => \inst2|inst6|num[3]~1_combout\);

-- Location: LCCOMB_X14_Y14_N12
\inst2|inst6|dig_7seg[7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|dig_7seg[7]~9_combout\ = (\inst2|inst6|num[1]~3_combout\ & (\inst2|inst6|num[3]~1_combout\ & (\inst2|inst6|num[0]~7_combout\ $ (\inst2|inst6|num[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|num[1]~3_combout\,
	datab => \inst2|inst6|num[0]~7_combout\,
	datac => \inst2|inst6|num[2]~5_combout\,
	datad => \inst2|inst6|num[3]~1_combout\,
	combout => \inst2|inst6|dig_7seg[7]~9_combout\);

-- Location: LCCOMB_X13_Y14_N14
\inst2|inst6|dig_7seg[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|dig_7seg[6]~10_combout\ = (\inst2|inst6|num[2]~5_combout\ & (\inst2|inst6|num[3]~1_combout\ & (\inst2|inst6|num[1]~3_combout\ $ (!\inst2|inst6|num[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|num[2]~5_combout\,
	datab => \inst2|inst6|num[1]~3_combout\,
	datac => \inst2|inst6|num[3]~1_combout\,
	datad => \inst2|inst6|num[0]~7_combout\,
	combout => \inst2|inst6|dig_7seg[6]~10_combout\);

-- Location: LCCOMB_X14_Y14_N18
\inst2|inst6|dig_7seg[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|dig_7seg[5]~11_combout\ = (!\inst2|inst6|num[1]~3_combout\ & (!\inst2|inst6|num[0]~7_combout\ & (!\inst2|inst6|num[2]~5_combout\ & \inst2|inst6|num[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|num[1]~3_combout\,
	datab => \inst2|inst6|num[0]~7_combout\,
	datac => \inst2|inst6|num[2]~5_combout\,
	datad => \inst2|inst6|num[3]~1_combout\,
	combout => \inst2|inst6|dig_7seg[5]~11_combout\);

-- Location: LCCOMB_X14_Y14_N16
\inst2|inst6|dig_7seg[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|dig_7seg[4]~12_combout\ = (\inst2|inst6|num[3]~1_combout\ & ((\inst2|inst6|num[1]~3_combout\ & (\inst2|inst6|num[0]~7_combout\ $ (\inst2|inst6|num[2]~5_combout\))) # (!\inst2|inst6|num[1]~3_combout\ & (\inst2|inst6|num[0]~7_combout\ & 
-- \inst2|inst6|num[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|num[1]~3_combout\,
	datab => \inst2|inst6|num[0]~7_combout\,
	datac => \inst2|inst6|num[2]~5_combout\,
	datad => \inst2|inst6|num[3]~1_combout\,
	combout => \inst2|inst6|dig_7seg[4]~12_combout\);

-- Location: LCCOMB_X13_Y14_N30
\inst2|inst6|dig_7seg[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|dig_7seg[3]~13_combout\ = (\inst2|inst6|num[1]~3_combout\ & ((\inst2|inst6|num[2]~5_combout\ & (\inst2|inst6|num[3]~1_combout\)) # (!\inst2|inst6|num[2]~5_combout\ & ((\inst2|inst6|num[0]~7_combout\))))) # (!\inst2|inst6|num[1]~3_combout\ & 
-- (((\inst2|inst6|num[3]~1_combout\ & \inst2|inst6|num[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|num[2]~5_combout\,
	datab => \inst2|inst6|num[1]~3_combout\,
	datac => \inst2|inst6|num[3]~1_combout\,
	datad => \inst2|inst6|num[0]~7_combout\,
	combout => \inst2|inst6|dig_7seg[3]~13_combout\);

-- Location: LCCOMB_X14_Y14_N22
\inst2|inst6|dig_7seg[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|dig_7seg[2]~14_combout\ = (\inst2|inst6|num[3]~1_combout\ & ((\inst2|inst6|num[1]~3_combout\ & (\inst2|inst6|num[0]~7_combout\ & !\inst2|inst6|num[2]~5_combout\)) # (!\inst2|inst6|num[1]~3_combout\ & ((\inst2|inst6|num[0]~7_combout\) # 
-- (!\inst2|inst6|num[2]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|num[1]~3_combout\,
	datab => \inst2|inst6|num[0]~7_combout\,
	datac => \inst2|inst6|num[2]~5_combout\,
	datad => \inst2|inst6|num[3]~1_combout\,
	combout => \inst2|inst6|dig_7seg[2]~14_combout\);

-- Location: LCCOMB_X14_Y14_N20
\inst2|inst6|dig_7seg[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|dig_7seg[1]~15_combout\ = (\inst2|inst6|num[3]~1_combout\ & ((\inst2|inst6|num[1]~3_combout\ & ((!\inst2|inst6|num[2]~5_combout\))) # (!\inst2|inst6|num[1]~3_combout\ & (\inst2|inst6|num[0]~7_combout\ & \inst2|inst6|num[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|num[1]~3_combout\,
	datab => \inst2|inst6|num[0]~7_combout\,
	datac => \inst2|inst6|num[2]~5_combout\,
	datad => \inst2|inst6|num[3]~1_combout\,
	combout => \inst2|inst6|dig_7seg[1]~15_combout\);

ww_buzzer <= \buzzer~output_o\;

ww_dig(4) <= \dig[4]~output_o\;

ww_dig(3) <= \dig[3]~output_o\;

ww_dig(2) <= \dig[2]~output_o\;

ww_dig(1) <= \dig[1]~output_o\;

ww_led(1) <= \led[1]~output_o\;

ww_led(2) <= \led[2]~output_o\;

ww_led(3) <= \led[3]~output_o\;

ww_led(4) <= \led[4]~output_o\;

ww_seg(0) <= \seg[0]~output_o\;

ww_seg(1) <= \seg[1]~output_o\;

ww_seg(2) <= \seg[2]~output_o\;

ww_seg(3) <= \seg[3]~output_o\;

ww_seg(4) <= \seg[4]~output_o\;

ww_seg(5) <= \seg[5]~output_o\;

ww_seg(6) <= \seg[6]~output_o\;

ww_seg(7) <= \seg[7]~output_o\;
END structure;


