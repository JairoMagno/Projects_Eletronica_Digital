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

-- DATE "08/02/2022 23:38:01"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
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

ENTITY 	Contador_Sincrono IS
    PORT (
	dig : OUT std_logic_vector(3 DOWNTO 1);
	clock : IN std_logic;
	seg : OUT std_logic_vector(6 DOWNTO 0);
	key : IN std_logic_vector(4 DOWNTO 1)
	);
END Contador_Sincrono;

-- Design Ports Information
-- dig[3]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[2]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[1]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[6]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[5]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[4]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[3]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[2]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[1]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[0]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[3]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[4]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[2]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[1]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Contador_Sincrono IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_dig : std_logic_vector(3 DOWNTO 1);
SIGNAL ww_clock : std_logic;
SIGNAL ww_seg : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_key : std_logic_vector(4 DOWNTO 1);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dig[3]~output_o\ : std_logic;
SIGNAL \dig[2]~output_o\ : std_logic;
SIGNAL \dig[1]~output_o\ : std_logic;
SIGNAL \seg[6]~output_o\ : std_logic;
SIGNAL \seg[5]~output_o\ : std_logic;
SIGNAL \seg[4]~output_o\ : std_logic;
SIGNAL \seg[3]~output_o\ : std_logic;
SIGNAL \seg[2]~output_o\ : std_logic;
SIGNAL \seg[1]~output_o\ : std_logic;
SIGNAL \seg[0]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \ist16|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \ist16|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \ist16|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \ist16|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \ist16|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \ist16|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \ist16|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \ist16|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \ist16|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \ist16|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \ist16|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \ist16|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \ist16|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \ist16|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \ist16|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \ist16|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \ist16|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \ist16|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \ist16|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \ist16|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \ist16|auto_generated|counter_comb_bita9~0_combout\ : std_logic;
SIGNAL \ist17~0_combout\ : std_logic;
SIGNAL \ist17~feeder_combout\ : std_logic;
SIGNAL \ist17~q\ : std_logic;
SIGNAL \ist20|inst~0_combout\ : std_logic;
SIGNAL \ist20|inst~feeder_combout\ : std_logic;
SIGNAL \ist20|inst~q\ : std_logic;
SIGNAL \ist20|inst1~0_combout\ : std_logic;
SIGNAL \ist20|inst1~q\ : std_logic;
SIGNAL \ist20|inst4~0_combout\ : std_logic;
SIGNAL \ist20|inst4~1_combout\ : std_logic;
SIGNAL \ist20|inst4~2_combout\ : std_logic;
SIGNAL \key[4]~input_o\ : std_logic;
SIGNAL \key[2]~input_o\ : std_logic;
SIGNAL \key[1]~input_o\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|cmpr1|aneb_result_wire[0]~5_combout\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|cmpr1|aneb_result_wire[0]~6_combout\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|counter_comb_bita10~combout\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|counter_comb_bita11~combout\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|counter_comb_bita11~COUT\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|counter_comb_bita12~combout\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|counter_comb_bita12~COUT\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|counter_comb_bita13~combout\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|counter_comb_bita13~COUT\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|counter_comb_bita14~combout\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|counter_comb_bita14~COUT\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|counter_comb_bita15~combout\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|counter_comb_bita15~COUT\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|counter_comb_bita16~combout\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|counter_comb_bita16~COUT\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|counter_comb_bita17~combout\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|counter_comb_bita17~COUT\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|counter_comb_bita18~combout\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|counter_comb_bita18~COUT\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|counter_comb_bita19~combout\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|counter_comb_bita19~COUT\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|counter_comb_bita20~combout\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|counter_comb_bita20~COUT\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|counter_comb_bita21~combout\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|counter_comb_bita21~COUT\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|counter_comb_bita21~0_combout\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|cmpr1|aneb_result_wire[0]~3_combout\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|cmpr1|aneb_result_wire[0]~4_combout\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|cout_actual~combout\ : std_logic;
SIGNAL \inst4|inst2~0_combout\ : std_logic;
SIGNAL \inst4|inst2~q\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|cmpr1|aneb_result_wire[0]~5_combout\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|counter_comb_bita10~combout\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|counter_comb_bita11~combout\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|counter_comb_bita11~COUT\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|counter_comb_bita12~combout\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|counter_comb_bita12~COUT\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|counter_comb_bita13~combout\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|counter_comb_bita13~COUT\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|counter_comb_bita14~combout\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|counter_comb_bita14~COUT\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|counter_comb_bita15~combout\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|counter_comb_bita15~COUT\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|counter_comb_bita16~combout\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|counter_comb_bita16~COUT\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|counter_comb_bita17~combout\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|counter_comb_bita17~COUT\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|counter_comb_bita18~combout\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|counter_comb_bita18~COUT\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|counter_comb_bita19~combout\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|counter_comb_bita19~COUT\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|counter_comb_bita20~combout\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|counter_comb_bita20~COUT\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|counter_comb_bita21~combout\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|counter_comb_bita21~COUT\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|counter_comb_bita22~combout\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|counter_comb_bita22~COUT\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|counter_comb_bita23~combout\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|cmpr1|aneb_result_wire[0]~3_combout\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|cmpr1|aneb_result_wire[0]~4_combout\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|cmpr1|aneb_result_wire[0]~6_combout\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|counter_comb_bita23~COUT\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|counter_comb_bita23~0_combout\ : std_logic;
SIGNAL \inst6|inst1|auto_generated|cout_actual~combout\ : std_logic;
SIGNAL \inst6|inst2~0_combout\ : std_logic;
SIGNAL \inst6|inst2~q\ : std_logic;
SIGNAL \ist10~0_combout\ : std_logic;
SIGNAL \inst1~combout\ : std_logic;
SIGNAL \ist22~0_combout\ : std_logic;
SIGNAL \ist72~0_combout\ : std_logic;
SIGNAL \key[3]~input_o\ : std_logic;
SIGNAL \ist81~0_combout\ : std_logic;
SIGNAL \ist82~0_combout\ : std_logic;
SIGNAL \ist82~combout\ : std_logic;
SIGNAL \ist22~q\ : std_logic;
SIGNAL \ist51~combout\ : std_logic;
SIGNAL \ist25~0_combout\ : std_logic;
SIGNAL \ist25~q\ : std_logic;
SIGNAL \ist52~combout\ : std_logic;
SIGNAL \ist28~0_combout\ : std_logic;
SIGNAL \ist28~q\ : std_logic;
SIGNAL \ist53~combout\ : std_logic;
SIGNAL \ist31~0_combout\ : std_logic;
SIGNAL \ist72~1_combout\ : std_logic;
SIGNAL \ist500~0_combout\ : std_logic;
SIGNAL \ist500~1_combout\ : std_logic;
SIGNAL \ist31~q\ : std_logic;
SIGNAL \ist54~combout\ : std_logic;
SIGNAL \ist34~0_combout\ : std_logic;
SIGNAL \ist34~q\ : std_logic;
SIGNAL \ist55~combout\ : std_logic;
SIGNAL \ist38~0_combout\ : std_logic;
SIGNAL \ist38~q\ : std_logic;
SIGNAL \ist56~combout\ : std_logic;
SIGNAL \ist41~0_combout\ : std_logic;
SIGNAL \ist41~q\ : std_logic;
SIGNAL \ist57~combout\ : std_logic;
SIGNAL \ist44~0_combout\ : std_logic;
SIGNAL \ist44~q\ : std_logic;
SIGNAL \ist58~combout\ : std_logic;
SIGNAL \ist47~0_combout\ : std_logic;
SIGNAL \ist47~q\ : std_logic;
SIGNAL \ist59~combout\ : std_logic;
SIGNAL \ist50~0_combout\ : std_logic;
SIGNAL \ist50~q\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|op_5~1_cout\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|op_5~3\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|op_5~5\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|op_5~7\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|op_5~8_combout\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|op_5~9\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|op_5~10_combout\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|StageOut[54]~1_combout\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|op_5~6_combout\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|StageOut[53]~2_combout\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|op_5~4_combout\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|StageOut[52]~3_combout\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|op_5~2_combout\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|StageOut[51]~0_combout\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|op_6~1_cout\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|op_6~3\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|op_6~5\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|op_6~7\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|op_6~9\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|op_6~11_cout\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|op_6~12_combout\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|op_6~8_combout\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|StageOut[62]~6_combout\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|op_6~6_combout\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|StageOut[61]~7_combout\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|op_6~4_combout\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|StageOut[60]~4_combout\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|op_6~2_combout\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|StageOut[59]~5_combout\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|op_7~1_cout\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|op_7~3\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|op_7~5\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|op_7~7\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|op_7~9\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|op_7~11_cout\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|op_7~12_combout\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|op_7~4_combout\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|StageOut[68]~9_combout\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|op_7~2_combout\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|StageOut[67]~10_combout\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|op_8~1_cout\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|op_8~3\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|op_8~5\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|op_8~6_combout\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|op_7~8_combout\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|StageOut[70]~11_combout\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|op_7~6_combout\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|StageOut[69]~8_combout\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|op_8~7\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|op_8~9\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|op_8~11_cout\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|op_8~12_combout\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|StageOut[77]~13_combout\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|op_8~4_combout\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|StageOut[76]~14_combout\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|op_8~8_combout\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|StageOut[78]~12_combout\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|op_8~2_combout\ : std_logic;
SIGNAL \ist150|auto_generated|divider|divider|StageOut[75]~15_combout\ : std_logic;
SIGNAL \ist151|auto_generated|divider|divider|op_3~0_combout\ : std_logic;
SIGNAL \ist151|auto_generated|divider|divider|StageOut[22]~0_combout\ : std_logic;
SIGNAL \ist151|auto_generated|divider|divider|op_4~0_combout\ : std_logic;
SIGNAL \ist151|auto_generated|divider|divider|op_4~1_combout\ : std_logic;
SIGNAL \ist151|auto_generated|divider|divider|op_4~2_combout\ : std_logic;
SIGNAL \ist151|auto_generated|divider|divider|op_5~2_combout\ : std_logic;
SIGNAL \ist151|auto_generated|divider|divider|op_5~4_combout\ : std_logic;
SIGNAL \ist151|auto_generated|divider|divider|op_5~3_combout\ : std_logic;
SIGNAL \ist152|auto_generated|divider|divider|StageOut[21]~2_combout\ : std_logic;
SIGNAL \ist152|auto_generated|divider|divider|op_4~0_combout\ : std_logic;
SIGNAL \ist152|auto_generated|divider|divider|StageOut[22]~3_combout\ : std_logic;
SIGNAL \ist152|auto_generated|divider|divider|StageOut[26]~4_combout\ : std_logic;
SIGNAL \ist152|auto_generated|divider|divider|StageOut[27]~5_combout\ : std_logic;
SIGNAL \ist152|auto_generated|divider|divider|op_5~0_combout\ : std_logic;
SIGNAL \ist152|auto_generated|divider|divider|StageOut[32]~7_combout\ : std_logic;
SIGNAL \ist152|auto_generated|divider|divider|StageOut[31]~6_combout\ : std_logic;
SIGNAL \ist152|auto_generated|divider|divider|op_6~0_combout\ : std_logic;
SIGNAL \ist152|auto_generated|divider|divider|op_7~0_combout\ : std_logic;
SIGNAL \ist152|auto_generated|divider|divider|StageOut[36]~9_combout\ : std_logic;
SIGNAL \ist152|auto_generated|divider|divider|StageOut[37]~8_combout\ : std_logic;
SIGNAL \ist152|auto_generated|divider|divider|op_8~0_combout\ : std_logic;
SIGNAL \ist152|auto_generated|divider|divider|op_8~1_combout\ : std_logic;
SIGNAL \ist152|auto_generated|divider|divider|StageOut[42]~12_combout\ : std_logic;
SIGNAL \ist152|auto_generated|divider|divider|StageOut[41]~10_combout\ : std_logic;
SIGNAL \ist152|auto_generated|divider|divider|StageOut[48]~13_combout\ : std_logic;
SIGNAL \ist152|auto_generated|divider|divider|StageOut[47]~11_combout\ : std_logic;
SIGNAL \ist152|auto_generated|divider|divider|StageOut[46]~14_combout\ : std_logic;
SIGNAL \inst7|inst27~0_combout\ : std_logic;
SIGNAL \inst7|inst27~1_combout\ : std_logic;
SIGNAL \inst7|inst10~2_combout\ : std_logic;
SIGNAL \ins300|auto_generated|divider|divider|add_sub_9_result_int[2]~1_cout\ : std_logic;
SIGNAL \ins300|auto_generated|divider|divider|add_sub_9_result_int[3]~3_cout\ : std_logic;
SIGNAL \ins300|auto_generated|divider|divider|add_sub_9_result_int[4]~5_cout\ : std_logic;
SIGNAL \ins300|auto_generated|divider|divider|add_sub_9_result_int[5]~7_cout\ : std_logic;
SIGNAL \ins300|auto_generated|divider|divider|add_sub_9_result_int[6]~9_cout\ : std_logic;
SIGNAL \ins300|auto_generated|divider|divider|add_sub_9_result_int[7]~11_cout\ : std_logic;
SIGNAL \ins300|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ : std_logic;
SIGNAL \inst7|inst27~2_combout\ : std_logic;
SIGNAL \inst7|inst19~3_combout\ : std_logic;
SIGNAL \inst7|inst19~2_combout\ : std_logic;
SIGNAL \inst7|inst27~3_combout\ : std_logic;
SIGNAL \inst7|inst27~4_combout\ : std_logic;
SIGNAL \inst7|inst27~5_combout\ : std_logic;
SIGNAL \inst7|inst26~3_combout\ : std_logic;
SIGNAL \inst7|inst26~4_combout\ : std_logic;
SIGNAL \inst7|inst26~6_combout\ : std_logic;
SIGNAL \inst7|inst26~2_combout\ : std_logic;
SIGNAL \inst7|inst26~5_combout\ : std_logic;
SIGNAL \inst7|inst25~0_combout\ : std_logic;
SIGNAL \inst7|inst25~1_combout\ : std_logic;
SIGNAL \inst7|inst25~2_combout\ : std_logic;
SIGNAL \inst7|inst25~3_combout\ : std_logic;
SIGNAL \inst7|inst24~3_combout\ : std_logic;
SIGNAL \inst7|inst24~0_combout\ : std_logic;
SIGNAL \inst7|inst24~1_combout\ : std_logic;
SIGNAL \inst7|inst24~2_combout\ : std_logic;
SIGNAL \inst7|inst24~4_combout\ : std_logic;
SIGNAL \inst7|inst23~0_combout\ : std_logic;
SIGNAL \inst7|inst23~1_combout\ : std_logic;
SIGNAL \inst7|inst23~2_combout\ : std_logic;
SIGNAL \inst7|inst23~3_combout\ : std_logic;
SIGNAL \inst7|inst22~1_combout\ : std_logic;
SIGNAL \inst7|inst22~2_combout\ : std_logic;
SIGNAL \inst7|inst22~0_combout\ : std_logic;
SIGNAL \inst7|inst22~3_combout\ : std_logic;
SIGNAL \inst7|inst21~2_combout\ : std_logic;
SIGNAL \inst7|inst4~0_combout\ : std_logic;
SIGNAL \inst7|inst21~3_combout\ : std_logic;
SIGNAL \inst7|inst21~4_combout\ : std_logic;
SIGNAL \inst7|inst21~5_combout\ : std_logic;
SIGNAL \inst7|inst21~6_combout\ : std_logic;
SIGNAL \inst4|inst1|auto_generated|counter_reg_bit\ : std_logic_vector(21 DOWNTO 0);
SIGNAL \ist16|auto_generated|counter_reg_bit\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst6|inst1|auto_generated|counter_reg_bit\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \inst7|ALT_INV_inst21~6_combout\ : std_logic;
SIGNAL \ALT_INV_ist500~1_combout\ : std_logic;
SIGNAL \ALT_INV_ist82~combout\ : std_logic;
SIGNAL \inst7|ALT_INV_inst22~3_combout\ : std_logic;
SIGNAL \inst7|ALT_INV_inst23~3_combout\ : std_logic;
SIGNAL \inst7|ALT_INV_inst24~4_combout\ : std_logic;
SIGNAL \inst7|ALT_INV_inst25~3_combout\ : std_logic;
SIGNAL \inst7|ALT_INV_inst26~5_combout\ : std_logic;
SIGNAL \inst7|ALT_INV_inst27~5_combout\ : std_logic;
SIGNAL \ist20|ALT_INV_inst4~2_combout\ : std_logic;
SIGNAL \ist20|ALT_INV_inst4~1_combout\ : std_logic;
SIGNAL \ist20|ALT_INV_inst4~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

dig <= ww_dig;
ww_clock <= clock;
seg <= ww_seg;
ww_key <= key;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\inst7|ALT_INV_inst21~6_combout\ <= NOT \inst7|inst21~6_combout\;
\ALT_INV_ist500~1_combout\ <= NOT \ist500~1_combout\;
\ALT_INV_ist82~combout\ <= NOT \ist82~combout\;
\inst7|ALT_INV_inst22~3_combout\ <= NOT \inst7|inst22~3_combout\;
\inst7|ALT_INV_inst23~3_combout\ <= NOT \inst7|inst23~3_combout\;
\inst7|ALT_INV_inst24~4_combout\ <= NOT \inst7|inst24~4_combout\;
\inst7|ALT_INV_inst25~3_combout\ <= NOT \inst7|inst25~3_combout\;
\inst7|ALT_INV_inst26~5_combout\ <= NOT \inst7|inst26~5_combout\;
\inst7|ALT_INV_inst27~5_combout\ <= NOT \inst7|inst27~5_combout\;
\ist20|ALT_INV_inst4~2_combout\ <= NOT \ist20|inst4~2_combout\;
\ist20|ALT_INV_inst4~1_combout\ <= NOT \ist20|inst4~1_combout\;
\ist20|ALT_INV_inst4~0_combout\ <= NOT \ist20|inst4~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X9_Y24_N9
\dig[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ist20|ALT_INV_inst4~0_combout\,
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
	i => \ist20|ALT_INV_inst4~1_combout\,
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
	i => \ist20|ALT_INV_inst4~2_combout\,
	devoe => ww_devoe,
	o => \dig[1]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\seg[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|ALT_INV_inst27~5_combout\,
	devoe => ww_devoe,
	o => \seg[6]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\seg[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|ALT_INV_inst26~5_combout\,
	devoe => ww_devoe,
	o => \seg[5]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\seg[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|ALT_INV_inst25~3_combout\,
	devoe => ww_devoe,
	o => \seg[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\seg[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|ALT_INV_inst24~4_combout\,
	devoe => ww_devoe,
	o => \seg[3]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\seg[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|ALT_INV_inst23~3_combout\,
	devoe => ww_devoe,
	o => \seg[2]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\seg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|ALT_INV_inst22~3_combout\,
	devoe => ww_devoe,
	o => \seg[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\seg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|ALT_INV_inst21~6_combout\,
	devoe => ww_devoe,
	o => \seg[0]~output_o\);

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

-- Location: LCCOMB_X28_Y17_N0
\ist16|auto_generated|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist16|auto_generated|counter_comb_bita0~combout\ = \ist16|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \ist16|auto_generated|counter_comb_bita0~COUT\ = CARRY(\ist16|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ist16|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \ist16|auto_generated|counter_comb_bita0~combout\,
	cout => \ist16|auto_generated|counter_comb_bita0~COUT\);

-- Location: FF_X28_Y17_N1
\ist16|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ist16|auto_generated|counter_comb_bita0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ist16|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X28_Y17_N2
\ist16|auto_generated|counter_comb_bita1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist16|auto_generated|counter_comb_bita1~combout\ = (\ist16|auto_generated|counter_reg_bit\(1) & (!\ist16|auto_generated|counter_comb_bita0~COUT\)) # (!\ist16|auto_generated|counter_reg_bit\(1) & ((\ist16|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \ist16|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\ist16|auto_generated|counter_comb_bita0~COUT\) # (!\ist16|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ist16|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \ist16|auto_generated|counter_comb_bita0~COUT\,
	combout => \ist16|auto_generated|counter_comb_bita1~combout\,
	cout => \ist16|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X28_Y17_N3
\ist16|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ist16|auto_generated|counter_comb_bita1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ist16|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X28_Y17_N4
\ist16|auto_generated|counter_comb_bita2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist16|auto_generated|counter_comb_bita2~combout\ = (\ist16|auto_generated|counter_reg_bit\(2) & (\ist16|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # (!\ist16|auto_generated|counter_reg_bit\(2) & (!\ist16|auto_generated|counter_comb_bita1~COUT\ & 
-- VCC))
-- \ist16|auto_generated|counter_comb_bita2~COUT\ = CARRY((\ist16|auto_generated|counter_reg_bit\(2) & !\ist16|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ist16|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \ist16|auto_generated|counter_comb_bita1~COUT\,
	combout => \ist16|auto_generated|counter_comb_bita2~combout\,
	cout => \ist16|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X28_Y17_N5
\ist16|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ist16|auto_generated|counter_comb_bita2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ist16|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X28_Y17_N6
\ist16|auto_generated|counter_comb_bita3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist16|auto_generated|counter_comb_bita3~combout\ = (\ist16|auto_generated|counter_reg_bit\(3) & (!\ist16|auto_generated|counter_comb_bita2~COUT\)) # (!\ist16|auto_generated|counter_reg_bit\(3) & ((\ist16|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \ist16|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\ist16|auto_generated|counter_comb_bita2~COUT\) # (!\ist16|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ist16|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \ist16|auto_generated|counter_comb_bita2~COUT\,
	combout => \ist16|auto_generated|counter_comb_bita3~combout\,
	cout => \ist16|auto_generated|counter_comb_bita3~COUT\);

-- Location: FF_X28_Y17_N7
\ist16|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ist16|auto_generated|counter_comb_bita3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ist16|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X28_Y17_N8
\ist16|auto_generated|counter_comb_bita4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist16|auto_generated|counter_comb_bita4~combout\ = (\ist16|auto_generated|counter_reg_bit\(4) & (\ist16|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # (!\ist16|auto_generated|counter_reg_bit\(4) & (!\ist16|auto_generated|counter_comb_bita3~COUT\ & 
-- VCC))
-- \ist16|auto_generated|counter_comb_bita4~COUT\ = CARRY((\ist16|auto_generated|counter_reg_bit\(4) & !\ist16|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ist16|auto_generated|counter_reg_bit\(4),
	datad => VCC,
	cin => \ist16|auto_generated|counter_comb_bita3~COUT\,
	combout => \ist16|auto_generated|counter_comb_bita4~combout\,
	cout => \ist16|auto_generated|counter_comb_bita4~COUT\);

-- Location: FF_X28_Y17_N9
\ist16|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ist16|auto_generated|counter_comb_bita4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ist16|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X28_Y17_N10
\ist16|auto_generated|counter_comb_bita5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist16|auto_generated|counter_comb_bita5~combout\ = (\ist16|auto_generated|counter_reg_bit\(5) & (!\ist16|auto_generated|counter_comb_bita4~COUT\)) # (!\ist16|auto_generated|counter_reg_bit\(5) & ((\ist16|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \ist16|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\ist16|auto_generated|counter_comb_bita4~COUT\) # (!\ist16|auto_generated|counter_reg_bit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ist16|auto_generated|counter_reg_bit\(5),
	datad => VCC,
	cin => \ist16|auto_generated|counter_comb_bita4~COUT\,
	combout => \ist16|auto_generated|counter_comb_bita5~combout\,
	cout => \ist16|auto_generated|counter_comb_bita5~COUT\);

-- Location: FF_X28_Y17_N11
\ist16|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ist16|auto_generated|counter_comb_bita5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ist16|auto_generated|counter_reg_bit\(5));

-- Location: LCCOMB_X28_Y17_N12
\ist16|auto_generated|counter_comb_bita6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist16|auto_generated|counter_comb_bita6~combout\ = (\ist16|auto_generated|counter_reg_bit\(6) & (\ist16|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # (!\ist16|auto_generated|counter_reg_bit\(6) & (!\ist16|auto_generated|counter_comb_bita5~COUT\ & 
-- VCC))
-- \ist16|auto_generated|counter_comb_bita6~COUT\ = CARRY((\ist16|auto_generated|counter_reg_bit\(6) & !\ist16|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ist16|auto_generated|counter_reg_bit\(6),
	datad => VCC,
	cin => \ist16|auto_generated|counter_comb_bita5~COUT\,
	combout => \ist16|auto_generated|counter_comb_bita6~combout\,
	cout => \ist16|auto_generated|counter_comb_bita6~COUT\);

-- Location: FF_X28_Y17_N13
\ist16|auto_generated|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ist16|auto_generated|counter_comb_bita6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ist16|auto_generated|counter_reg_bit\(6));

-- Location: LCCOMB_X28_Y17_N14
\ist16|auto_generated|counter_comb_bita7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist16|auto_generated|counter_comb_bita7~combout\ = (\ist16|auto_generated|counter_reg_bit\(7) & (!\ist16|auto_generated|counter_comb_bita6~COUT\)) # (!\ist16|auto_generated|counter_reg_bit\(7) & ((\ist16|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \ist16|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\ist16|auto_generated|counter_comb_bita6~COUT\) # (!\ist16|auto_generated|counter_reg_bit\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ist16|auto_generated|counter_reg_bit\(7),
	datad => VCC,
	cin => \ist16|auto_generated|counter_comb_bita6~COUT\,
	combout => \ist16|auto_generated|counter_comb_bita7~combout\,
	cout => \ist16|auto_generated|counter_comb_bita7~COUT\);

-- Location: FF_X28_Y17_N15
\ist16|auto_generated|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ist16|auto_generated|counter_comb_bita7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ist16|auto_generated|counter_reg_bit\(7));

-- Location: LCCOMB_X28_Y17_N16
\ist16|auto_generated|counter_comb_bita8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist16|auto_generated|counter_comb_bita8~combout\ = (\ist16|auto_generated|counter_reg_bit\(8) & (\ist16|auto_generated|counter_comb_bita7~COUT\ $ (GND))) # (!\ist16|auto_generated|counter_reg_bit\(8) & (!\ist16|auto_generated|counter_comb_bita7~COUT\ & 
-- VCC))
-- \ist16|auto_generated|counter_comb_bita8~COUT\ = CARRY((\ist16|auto_generated|counter_reg_bit\(8) & !\ist16|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ist16|auto_generated|counter_reg_bit\(8),
	datad => VCC,
	cin => \ist16|auto_generated|counter_comb_bita7~COUT\,
	combout => \ist16|auto_generated|counter_comb_bita8~combout\,
	cout => \ist16|auto_generated|counter_comb_bita8~COUT\);

-- Location: FF_X28_Y17_N17
\ist16|auto_generated|counter_reg_bit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ist16|auto_generated|counter_comb_bita8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ist16|auto_generated|counter_reg_bit\(8));

-- Location: LCCOMB_X28_Y17_N18
\ist16|auto_generated|counter_comb_bita9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist16|auto_generated|counter_comb_bita9~combout\ = (\ist16|auto_generated|counter_reg_bit\(9) & (!\ist16|auto_generated|counter_comb_bita8~COUT\)) # (!\ist16|auto_generated|counter_reg_bit\(9) & ((\ist16|auto_generated|counter_comb_bita8~COUT\) # (GND)))
-- \ist16|auto_generated|counter_comb_bita9~COUT\ = CARRY((!\ist16|auto_generated|counter_comb_bita8~COUT\) # (!\ist16|auto_generated|counter_reg_bit\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ist16|auto_generated|counter_reg_bit\(9),
	datad => VCC,
	cin => \ist16|auto_generated|counter_comb_bita8~COUT\,
	combout => \ist16|auto_generated|counter_comb_bita9~combout\,
	cout => \ist16|auto_generated|counter_comb_bita9~COUT\);

-- Location: FF_X28_Y17_N19
\ist16|auto_generated|counter_reg_bit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ist16|auto_generated|counter_comb_bita9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ist16|auto_generated|counter_reg_bit\(9));

-- Location: LCCOMB_X28_Y17_N20
\ist16|auto_generated|counter_comb_bita9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist16|auto_generated|counter_comb_bita9~0_combout\ = !\ist16|auto_generated|counter_comb_bita9~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \ist16|auto_generated|counter_comb_bita9~COUT\,
	combout => \ist16|auto_generated|counter_comb_bita9~0_combout\);

-- Location: LCCOMB_X28_Y17_N26
\ist17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist17~0_combout\ = \ist17~q\ $ (\ist16|auto_generated|counter_comb_bita9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ist17~q\,
	datad => \ist16|auto_generated|counter_comb_bita9~0_combout\,
	combout => \ist17~0_combout\);

-- Location: LCCOMB_X28_Y17_N28
\ist17~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist17~feeder_combout\ = \ist17~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ist17~0_combout\,
	combout => \ist17~feeder_combout\);

-- Location: FF_X28_Y17_N29
ist17 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ist17~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ist17~q\);

-- Location: LCCOMB_X25_Y20_N6
\ist20|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist20|inst~0_combout\ = !\ist20|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ist20|inst~q\,
	combout => \ist20|inst~0_combout\);

-- Location: LCCOMB_X25_Y20_N16
\ist20|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist20|inst~feeder_combout\ = \ist20|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ist20|inst~0_combout\,
	combout => \ist20|inst~feeder_combout\);

-- Location: FF_X25_Y20_N17
\ist20|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ist17~q\,
	d => \ist20|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ist20|inst~q\);

-- Location: LCCOMB_X25_Y20_N28
\ist20|inst1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist20|inst1~0_combout\ = !\ist20|inst1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ist20|inst1~q\,
	combout => \ist20|inst1~0_combout\);

-- Location: FF_X25_Y20_N29
\ist20|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ist20|inst~q\,
	d => \ist20|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ist20|inst1~q\);

-- Location: LCCOMB_X25_Y20_N20
\ist20|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist20|inst4~0_combout\ = (\ist20|inst~q\ & \ist20|inst1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ist20|inst~q\,
	datad => \ist20|inst1~q\,
	combout => \ist20|inst4~0_combout\);

-- Location: LCCOMB_X25_Y20_N18
\ist20|inst4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist20|inst4~1_combout\ = (!\ist20|inst~q\ & \ist20|inst1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ist20|inst~q\,
	datad => \ist20|inst1~q\,
	combout => \ist20|inst4~1_combout\);

-- Location: LCCOMB_X24_Y20_N16
\ist20|inst4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist20|inst4~2_combout\ = (\ist20|inst~q\ & !\ist20|inst1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ist20|inst~q\,
	datad => \ist20|inst1~q\,
	combout => \ist20|inst4~2_combout\);

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

-- Location: LCCOMB_X11_Y13_N10
\inst4|inst1|auto_generated|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|auto_generated|counter_comb_bita0~combout\ = \inst4|inst1|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \inst4|inst1|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst4|inst1|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \inst4|inst1|auto_generated|counter_comb_bita0~combout\,
	cout => \inst4|inst1|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X12_Y13_N2
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X11_Y13_N11
\inst4|inst1|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|inst1|auto_generated|counter_comb_bita0~combout\,
	asdata => \~GND~combout\,
	sload => \inst4|inst1|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst1|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X11_Y13_N12
\inst4|inst1|auto_generated|counter_comb_bita1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|auto_generated|counter_comb_bita1~combout\ = (\inst4|inst1|auto_generated|counter_reg_bit\(1) & (!\inst4|inst1|auto_generated|counter_comb_bita0~COUT\)) # (!\inst4|inst1|auto_generated|counter_reg_bit\(1) & 
-- ((\inst4|inst1|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst4|inst1|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst4|inst1|auto_generated|counter_comb_bita0~COUT\) # (!\inst4|inst1|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \inst4|inst1|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst4|inst1|auto_generated|counter_comb_bita1~combout\,
	cout => \inst4|inst1|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X11_Y13_N13
\inst4|inst1|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|inst1|auto_generated|counter_comb_bita1~combout\,
	asdata => \~GND~combout\,
	sload => \inst4|inst1|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst1|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X11_Y13_N14
\inst4|inst1|auto_generated|counter_comb_bita2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|auto_generated|counter_comb_bita2~combout\ = (\inst4|inst1|auto_generated|counter_reg_bit\(2) & (\inst4|inst1|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # (!\inst4|inst1|auto_generated|counter_reg_bit\(2) & 
-- (!\inst4|inst1|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst4|inst1|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst4|inst1|auto_generated|counter_reg_bit\(2) & !\inst4|inst1|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst1|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \inst4|inst1|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst4|inst1|auto_generated|counter_comb_bita2~combout\,
	cout => \inst4|inst1|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X11_Y13_N15
\inst4|inst1|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|inst1|auto_generated|counter_comb_bita2~combout\,
	asdata => \~GND~combout\,
	sload => \inst4|inst1|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst1|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X11_Y13_N16
\inst4|inst1|auto_generated|counter_comb_bita3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|auto_generated|counter_comb_bita3~combout\ = (\inst4|inst1|auto_generated|counter_reg_bit\(3) & (!\inst4|inst1|auto_generated|counter_comb_bita2~COUT\)) # (!\inst4|inst1|auto_generated|counter_reg_bit\(3) & 
-- ((\inst4|inst1|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \inst4|inst1|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst4|inst1|auto_generated|counter_comb_bita2~COUT\) # (!\inst4|inst1|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst1|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \inst4|inst1|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst4|inst1|auto_generated|counter_comb_bita3~combout\,
	cout => \inst4|inst1|auto_generated|counter_comb_bita3~COUT\);

-- Location: FF_X11_Y13_N17
\inst4|inst1|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|inst1|auto_generated|counter_comb_bita3~combout\,
	asdata => \~GND~combout\,
	sload => \inst4|inst1|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst1|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X11_Y13_N18
\inst4|inst1|auto_generated|counter_comb_bita4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|auto_generated|counter_comb_bita4~combout\ = (\inst4|inst1|auto_generated|counter_reg_bit\(4) & (\inst4|inst1|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # (!\inst4|inst1|auto_generated|counter_reg_bit\(4) & 
-- (!\inst4|inst1|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \inst4|inst1|auto_generated|counter_comb_bita4~COUT\ = CARRY((\inst4|inst1|auto_generated|counter_reg_bit\(4) & !\inst4|inst1|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst1|auto_generated|counter_reg_bit\(4),
	datad => VCC,
	cin => \inst4|inst1|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst4|inst1|auto_generated|counter_comb_bita4~combout\,
	cout => \inst4|inst1|auto_generated|counter_comb_bita4~COUT\);

-- Location: FF_X11_Y13_N19
\inst4|inst1|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|inst1|auto_generated|counter_comb_bita4~combout\,
	asdata => \~GND~combout\,
	sload => \inst4|inst1|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst1|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X11_Y13_N20
\inst4|inst1|auto_generated|counter_comb_bita5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|auto_generated|counter_comb_bita5~combout\ = (\inst4|inst1|auto_generated|counter_reg_bit\(5) & (!\inst4|inst1|auto_generated|counter_comb_bita4~COUT\)) # (!\inst4|inst1|auto_generated|counter_reg_bit\(5) & 
-- ((\inst4|inst1|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \inst4|inst1|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\inst4|inst1|auto_generated|counter_comb_bita4~COUT\) # (!\inst4|inst1|auto_generated|counter_reg_bit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst1|auto_generated|counter_reg_bit\(5),
	datad => VCC,
	cin => \inst4|inst1|auto_generated|counter_comb_bita4~COUT\,
	combout => \inst4|inst1|auto_generated|counter_comb_bita5~combout\,
	cout => \inst4|inst1|auto_generated|counter_comb_bita5~COUT\);

-- Location: FF_X11_Y13_N21
\inst4|inst1|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|inst1|auto_generated|counter_comb_bita5~combout\,
	asdata => \~GND~combout\,
	sload => \inst4|inst1|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst1|auto_generated|counter_reg_bit\(5));

-- Location: LCCOMB_X11_Y13_N2
\inst4|inst1|auto_generated|cmpr1|aneb_result_wire[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|auto_generated|cmpr1|aneb_result_wire[0]~5_combout\ = (\inst4|inst1|auto_generated|counter_reg_bit\(4) & (\inst4|inst1|auto_generated|counter_reg_bit\(3) & (!\inst4|inst1|auto_generated|counter_reg_bit\(5) & 
-- \inst4|inst1|auto_generated|counter_reg_bit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|auto_generated|counter_reg_bit\(4),
	datab => \inst4|inst1|auto_generated|counter_reg_bit\(3),
	datac => \inst4|inst1|auto_generated|counter_reg_bit\(5),
	datad => \inst4|inst1|auto_generated|counter_reg_bit\(2),
	combout => \inst4|inst1|auto_generated|cmpr1|aneb_result_wire[0]~5_combout\);

-- Location: LCCOMB_X11_Y13_N0
\inst4|inst1|auto_generated|cmpr1|aneb_result_wire[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|auto_generated|cmpr1|aneb_result_wire[0]~6_combout\ = (\inst4|inst1|auto_generated|counter_reg_bit\(0) & \inst4|inst1|auto_generated|counter_reg_bit\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|inst1|auto_generated|counter_reg_bit\(0),
	datad => \inst4|inst1|auto_generated|counter_reg_bit\(1),
	combout => \inst4|inst1|auto_generated|cmpr1|aneb_result_wire[0]~6_combout\);

-- Location: LCCOMB_X11_Y13_N22
\inst4|inst1|auto_generated|counter_comb_bita6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|auto_generated|counter_comb_bita6~combout\ = (\inst4|inst1|auto_generated|counter_reg_bit\(6) & (\inst4|inst1|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # (!\inst4|inst1|auto_generated|counter_reg_bit\(6) & 
-- (!\inst4|inst1|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \inst4|inst1|auto_generated|counter_comb_bita6~COUT\ = CARRY((\inst4|inst1|auto_generated|counter_reg_bit\(6) & !\inst4|inst1|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|auto_generated|counter_reg_bit\(6),
	datad => VCC,
	cin => \inst4|inst1|auto_generated|counter_comb_bita5~COUT\,
	combout => \inst4|inst1|auto_generated|counter_comb_bita6~combout\,
	cout => \inst4|inst1|auto_generated|counter_comb_bita6~COUT\);

-- Location: FF_X11_Y13_N23
\inst4|inst1|auto_generated|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|inst1|auto_generated|counter_comb_bita6~combout\,
	asdata => \~GND~combout\,
	sload => \inst4|inst1|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst1|auto_generated|counter_reg_bit\(6));

-- Location: LCCOMB_X11_Y13_N24
\inst4|inst1|auto_generated|counter_comb_bita7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|auto_generated|counter_comb_bita7~combout\ = (\inst4|inst1|auto_generated|counter_reg_bit\(7) & (!\inst4|inst1|auto_generated|counter_comb_bita6~COUT\)) # (!\inst4|inst1|auto_generated|counter_reg_bit\(7) & 
-- ((\inst4|inst1|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \inst4|inst1|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\inst4|inst1|auto_generated|counter_comb_bita6~COUT\) # (!\inst4|inst1|auto_generated|counter_reg_bit\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst1|auto_generated|counter_reg_bit\(7),
	datad => VCC,
	cin => \inst4|inst1|auto_generated|counter_comb_bita6~COUT\,
	combout => \inst4|inst1|auto_generated|counter_comb_bita7~combout\,
	cout => \inst4|inst1|auto_generated|counter_comb_bita7~COUT\);

-- Location: FF_X11_Y13_N25
\inst4|inst1|auto_generated|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|inst1|auto_generated|counter_comb_bita7~combout\,
	asdata => \~GND~combout\,
	sload => \inst4|inst1|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst1|auto_generated|counter_reg_bit\(7));

-- Location: LCCOMB_X11_Y13_N26
\inst4|inst1|auto_generated|counter_comb_bita8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|auto_generated|counter_comb_bita8~combout\ = (\inst4|inst1|auto_generated|counter_reg_bit\(8) & (\inst4|inst1|auto_generated|counter_comb_bita7~COUT\ $ (GND))) # (!\inst4|inst1|auto_generated|counter_reg_bit\(8) & 
-- (!\inst4|inst1|auto_generated|counter_comb_bita7~COUT\ & VCC))
-- \inst4|inst1|auto_generated|counter_comb_bita8~COUT\ = CARRY((\inst4|inst1|auto_generated|counter_reg_bit\(8) & !\inst4|inst1|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|auto_generated|counter_reg_bit\(8),
	datad => VCC,
	cin => \inst4|inst1|auto_generated|counter_comb_bita7~COUT\,
	combout => \inst4|inst1|auto_generated|counter_comb_bita8~combout\,
	cout => \inst4|inst1|auto_generated|counter_comb_bita8~COUT\);

-- Location: FF_X11_Y13_N27
\inst4|inst1|auto_generated|counter_reg_bit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|inst1|auto_generated|counter_comb_bita8~combout\,
	asdata => \~GND~combout\,
	sload => \inst4|inst1|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst1|auto_generated|counter_reg_bit\(8));

-- Location: LCCOMB_X11_Y13_N28
\inst4|inst1|auto_generated|counter_comb_bita9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|auto_generated|counter_comb_bita9~combout\ = (\inst4|inst1|auto_generated|counter_reg_bit\(9) & (!\inst4|inst1|auto_generated|counter_comb_bita8~COUT\)) # (!\inst4|inst1|auto_generated|counter_reg_bit\(9) & 
-- ((\inst4|inst1|auto_generated|counter_comb_bita8~COUT\) # (GND)))
-- \inst4|inst1|auto_generated|counter_comb_bita9~COUT\ = CARRY((!\inst4|inst1|auto_generated|counter_comb_bita8~COUT\) # (!\inst4|inst1|auto_generated|counter_reg_bit\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst1|auto_generated|counter_reg_bit\(9),
	datad => VCC,
	cin => \inst4|inst1|auto_generated|counter_comb_bita8~COUT\,
	combout => \inst4|inst1|auto_generated|counter_comb_bita9~combout\,
	cout => \inst4|inst1|auto_generated|counter_comb_bita9~COUT\);

-- Location: FF_X11_Y13_N29
\inst4|inst1|auto_generated|counter_reg_bit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|inst1|auto_generated|counter_comb_bita9~combout\,
	asdata => \~GND~combout\,
	sload => \inst4|inst1|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst1|auto_generated|counter_reg_bit\(9));

-- Location: LCCOMB_X11_Y13_N30
\inst4|inst1|auto_generated|counter_comb_bita10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|auto_generated|counter_comb_bita10~combout\ = (\inst4|inst1|auto_generated|counter_reg_bit\(10) & (\inst4|inst1|auto_generated|counter_comb_bita9~COUT\ $ (GND))) # (!\inst4|inst1|auto_generated|counter_reg_bit\(10) & 
-- (!\inst4|inst1|auto_generated|counter_comb_bita9~COUT\ & VCC))
-- \inst4|inst1|auto_generated|counter_comb_bita10~COUT\ = CARRY((\inst4|inst1|auto_generated|counter_reg_bit\(10) & !\inst4|inst1|auto_generated|counter_comb_bita9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|auto_generated|counter_reg_bit\(10),
	datad => VCC,
	cin => \inst4|inst1|auto_generated|counter_comb_bita9~COUT\,
	combout => \inst4|inst1|auto_generated|counter_comb_bita10~combout\,
	cout => \inst4|inst1|auto_generated|counter_comb_bita10~COUT\);

-- Location: FF_X11_Y13_N31
\inst4|inst1|auto_generated|counter_reg_bit[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|inst1|auto_generated|counter_comb_bita10~combout\,
	asdata => \~GND~combout\,
	sload => \inst4|inst1|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst1|auto_generated|counter_reg_bit\(10));

-- Location: LCCOMB_X11_Y12_N0
\inst4|inst1|auto_generated|counter_comb_bita11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|auto_generated|counter_comb_bita11~combout\ = (\inst4|inst1|auto_generated|counter_reg_bit\(11) & (!\inst4|inst1|auto_generated|counter_comb_bita10~COUT\)) # (!\inst4|inst1|auto_generated|counter_reg_bit\(11) & 
-- ((\inst4|inst1|auto_generated|counter_comb_bita10~COUT\) # (GND)))
-- \inst4|inst1|auto_generated|counter_comb_bita11~COUT\ = CARRY((!\inst4|inst1|auto_generated|counter_comb_bita10~COUT\) # (!\inst4|inst1|auto_generated|counter_reg_bit\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst1|auto_generated|counter_reg_bit\(11),
	datad => VCC,
	cin => \inst4|inst1|auto_generated|counter_comb_bita10~COUT\,
	combout => \inst4|inst1|auto_generated|counter_comb_bita11~combout\,
	cout => \inst4|inst1|auto_generated|counter_comb_bita11~COUT\);

-- Location: FF_X11_Y12_N1
\inst4|inst1|auto_generated|counter_reg_bit[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|inst1|auto_generated|counter_comb_bita11~combout\,
	asdata => \~GND~combout\,
	sload => \inst4|inst1|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst1|auto_generated|counter_reg_bit\(11));

-- Location: LCCOMB_X11_Y12_N2
\inst4|inst1|auto_generated|counter_comb_bita12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|auto_generated|counter_comb_bita12~combout\ = (\inst4|inst1|auto_generated|counter_reg_bit\(12) & (\inst4|inst1|auto_generated|counter_comb_bita11~COUT\ $ (GND))) # (!\inst4|inst1|auto_generated|counter_reg_bit\(12) & 
-- (!\inst4|inst1|auto_generated|counter_comb_bita11~COUT\ & VCC))
-- \inst4|inst1|auto_generated|counter_comb_bita12~COUT\ = CARRY((\inst4|inst1|auto_generated|counter_reg_bit\(12) & !\inst4|inst1|auto_generated|counter_comb_bita11~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst1|auto_generated|counter_reg_bit\(12),
	datad => VCC,
	cin => \inst4|inst1|auto_generated|counter_comb_bita11~COUT\,
	combout => \inst4|inst1|auto_generated|counter_comb_bita12~combout\,
	cout => \inst4|inst1|auto_generated|counter_comb_bita12~COUT\);

-- Location: FF_X11_Y12_N3
\inst4|inst1|auto_generated|counter_reg_bit[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|inst1|auto_generated|counter_comb_bita12~combout\,
	asdata => \~GND~combout\,
	sload => \inst4|inst1|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst1|auto_generated|counter_reg_bit\(12));

-- Location: LCCOMB_X11_Y12_N4
\inst4|inst1|auto_generated|counter_comb_bita13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|auto_generated|counter_comb_bita13~combout\ = (\inst4|inst1|auto_generated|counter_reg_bit\(13) & (!\inst4|inst1|auto_generated|counter_comb_bita12~COUT\)) # (!\inst4|inst1|auto_generated|counter_reg_bit\(13) & 
-- ((\inst4|inst1|auto_generated|counter_comb_bita12~COUT\) # (GND)))
-- \inst4|inst1|auto_generated|counter_comb_bita13~COUT\ = CARRY((!\inst4|inst1|auto_generated|counter_comb_bita12~COUT\) # (!\inst4|inst1|auto_generated|counter_reg_bit\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst1|auto_generated|counter_reg_bit\(13),
	datad => VCC,
	cin => \inst4|inst1|auto_generated|counter_comb_bita12~COUT\,
	combout => \inst4|inst1|auto_generated|counter_comb_bita13~combout\,
	cout => \inst4|inst1|auto_generated|counter_comb_bita13~COUT\);

-- Location: FF_X11_Y12_N5
\inst4|inst1|auto_generated|counter_reg_bit[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|inst1|auto_generated|counter_comb_bita13~combout\,
	asdata => \~GND~combout\,
	sload => \inst4|inst1|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst1|auto_generated|counter_reg_bit\(13));

-- Location: LCCOMB_X11_Y12_N6
\inst4|inst1|auto_generated|counter_comb_bita14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|auto_generated|counter_comb_bita14~combout\ = (\inst4|inst1|auto_generated|counter_reg_bit\(14) & (\inst4|inst1|auto_generated|counter_comb_bita13~COUT\ $ (GND))) # (!\inst4|inst1|auto_generated|counter_reg_bit\(14) & 
-- (!\inst4|inst1|auto_generated|counter_comb_bita13~COUT\ & VCC))
-- \inst4|inst1|auto_generated|counter_comb_bita14~COUT\ = CARRY((\inst4|inst1|auto_generated|counter_reg_bit\(14) & !\inst4|inst1|auto_generated|counter_comb_bita13~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|auto_generated|counter_reg_bit\(14),
	datad => VCC,
	cin => \inst4|inst1|auto_generated|counter_comb_bita13~COUT\,
	combout => \inst4|inst1|auto_generated|counter_comb_bita14~combout\,
	cout => \inst4|inst1|auto_generated|counter_comb_bita14~COUT\);

-- Location: FF_X11_Y12_N7
\inst4|inst1|auto_generated|counter_reg_bit[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|inst1|auto_generated|counter_comb_bita14~combout\,
	asdata => \~GND~combout\,
	sload => \inst4|inst1|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst1|auto_generated|counter_reg_bit\(14));

-- Location: LCCOMB_X11_Y12_N8
\inst4|inst1|auto_generated|counter_comb_bita15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|auto_generated|counter_comb_bita15~combout\ = (\inst4|inst1|auto_generated|counter_reg_bit\(15) & (!\inst4|inst1|auto_generated|counter_comb_bita14~COUT\)) # (!\inst4|inst1|auto_generated|counter_reg_bit\(15) & 
-- ((\inst4|inst1|auto_generated|counter_comb_bita14~COUT\) # (GND)))
-- \inst4|inst1|auto_generated|counter_comb_bita15~COUT\ = CARRY((!\inst4|inst1|auto_generated|counter_comb_bita14~COUT\) # (!\inst4|inst1|auto_generated|counter_reg_bit\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst1|auto_generated|counter_reg_bit\(15),
	datad => VCC,
	cin => \inst4|inst1|auto_generated|counter_comb_bita14~COUT\,
	combout => \inst4|inst1|auto_generated|counter_comb_bita15~combout\,
	cout => \inst4|inst1|auto_generated|counter_comb_bita15~COUT\);

-- Location: FF_X11_Y12_N9
\inst4|inst1|auto_generated|counter_reg_bit[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|inst1|auto_generated|counter_comb_bita15~combout\,
	asdata => \~GND~combout\,
	sload => \inst4|inst1|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst1|auto_generated|counter_reg_bit\(15));

-- Location: LCCOMB_X11_Y12_N10
\inst4|inst1|auto_generated|counter_comb_bita16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|auto_generated|counter_comb_bita16~combout\ = (\inst4|inst1|auto_generated|counter_reg_bit\(16) & (\inst4|inst1|auto_generated|counter_comb_bita15~COUT\ $ (GND))) # (!\inst4|inst1|auto_generated|counter_reg_bit\(16) & 
-- (!\inst4|inst1|auto_generated|counter_comb_bita15~COUT\ & VCC))
-- \inst4|inst1|auto_generated|counter_comb_bita16~COUT\ = CARRY((\inst4|inst1|auto_generated|counter_reg_bit\(16) & !\inst4|inst1|auto_generated|counter_comb_bita15~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|auto_generated|counter_reg_bit\(16),
	datad => VCC,
	cin => \inst4|inst1|auto_generated|counter_comb_bita15~COUT\,
	combout => \inst4|inst1|auto_generated|counter_comb_bita16~combout\,
	cout => \inst4|inst1|auto_generated|counter_comb_bita16~COUT\);

-- Location: FF_X11_Y12_N11
\inst4|inst1|auto_generated|counter_reg_bit[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|inst1|auto_generated|counter_comb_bita16~combout\,
	asdata => \~GND~combout\,
	sload => \inst4|inst1|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst1|auto_generated|counter_reg_bit\(16));

-- Location: LCCOMB_X11_Y12_N12
\inst4|inst1|auto_generated|counter_comb_bita17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|auto_generated|counter_comb_bita17~combout\ = (\inst4|inst1|auto_generated|counter_reg_bit\(17) & (!\inst4|inst1|auto_generated|counter_comb_bita16~COUT\)) # (!\inst4|inst1|auto_generated|counter_reg_bit\(17) & 
-- ((\inst4|inst1|auto_generated|counter_comb_bita16~COUT\) # (GND)))
-- \inst4|inst1|auto_generated|counter_comb_bita17~COUT\ = CARRY((!\inst4|inst1|auto_generated|counter_comb_bita16~COUT\) # (!\inst4|inst1|auto_generated|counter_reg_bit\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|auto_generated|counter_reg_bit\(17),
	datad => VCC,
	cin => \inst4|inst1|auto_generated|counter_comb_bita16~COUT\,
	combout => \inst4|inst1|auto_generated|counter_comb_bita17~combout\,
	cout => \inst4|inst1|auto_generated|counter_comb_bita17~COUT\);

-- Location: FF_X11_Y12_N13
\inst4|inst1|auto_generated|counter_reg_bit[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|inst1|auto_generated|counter_comb_bita17~combout\,
	asdata => \~GND~combout\,
	sload => \inst4|inst1|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst1|auto_generated|counter_reg_bit\(17));

-- Location: LCCOMB_X11_Y12_N14
\inst4|inst1|auto_generated|counter_comb_bita18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|auto_generated|counter_comb_bita18~combout\ = (\inst4|inst1|auto_generated|counter_reg_bit\(18) & (\inst4|inst1|auto_generated|counter_comb_bita17~COUT\ $ (GND))) # (!\inst4|inst1|auto_generated|counter_reg_bit\(18) & 
-- (!\inst4|inst1|auto_generated|counter_comb_bita17~COUT\ & VCC))
-- \inst4|inst1|auto_generated|counter_comb_bita18~COUT\ = CARRY((\inst4|inst1|auto_generated|counter_reg_bit\(18) & !\inst4|inst1|auto_generated|counter_comb_bita17~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst1|auto_generated|counter_reg_bit\(18),
	datad => VCC,
	cin => \inst4|inst1|auto_generated|counter_comb_bita17~COUT\,
	combout => \inst4|inst1|auto_generated|counter_comb_bita18~combout\,
	cout => \inst4|inst1|auto_generated|counter_comb_bita18~COUT\);

-- Location: FF_X11_Y12_N15
\inst4|inst1|auto_generated|counter_reg_bit[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|inst1|auto_generated|counter_comb_bita18~combout\,
	asdata => \~GND~combout\,
	sload => \inst4|inst1|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst1|auto_generated|counter_reg_bit\(18));

-- Location: LCCOMB_X11_Y12_N16
\inst4|inst1|auto_generated|counter_comb_bita19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|auto_generated|counter_comb_bita19~combout\ = (\inst4|inst1|auto_generated|counter_reg_bit\(19) & (!\inst4|inst1|auto_generated|counter_comb_bita18~COUT\)) # (!\inst4|inst1|auto_generated|counter_reg_bit\(19) & 
-- ((\inst4|inst1|auto_generated|counter_comb_bita18~COUT\) # (GND)))
-- \inst4|inst1|auto_generated|counter_comb_bita19~COUT\ = CARRY((!\inst4|inst1|auto_generated|counter_comb_bita18~COUT\) # (!\inst4|inst1|auto_generated|counter_reg_bit\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst1|auto_generated|counter_reg_bit\(19),
	datad => VCC,
	cin => \inst4|inst1|auto_generated|counter_comb_bita18~COUT\,
	combout => \inst4|inst1|auto_generated|counter_comb_bita19~combout\,
	cout => \inst4|inst1|auto_generated|counter_comb_bita19~COUT\);

-- Location: FF_X11_Y12_N17
\inst4|inst1|auto_generated|counter_reg_bit[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|inst1|auto_generated|counter_comb_bita19~combout\,
	asdata => \~GND~combout\,
	sload => \inst4|inst1|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst1|auto_generated|counter_reg_bit\(19));

-- Location: LCCOMB_X11_Y12_N18
\inst4|inst1|auto_generated|counter_comb_bita20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|auto_generated|counter_comb_bita20~combout\ = (\inst4|inst1|auto_generated|counter_reg_bit\(20) & (\inst4|inst1|auto_generated|counter_comb_bita19~COUT\ $ (GND))) # (!\inst4|inst1|auto_generated|counter_reg_bit\(20) & 
-- (!\inst4|inst1|auto_generated|counter_comb_bita19~COUT\ & VCC))
-- \inst4|inst1|auto_generated|counter_comb_bita20~COUT\ = CARRY((\inst4|inst1|auto_generated|counter_reg_bit\(20) & !\inst4|inst1|auto_generated|counter_comb_bita19~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst1|auto_generated|counter_reg_bit\(20),
	datad => VCC,
	cin => \inst4|inst1|auto_generated|counter_comb_bita19~COUT\,
	combout => \inst4|inst1|auto_generated|counter_comb_bita20~combout\,
	cout => \inst4|inst1|auto_generated|counter_comb_bita20~COUT\);

-- Location: FF_X11_Y12_N19
\inst4|inst1|auto_generated|counter_reg_bit[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|inst1|auto_generated|counter_comb_bita20~combout\,
	asdata => \~GND~combout\,
	sload => \inst4|inst1|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst1|auto_generated|counter_reg_bit\(20));

-- Location: LCCOMB_X11_Y12_N20
\inst4|inst1|auto_generated|counter_comb_bita21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|auto_generated|counter_comb_bita21~combout\ = (\inst4|inst1|auto_generated|counter_reg_bit\(21) & (!\inst4|inst1|auto_generated|counter_comb_bita20~COUT\)) # (!\inst4|inst1|auto_generated|counter_reg_bit\(21) & 
-- ((\inst4|inst1|auto_generated|counter_comb_bita20~COUT\) # (GND)))
-- \inst4|inst1|auto_generated|counter_comb_bita21~COUT\ = CARRY((!\inst4|inst1|auto_generated|counter_comb_bita20~COUT\) # (!\inst4|inst1|auto_generated|counter_reg_bit\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst1|auto_generated|counter_reg_bit\(21),
	datad => VCC,
	cin => \inst4|inst1|auto_generated|counter_comb_bita20~COUT\,
	combout => \inst4|inst1|auto_generated|counter_comb_bita21~combout\,
	cout => \inst4|inst1|auto_generated|counter_comb_bita21~COUT\);

-- Location: FF_X11_Y12_N21
\inst4|inst1|auto_generated|counter_reg_bit[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|inst1|auto_generated|counter_comb_bita21~combout\,
	asdata => \~GND~combout\,
	sload => \inst4|inst1|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst1|auto_generated|counter_reg_bit\(21));

-- Location: LCCOMB_X11_Y12_N22
\inst4|inst1|auto_generated|counter_comb_bita21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|auto_generated|counter_comb_bita21~0_combout\ = !\inst4|inst1|auto_generated|counter_comb_bita21~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst4|inst1|auto_generated|counter_comb_bita21~COUT\,
	combout => \inst4|inst1|auto_generated|counter_comb_bita21~0_combout\);

-- Location: LCCOMB_X11_Y13_N6
\inst4|inst1|auto_generated|cmpr1|aneb_result_wire[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|auto_generated|cmpr1|aneb_result_wire[0]~3_combout\ = (!\inst4|inst1|auto_generated|counter_reg_bit\(6) & (\inst4|inst1|auto_generated|counter_reg_bit\(7) & (\inst4|inst1|auto_generated|counter_reg_bit\(8) & 
-- !\inst4|inst1|auto_generated|counter_reg_bit\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|auto_generated|counter_reg_bit\(6),
	datab => \inst4|inst1|auto_generated|counter_reg_bit\(7),
	datac => \inst4|inst1|auto_generated|counter_reg_bit\(8),
	datad => \inst4|inst1|auto_generated|counter_reg_bit\(9),
	combout => \inst4|inst1|auto_generated|cmpr1|aneb_result_wire[0]~3_combout\);

-- Location: LCCOMB_X11_Y13_N8
\inst4|inst1|auto_generated|cmpr1|aneb_result_wire[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\ = (\inst4|inst1|auto_generated|counter_reg_bit\(10) & (\inst4|inst1|auto_generated|counter_reg_bit\(13) & (!\inst4|inst1|auto_generated|counter_reg_bit\(11) & 
-- !\inst4|inst1|auto_generated|counter_reg_bit\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|auto_generated|counter_reg_bit\(10),
	datab => \inst4|inst1|auto_generated|counter_reg_bit\(13),
	datac => \inst4|inst1|auto_generated|counter_reg_bit\(11),
	datad => \inst4|inst1|auto_generated|counter_reg_bit\(12),
	combout => \inst4|inst1|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\);

-- Location: LCCOMB_X11_Y12_N26
\inst4|inst1|auto_generated|cmpr1|aneb_result_wire[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\ = (!\inst4|inst1|auto_generated|counter_reg_bit\(16) & (!\inst4|inst1|auto_generated|counter_reg_bit\(15) & (\inst4|inst1|auto_generated|counter_reg_bit\(17) & 
-- !\inst4|inst1|auto_generated|counter_reg_bit\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|auto_generated|counter_reg_bit\(16),
	datab => \inst4|inst1|auto_generated|counter_reg_bit\(15),
	datac => \inst4|inst1|auto_generated|counter_reg_bit\(17),
	datad => \inst4|inst1|auto_generated|counter_reg_bit\(14),
	combout => \inst4|inst1|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\);

-- Location: LCCOMB_X11_Y12_N30
\inst4|inst1|auto_generated|cmpr1|aneb_result_wire[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ = (!\inst4|inst1|auto_generated|counter_reg_bit\(19) & (\inst4|inst1|auto_generated|counter_reg_bit\(21) & (\inst4|inst1|auto_generated|counter_reg_bit\(18) & 
-- !\inst4|inst1|auto_generated|counter_reg_bit\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|auto_generated|counter_reg_bit\(19),
	datab => \inst4|inst1|auto_generated|counter_reg_bit\(21),
	datac => \inst4|inst1|auto_generated|counter_reg_bit\(18),
	datad => \inst4|inst1|auto_generated|counter_reg_bit\(20),
	combout => \inst4|inst1|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X11_Y13_N4
\inst4|inst1|auto_generated|cmpr1|aneb_result_wire[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|auto_generated|cmpr1|aneb_result_wire[0]~4_combout\ = (\inst4|inst1|auto_generated|cmpr1|aneb_result_wire[0]~3_combout\ & (\inst4|inst1|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\ & 
-- (\inst4|inst1|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\ & \inst4|inst1|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|auto_generated|cmpr1|aneb_result_wire[0]~3_combout\,
	datab => \inst4|inst1|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\,
	datac => \inst4|inst1|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\,
	datad => \inst4|inst1|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\,
	combout => \inst4|inst1|auto_generated|cmpr1|aneb_result_wire[0]~4_combout\);

-- Location: LCCOMB_X11_Y12_N28
\inst4|inst1|auto_generated|cout_actual\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|auto_generated|cout_actual~combout\ = (\inst4|inst1|auto_generated|counter_comb_bita21~0_combout\) # ((\inst4|inst1|auto_generated|cmpr1|aneb_result_wire[0]~5_combout\ & (\inst4|inst1|auto_generated|cmpr1|aneb_result_wire[0]~6_combout\ & 
-- \inst4|inst1|auto_generated|cmpr1|aneb_result_wire[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|auto_generated|cmpr1|aneb_result_wire[0]~5_combout\,
	datab => \inst4|inst1|auto_generated|cmpr1|aneb_result_wire[0]~6_combout\,
	datac => \inst4|inst1|auto_generated|counter_comb_bita21~0_combout\,
	datad => \inst4|inst1|auto_generated|cmpr1|aneb_result_wire[0]~4_combout\,
	combout => \inst4|inst1|auto_generated|cout_actual~combout\);

-- Location: LCCOMB_X11_Y12_N24
\inst4|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2~0_combout\ = \inst4|inst2~q\ $ (\inst4|inst1|auto_generated|cout_actual~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|inst2~q\,
	datad => \inst4|inst1|auto_generated|cout_actual~combout\,
	combout => \inst4|inst2~0_combout\);

-- Location: FF_X11_Y12_N25
\inst4|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|inst2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst2~q\);

-- Location: LCCOMB_X12_Y13_N8
\inst6|inst1|auto_generated|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|auto_generated|counter_comb_bita0~combout\ = \inst6|inst1|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \inst6|inst1|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst6|inst1|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst1|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \inst6|inst1|auto_generated|counter_comb_bita0~combout\,
	cout => \inst6|inst1|auto_generated|counter_comb_bita0~COUT\);

-- Location: FF_X12_Y13_N9
\inst6|inst1|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|inst1|auto_generated|counter_comb_bita0~combout\,
	asdata => \~GND~combout\,
	sload => \inst6|inst1|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X12_Y13_N10
\inst6|inst1|auto_generated|counter_comb_bita1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|auto_generated|counter_comb_bita1~combout\ = (\inst6|inst1|auto_generated|counter_reg_bit\(1) & (!\inst6|inst1|auto_generated|counter_comb_bita0~COUT\)) # (!\inst6|inst1|auto_generated|counter_reg_bit\(1) & 
-- ((\inst6|inst1|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst6|inst1|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst6|inst1|auto_generated|counter_comb_bita0~COUT\) # (!\inst6|inst1|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \inst6|inst1|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst6|inst1|auto_generated|counter_comb_bita1~combout\,
	cout => \inst6|inst1|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X12_Y13_N11
\inst6|inst1|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|inst1|auto_generated|counter_comb_bita1~combout\,
	asdata => \~GND~combout\,
	sload => \inst6|inst1|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X12_Y13_N12
\inst6|inst1|auto_generated|counter_comb_bita2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|auto_generated|counter_comb_bita2~combout\ = (\inst6|inst1|auto_generated|counter_reg_bit\(2) & (\inst6|inst1|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # (!\inst6|inst1|auto_generated|counter_reg_bit\(2) & 
-- (!\inst6|inst1|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst6|inst1|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst6|inst1|auto_generated|counter_reg_bit\(2) & !\inst6|inst1|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \inst6|inst1|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst6|inst1|auto_generated|counter_comb_bita2~combout\,
	cout => \inst6|inst1|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X12_Y13_N13
\inst6|inst1|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|inst1|auto_generated|counter_comb_bita2~combout\,
	asdata => \~GND~combout\,
	sload => \inst6|inst1|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X12_Y13_N14
\inst6|inst1|auto_generated|counter_comb_bita3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|auto_generated|counter_comb_bita3~combout\ = (\inst6|inst1|auto_generated|counter_reg_bit\(3) & (!\inst6|inst1|auto_generated|counter_comb_bita2~COUT\)) # (!\inst6|inst1|auto_generated|counter_reg_bit\(3) & 
-- ((\inst6|inst1|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \inst6|inst1|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst6|inst1|auto_generated|counter_comb_bita2~COUT\) # (!\inst6|inst1|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst1|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \inst6|inst1|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst6|inst1|auto_generated|counter_comb_bita3~combout\,
	cout => \inst6|inst1|auto_generated|counter_comb_bita3~COUT\);

-- Location: FF_X12_Y13_N15
\inst6|inst1|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|inst1|auto_generated|counter_comb_bita3~combout\,
	asdata => \~GND~combout\,
	sload => \inst6|inst1|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X12_Y13_N16
\inst6|inst1|auto_generated|counter_comb_bita4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|auto_generated|counter_comb_bita4~combout\ = (\inst6|inst1|auto_generated|counter_reg_bit\(4) & (\inst6|inst1|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # (!\inst6|inst1|auto_generated|counter_reg_bit\(4) & 
-- (!\inst6|inst1|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \inst6|inst1|auto_generated|counter_comb_bita4~COUT\ = CARRY((\inst6|inst1|auto_generated|counter_reg_bit\(4) & !\inst6|inst1|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst1|auto_generated|counter_reg_bit\(4),
	datad => VCC,
	cin => \inst6|inst1|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst6|inst1|auto_generated|counter_comb_bita4~combout\,
	cout => \inst6|inst1|auto_generated|counter_comb_bita4~COUT\);

-- Location: FF_X12_Y13_N17
\inst6|inst1|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|inst1|auto_generated|counter_comb_bita4~combout\,
	asdata => \~GND~combout\,
	sload => \inst6|inst1|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X12_Y13_N18
\inst6|inst1|auto_generated|counter_comb_bita5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|auto_generated|counter_comb_bita5~combout\ = (\inst6|inst1|auto_generated|counter_reg_bit\(5) & (!\inst6|inst1|auto_generated|counter_comb_bita4~COUT\)) # (!\inst6|inst1|auto_generated|counter_reg_bit\(5) & 
-- ((\inst6|inst1|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \inst6|inst1|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\inst6|inst1|auto_generated|counter_comb_bita4~COUT\) # (!\inst6|inst1|auto_generated|counter_reg_bit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst1|auto_generated|counter_reg_bit\(5),
	datad => VCC,
	cin => \inst6|inst1|auto_generated|counter_comb_bita4~COUT\,
	combout => \inst6|inst1|auto_generated|counter_comb_bita5~combout\,
	cout => \inst6|inst1|auto_generated|counter_comb_bita5~COUT\);

-- Location: FF_X12_Y13_N19
\inst6|inst1|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|inst1|auto_generated|counter_comb_bita5~combout\,
	asdata => \~GND~combout\,
	sload => \inst6|inst1|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|auto_generated|counter_reg_bit\(5));

-- Location: LCCOMB_X12_Y13_N20
\inst6|inst1|auto_generated|counter_comb_bita6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|auto_generated|counter_comb_bita6~combout\ = (\inst6|inst1|auto_generated|counter_reg_bit\(6) & (\inst6|inst1|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # (!\inst6|inst1|auto_generated|counter_reg_bit\(6) & 
-- (!\inst6|inst1|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \inst6|inst1|auto_generated|counter_comb_bita6~COUT\ = CARRY((\inst6|inst1|auto_generated|counter_reg_bit\(6) & !\inst6|inst1|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst1|auto_generated|counter_reg_bit\(6),
	datad => VCC,
	cin => \inst6|inst1|auto_generated|counter_comb_bita5~COUT\,
	combout => \inst6|inst1|auto_generated|counter_comb_bita6~combout\,
	cout => \inst6|inst1|auto_generated|counter_comb_bita6~COUT\);

-- Location: FF_X12_Y13_N21
\inst6|inst1|auto_generated|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|inst1|auto_generated|counter_comb_bita6~combout\,
	asdata => \~GND~combout\,
	sload => \inst6|inst1|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|auto_generated|counter_reg_bit\(6));

-- Location: LCCOMB_X12_Y13_N22
\inst6|inst1|auto_generated|counter_comb_bita7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|auto_generated|counter_comb_bita7~combout\ = (\inst6|inst1|auto_generated|counter_reg_bit\(7) & (!\inst6|inst1|auto_generated|counter_comb_bita6~COUT\)) # (!\inst6|inst1|auto_generated|counter_reg_bit\(7) & 
-- ((\inst6|inst1|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \inst6|inst1|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\inst6|inst1|auto_generated|counter_comb_bita6~COUT\) # (!\inst6|inst1|auto_generated|counter_reg_bit\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|auto_generated|counter_reg_bit\(7),
	datad => VCC,
	cin => \inst6|inst1|auto_generated|counter_comb_bita6~COUT\,
	combout => \inst6|inst1|auto_generated|counter_comb_bita7~combout\,
	cout => \inst6|inst1|auto_generated|counter_comb_bita7~COUT\);

-- Location: FF_X12_Y13_N23
\inst6|inst1|auto_generated|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|inst1|auto_generated|counter_comb_bita7~combout\,
	asdata => \~GND~combout\,
	sload => \inst6|inst1|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|auto_generated|counter_reg_bit\(7));

-- Location: LCCOMB_X12_Y13_N6
\inst6|inst1|auto_generated|cmpr1|aneb_result_wire[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|auto_generated|cmpr1|aneb_result_wire[0]~5_combout\ = (!\inst6|inst1|auto_generated|counter_reg_bit\(5) & (\inst6|inst1|auto_generated|counter_reg_bit\(4) & (!\inst6|inst1|auto_generated|counter_reg_bit\(7) & 
-- !\inst6|inst1|auto_generated|counter_reg_bit\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|auto_generated|counter_reg_bit\(5),
	datab => \inst6|inst1|auto_generated|counter_reg_bit\(4),
	datac => \inst6|inst1|auto_generated|counter_reg_bit\(7),
	datad => \inst6|inst1|auto_generated|counter_reg_bit\(6),
	combout => \inst6|inst1|auto_generated|cmpr1|aneb_result_wire[0]~5_combout\);

-- Location: LCCOMB_X12_Y13_N24
\inst6|inst1|auto_generated|counter_comb_bita8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|auto_generated|counter_comb_bita8~combout\ = (\inst6|inst1|auto_generated|counter_reg_bit\(8) & (\inst6|inst1|auto_generated|counter_comb_bita7~COUT\ $ (GND))) # (!\inst6|inst1|auto_generated|counter_reg_bit\(8) & 
-- (!\inst6|inst1|auto_generated|counter_comb_bita7~COUT\ & VCC))
-- \inst6|inst1|auto_generated|counter_comb_bita8~COUT\ = CARRY((\inst6|inst1|auto_generated|counter_reg_bit\(8) & !\inst6|inst1|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst1|auto_generated|counter_reg_bit\(8),
	datad => VCC,
	cin => \inst6|inst1|auto_generated|counter_comb_bita7~COUT\,
	combout => \inst6|inst1|auto_generated|counter_comb_bita8~combout\,
	cout => \inst6|inst1|auto_generated|counter_comb_bita8~COUT\);

-- Location: FF_X12_Y13_N25
\inst6|inst1|auto_generated|counter_reg_bit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|inst1|auto_generated|counter_comb_bita8~combout\,
	asdata => \~GND~combout\,
	sload => \inst6|inst1|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|auto_generated|counter_reg_bit\(8));

-- Location: LCCOMB_X12_Y13_N26
\inst6|inst1|auto_generated|counter_comb_bita9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|auto_generated|counter_comb_bita9~combout\ = (\inst6|inst1|auto_generated|counter_reg_bit\(9) & (!\inst6|inst1|auto_generated|counter_comb_bita8~COUT\)) # (!\inst6|inst1|auto_generated|counter_reg_bit\(9) & 
-- ((\inst6|inst1|auto_generated|counter_comb_bita8~COUT\) # (GND)))
-- \inst6|inst1|auto_generated|counter_comb_bita9~COUT\ = CARRY((!\inst6|inst1|auto_generated|counter_comb_bita8~COUT\) # (!\inst6|inst1|auto_generated|counter_reg_bit\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|auto_generated|counter_reg_bit\(9),
	datad => VCC,
	cin => \inst6|inst1|auto_generated|counter_comb_bita8~COUT\,
	combout => \inst6|inst1|auto_generated|counter_comb_bita9~combout\,
	cout => \inst6|inst1|auto_generated|counter_comb_bita9~COUT\);

-- Location: FF_X12_Y13_N27
\inst6|inst1|auto_generated|counter_reg_bit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|inst1|auto_generated|counter_comb_bita9~combout\,
	asdata => \~GND~combout\,
	sload => \inst6|inst1|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|auto_generated|counter_reg_bit\(9));

-- Location: LCCOMB_X12_Y13_N28
\inst6|inst1|auto_generated|counter_comb_bita10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|auto_generated|counter_comb_bita10~combout\ = (\inst6|inst1|auto_generated|counter_reg_bit\(10) & (\inst6|inst1|auto_generated|counter_comb_bita9~COUT\ $ (GND))) # (!\inst6|inst1|auto_generated|counter_reg_bit\(10) & 
-- (!\inst6|inst1|auto_generated|counter_comb_bita9~COUT\ & VCC))
-- \inst6|inst1|auto_generated|counter_comb_bita10~COUT\ = CARRY((\inst6|inst1|auto_generated|counter_reg_bit\(10) & !\inst6|inst1|auto_generated|counter_comb_bita9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst1|auto_generated|counter_reg_bit\(10),
	datad => VCC,
	cin => \inst6|inst1|auto_generated|counter_comb_bita9~COUT\,
	combout => \inst6|inst1|auto_generated|counter_comb_bita10~combout\,
	cout => \inst6|inst1|auto_generated|counter_comb_bita10~COUT\);

-- Location: FF_X12_Y13_N29
\inst6|inst1|auto_generated|counter_reg_bit[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|inst1|auto_generated|counter_comb_bita10~combout\,
	asdata => \~GND~combout\,
	sload => \inst6|inst1|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|auto_generated|counter_reg_bit\(10));

-- Location: LCCOMB_X12_Y13_N30
\inst6|inst1|auto_generated|counter_comb_bita11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|auto_generated|counter_comb_bita11~combout\ = (\inst6|inst1|auto_generated|counter_reg_bit\(11) & (!\inst6|inst1|auto_generated|counter_comb_bita10~COUT\)) # (!\inst6|inst1|auto_generated|counter_reg_bit\(11) & 
-- ((\inst6|inst1|auto_generated|counter_comb_bita10~COUT\) # (GND)))
-- \inst6|inst1|auto_generated|counter_comb_bita11~COUT\ = CARRY((!\inst6|inst1|auto_generated|counter_comb_bita10~COUT\) # (!\inst6|inst1|auto_generated|counter_reg_bit\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|auto_generated|counter_reg_bit\(11),
	datad => VCC,
	cin => \inst6|inst1|auto_generated|counter_comb_bita10~COUT\,
	combout => \inst6|inst1|auto_generated|counter_comb_bita11~combout\,
	cout => \inst6|inst1|auto_generated|counter_comb_bita11~COUT\);

-- Location: FF_X12_Y13_N31
\inst6|inst1|auto_generated|counter_reg_bit[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|inst1|auto_generated|counter_comb_bita11~combout\,
	asdata => \~GND~combout\,
	sload => \inst6|inst1|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|auto_generated|counter_reg_bit\(11));

-- Location: LCCOMB_X12_Y12_N0
\inst6|inst1|auto_generated|counter_comb_bita12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|auto_generated|counter_comb_bita12~combout\ = (\inst6|inst1|auto_generated|counter_reg_bit\(12) & (\inst6|inst1|auto_generated|counter_comb_bita11~COUT\ $ (GND))) # (!\inst6|inst1|auto_generated|counter_reg_bit\(12) & 
-- (!\inst6|inst1|auto_generated|counter_comb_bita11~COUT\ & VCC))
-- \inst6|inst1|auto_generated|counter_comb_bita12~COUT\ = CARRY((\inst6|inst1|auto_generated|counter_reg_bit\(12) & !\inst6|inst1|auto_generated|counter_comb_bita11~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst1|auto_generated|counter_reg_bit\(12),
	datad => VCC,
	cin => \inst6|inst1|auto_generated|counter_comb_bita11~COUT\,
	combout => \inst6|inst1|auto_generated|counter_comb_bita12~combout\,
	cout => \inst6|inst1|auto_generated|counter_comb_bita12~COUT\);

-- Location: FF_X12_Y12_N1
\inst6|inst1|auto_generated|counter_reg_bit[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|inst1|auto_generated|counter_comb_bita12~combout\,
	asdata => \~GND~combout\,
	sload => \inst6|inst1|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|auto_generated|counter_reg_bit\(12));

-- Location: LCCOMB_X12_Y12_N2
\inst6|inst1|auto_generated|counter_comb_bita13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|auto_generated|counter_comb_bita13~combout\ = (\inst6|inst1|auto_generated|counter_reg_bit\(13) & (!\inst6|inst1|auto_generated|counter_comb_bita12~COUT\)) # (!\inst6|inst1|auto_generated|counter_reg_bit\(13) & 
-- ((\inst6|inst1|auto_generated|counter_comb_bita12~COUT\) # (GND)))
-- \inst6|inst1|auto_generated|counter_comb_bita13~COUT\ = CARRY((!\inst6|inst1|auto_generated|counter_comb_bita12~COUT\) # (!\inst6|inst1|auto_generated|counter_reg_bit\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst1|auto_generated|counter_reg_bit\(13),
	datad => VCC,
	cin => \inst6|inst1|auto_generated|counter_comb_bita12~COUT\,
	combout => \inst6|inst1|auto_generated|counter_comb_bita13~combout\,
	cout => \inst6|inst1|auto_generated|counter_comb_bita13~COUT\);

-- Location: FF_X12_Y12_N3
\inst6|inst1|auto_generated|counter_reg_bit[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|inst1|auto_generated|counter_comb_bita13~combout\,
	asdata => \~GND~combout\,
	sload => \inst6|inst1|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|auto_generated|counter_reg_bit\(13));

-- Location: LCCOMB_X12_Y12_N4
\inst6|inst1|auto_generated|counter_comb_bita14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|auto_generated|counter_comb_bita14~combout\ = (\inst6|inst1|auto_generated|counter_reg_bit\(14) & (\inst6|inst1|auto_generated|counter_comb_bita13~COUT\ $ (GND))) # (!\inst6|inst1|auto_generated|counter_reg_bit\(14) & 
-- (!\inst6|inst1|auto_generated|counter_comb_bita13~COUT\ & VCC))
-- \inst6|inst1|auto_generated|counter_comb_bita14~COUT\ = CARRY((\inst6|inst1|auto_generated|counter_reg_bit\(14) & !\inst6|inst1|auto_generated|counter_comb_bita13~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst1|auto_generated|counter_reg_bit\(14),
	datad => VCC,
	cin => \inst6|inst1|auto_generated|counter_comb_bita13~COUT\,
	combout => \inst6|inst1|auto_generated|counter_comb_bita14~combout\,
	cout => \inst6|inst1|auto_generated|counter_comb_bita14~COUT\);

-- Location: FF_X12_Y12_N5
\inst6|inst1|auto_generated|counter_reg_bit[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|inst1|auto_generated|counter_comb_bita14~combout\,
	asdata => \~GND~combout\,
	sload => \inst6|inst1|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|auto_generated|counter_reg_bit\(14));

-- Location: LCCOMB_X12_Y12_N6
\inst6|inst1|auto_generated|counter_comb_bita15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|auto_generated|counter_comb_bita15~combout\ = (\inst6|inst1|auto_generated|counter_reg_bit\(15) & (!\inst6|inst1|auto_generated|counter_comb_bita14~COUT\)) # (!\inst6|inst1|auto_generated|counter_reg_bit\(15) & 
-- ((\inst6|inst1|auto_generated|counter_comb_bita14~COUT\) # (GND)))
-- \inst6|inst1|auto_generated|counter_comb_bita15~COUT\ = CARRY((!\inst6|inst1|auto_generated|counter_comb_bita14~COUT\) # (!\inst6|inst1|auto_generated|counter_reg_bit\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|auto_generated|counter_reg_bit\(15),
	datad => VCC,
	cin => \inst6|inst1|auto_generated|counter_comb_bita14~COUT\,
	combout => \inst6|inst1|auto_generated|counter_comb_bita15~combout\,
	cout => \inst6|inst1|auto_generated|counter_comb_bita15~COUT\);

-- Location: FF_X12_Y12_N7
\inst6|inst1|auto_generated|counter_reg_bit[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|inst1|auto_generated|counter_comb_bita15~combout\,
	asdata => \~GND~combout\,
	sload => \inst6|inst1|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|auto_generated|counter_reg_bit\(15));

-- Location: LCCOMB_X12_Y12_N8
\inst6|inst1|auto_generated|counter_comb_bita16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|auto_generated|counter_comb_bita16~combout\ = (\inst6|inst1|auto_generated|counter_reg_bit\(16) & (\inst6|inst1|auto_generated|counter_comb_bita15~COUT\ $ (GND))) # (!\inst6|inst1|auto_generated|counter_reg_bit\(16) & 
-- (!\inst6|inst1|auto_generated|counter_comb_bita15~COUT\ & VCC))
-- \inst6|inst1|auto_generated|counter_comb_bita16~COUT\ = CARRY((\inst6|inst1|auto_generated|counter_reg_bit\(16) & !\inst6|inst1|auto_generated|counter_comb_bita15~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst1|auto_generated|counter_reg_bit\(16),
	datad => VCC,
	cin => \inst6|inst1|auto_generated|counter_comb_bita15~COUT\,
	combout => \inst6|inst1|auto_generated|counter_comb_bita16~combout\,
	cout => \inst6|inst1|auto_generated|counter_comb_bita16~COUT\);

-- Location: FF_X12_Y12_N9
\inst6|inst1|auto_generated|counter_reg_bit[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|inst1|auto_generated|counter_comb_bita16~combout\,
	asdata => \~GND~combout\,
	sload => \inst6|inst1|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|auto_generated|counter_reg_bit\(16));

-- Location: LCCOMB_X12_Y12_N10
\inst6|inst1|auto_generated|counter_comb_bita17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|auto_generated|counter_comb_bita17~combout\ = (\inst6|inst1|auto_generated|counter_reg_bit\(17) & (!\inst6|inst1|auto_generated|counter_comb_bita16~COUT\)) # (!\inst6|inst1|auto_generated|counter_reg_bit\(17) & 
-- ((\inst6|inst1|auto_generated|counter_comb_bita16~COUT\) # (GND)))
-- \inst6|inst1|auto_generated|counter_comb_bita17~COUT\ = CARRY((!\inst6|inst1|auto_generated|counter_comb_bita16~COUT\) # (!\inst6|inst1|auto_generated|counter_reg_bit\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|auto_generated|counter_reg_bit\(17),
	datad => VCC,
	cin => \inst6|inst1|auto_generated|counter_comb_bita16~COUT\,
	combout => \inst6|inst1|auto_generated|counter_comb_bita17~combout\,
	cout => \inst6|inst1|auto_generated|counter_comb_bita17~COUT\);

-- Location: FF_X12_Y12_N11
\inst6|inst1|auto_generated|counter_reg_bit[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|inst1|auto_generated|counter_comb_bita17~combout\,
	asdata => \~GND~combout\,
	sload => \inst6|inst1|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|auto_generated|counter_reg_bit\(17));

-- Location: LCCOMB_X12_Y12_N12
\inst6|inst1|auto_generated|counter_comb_bita18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|auto_generated|counter_comb_bita18~combout\ = (\inst6|inst1|auto_generated|counter_reg_bit\(18) & (\inst6|inst1|auto_generated|counter_comb_bita17~COUT\ $ (GND))) # (!\inst6|inst1|auto_generated|counter_reg_bit\(18) & 
-- (!\inst6|inst1|auto_generated|counter_comb_bita17~COUT\ & VCC))
-- \inst6|inst1|auto_generated|counter_comb_bita18~COUT\ = CARRY((\inst6|inst1|auto_generated|counter_reg_bit\(18) & !\inst6|inst1|auto_generated|counter_comb_bita17~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|auto_generated|counter_reg_bit\(18),
	datad => VCC,
	cin => \inst6|inst1|auto_generated|counter_comb_bita17~COUT\,
	combout => \inst6|inst1|auto_generated|counter_comb_bita18~combout\,
	cout => \inst6|inst1|auto_generated|counter_comb_bita18~COUT\);

-- Location: FF_X12_Y12_N13
\inst6|inst1|auto_generated|counter_reg_bit[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|inst1|auto_generated|counter_comb_bita18~combout\,
	asdata => \~GND~combout\,
	sload => \inst6|inst1|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|auto_generated|counter_reg_bit\(18));

-- Location: LCCOMB_X12_Y12_N14
\inst6|inst1|auto_generated|counter_comb_bita19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|auto_generated|counter_comb_bita19~combout\ = (\inst6|inst1|auto_generated|counter_reg_bit\(19) & (!\inst6|inst1|auto_generated|counter_comb_bita18~COUT\)) # (!\inst6|inst1|auto_generated|counter_reg_bit\(19) & 
-- ((\inst6|inst1|auto_generated|counter_comb_bita18~COUT\) # (GND)))
-- \inst6|inst1|auto_generated|counter_comb_bita19~COUT\ = CARRY((!\inst6|inst1|auto_generated|counter_comb_bita18~COUT\) # (!\inst6|inst1|auto_generated|counter_reg_bit\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst1|auto_generated|counter_reg_bit\(19),
	datad => VCC,
	cin => \inst6|inst1|auto_generated|counter_comb_bita18~COUT\,
	combout => \inst6|inst1|auto_generated|counter_comb_bita19~combout\,
	cout => \inst6|inst1|auto_generated|counter_comb_bita19~COUT\);

-- Location: FF_X12_Y12_N15
\inst6|inst1|auto_generated|counter_reg_bit[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|inst1|auto_generated|counter_comb_bita19~combout\,
	asdata => \~GND~combout\,
	sload => \inst6|inst1|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|auto_generated|counter_reg_bit\(19));

-- Location: LCCOMB_X13_Y12_N6
\inst6|inst1|auto_generated|cmpr1|aneb_result_wire[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\ = (\inst6|inst1|auto_generated|counter_reg_bit\(18) & (!\inst6|inst1|auto_generated|counter_reg_bit\(16) & (\inst6|inst1|auto_generated|counter_reg_bit\(17) & 
-- \inst6|inst1|auto_generated|counter_reg_bit\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|auto_generated|counter_reg_bit\(18),
	datab => \inst6|inst1|auto_generated|counter_reg_bit\(16),
	datac => \inst6|inst1|auto_generated|counter_reg_bit\(17),
	datad => \inst6|inst1|auto_generated|counter_reg_bit\(19),
	combout => \inst6|inst1|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\);

-- Location: LCCOMB_X12_Y12_N30
\inst6|inst1|auto_generated|cmpr1|aneb_result_wire[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\ = (\inst6|inst1|auto_generated|counter_reg_bit\(15) & (\inst6|inst1|auto_generated|counter_reg_bit\(13) & (!\inst6|inst1|auto_generated|counter_reg_bit\(14) & 
-- \inst6|inst1|auto_generated|counter_reg_bit\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|auto_generated|counter_reg_bit\(15),
	datab => \inst6|inst1|auto_generated|counter_reg_bit\(13),
	datac => \inst6|inst1|auto_generated|counter_reg_bit\(14),
	datad => \inst6|inst1|auto_generated|counter_reg_bit\(12),
	combout => \inst6|inst1|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\);

-- Location: LCCOMB_X12_Y12_N16
\inst6|inst1|auto_generated|counter_comb_bita20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|auto_generated|counter_comb_bita20~combout\ = (\inst6|inst1|auto_generated|counter_reg_bit\(20) & (\inst6|inst1|auto_generated|counter_comb_bita19~COUT\ $ (GND))) # (!\inst6|inst1|auto_generated|counter_reg_bit\(20) & 
-- (!\inst6|inst1|auto_generated|counter_comb_bita19~COUT\ & VCC))
-- \inst6|inst1|auto_generated|counter_comb_bita20~COUT\ = CARRY((\inst6|inst1|auto_generated|counter_reg_bit\(20) & !\inst6|inst1|auto_generated|counter_comb_bita19~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst1|auto_generated|counter_reg_bit\(20),
	datad => VCC,
	cin => \inst6|inst1|auto_generated|counter_comb_bita19~COUT\,
	combout => \inst6|inst1|auto_generated|counter_comb_bita20~combout\,
	cout => \inst6|inst1|auto_generated|counter_comb_bita20~COUT\);

-- Location: FF_X12_Y12_N17
\inst6|inst1|auto_generated|counter_reg_bit[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|inst1|auto_generated|counter_comb_bita20~combout\,
	asdata => \~GND~combout\,
	sload => \inst6|inst1|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|auto_generated|counter_reg_bit\(20));

-- Location: LCCOMB_X12_Y12_N18
\inst6|inst1|auto_generated|counter_comb_bita21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|auto_generated|counter_comb_bita21~combout\ = (\inst6|inst1|auto_generated|counter_reg_bit\(21) & (!\inst6|inst1|auto_generated|counter_comb_bita20~COUT\)) # (!\inst6|inst1|auto_generated|counter_reg_bit\(21) & 
-- ((\inst6|inst1|auto_generated|counter_comb_bita20~COUT\) # (GND)))
-- \inst6|inst1|auto_generated|counter_comb_bita21~COUT\ = CARRY((!\inst6|inst1|auto_generated|counter_comb_bita20~COUT\) # (!\inst6|inst1|auto_generated|counter_reg_bit\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst1|auto_generated|counter_reg_bit\(21),
	datad => VCC,
	cin => \inst6|inst1|auto_generated|counter_comb_bita20~COUT\,
	combout => \inst6|inst1|auto_generated|counter_comb_bita21~combout\,
	cout => \inst6|inst1|auto_generated|counter_comb_bita21~COUT\);

-- Location: FF_X12_Y12_N19
\inst6|inst1|auto_generated|counter_reg_bit[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|inst1|auto_generated|counter_comb_bita21~combout\,
	asdata => \~GND~combout\,
	sload => \inst6|inst1|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|auto_generated|counter_reg_bit\(21));

-- Location: LCCOMB_X12_Y12_N20
\inst6|inst1|auto_generated|counter_comb_bita22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|auto_generated|counter_comb_bita22~combout\ = (\inst6|inst1|auto_generated|counter_reg_bit\(22) & (\inst6|inst1|auto_generated|counter_comb_bita21~COUT\ $ (GND))) # (!\inst6|inst1|auto_generated|counter_reg_bit\(22) & 
-- (!\inst6|inst1|auto_generated|counter_comb_bita21~COUT\ & VCC))
-- \inst6|inst1|auto_generated|counter_comb_bita22~COUT\ = CARRY((\inst6|inst1|auto_generated|counter_reg_bit\(22) & !\inst6|inst1|auto_generated|counter_comb_bita21~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst1|auto_generated|counter_reg_bit\(22),
	datad => VCC,
	cin => \inst6|inst1|auto_generated|counter_comb_bita21~COUT\,
	combout => \inst6|inst1|auto_generated|counter_comb_bita22~combout\,
	cout => \inst6|inst1|auto_generated|counter_comb_bita22~COUT\);

-- Location: FF_X12_Y12_N21
\inst6|inst1|auto_generated|counter_reg_bit[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|inst1|auto_generated|counter_comb_bita22~combout\,
	asdata => \~GND~combout\,
	sload => \inst6|inst1|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|auto_generated|counter_reg_bit\(22));

-- Location: LCCOMB_X12_Y12_N22
\inst6|inst1|auto_generated|counter_comb_bita23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|auto_generated|counter_comb_bita23~combout\ = (\inst6|inst1|auto_generated|counter_reg_bit\(23) & (!\inst6|inst1|auto_generated|counter_comb_bita22~COUT\)) # (!\inst6|inst1|auto_generated|counter_reg_bit\(23) & 
-- ((\inst6|inst1|auto_generated|counter_comb_bita22~COUT\) # (GND)))
-- \inst6|inst1|auto_generated|counter_comb_bita23~COUT\ = CARRY((!\inst6|inst1|auto_generated|counter_comb_bita22~COUT\) # (!\inst6|inst1|auto_generated|counter_reg_bit\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|auto_generated|counter_reg_bit\(23),
	datad => VCC,
	cin => \inst6|inst1|auto_generated|counter_comb_bita22~COUT\,
	combout => \inst6|inst1|auto_generated|counter_comb_bita23~combout\,
	cout => \inst6|inst1|auto_generated|counter_comb_bita23~COUT\);

-- Location: FF_X12_Y12_N23
\inst6|inst1|auto_generated|counter_reg_bit[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|inst1|auto_generated|counter_comb_bita23~combout\,
	asdata => \~GND~combout\,
	sload => \inst6|inst1|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|auto_generated|counter_reg_bit\(23));

-- Location: LCCOMB_X13_Y12_N8
\inst6|inst1|auto_generated|cmpr1|aneb_result_wire[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ = (\inst6|inst1|auto_generated|counter_reg_bit\(20) & (\inst6|inst1|auto_generated|counter_reg_bit\(21) & (\inst6|inst1|auto_generated|counter_reg_bit\(23) & 
-- !\inst6|inst1|auto_generated|counter_reg_bit\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|auto_generated|counter_reg_bit\(20),
	datab => \inst6|inst1|auto_generated|counter_reg_bit\(21),
	datac => \inst6|inst1|auto_generated|counter_reg_bit\(23),
	datad => \inst6|inst1|auto_generated|counter_reg_bit\(22),
	combout => \inst6|inst1|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X12_Y13_N4
\inst6|inst1|auto_generated|cmpr1|aneb_result_wire[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|auto_generated|cmpr1|aneb_result_wire[0]~3_combout\ = (!\inst6|inst1|auto_generated|counter_reg_bit\(9) & (!\inst6|inst1|auto_generated|counter_reg_bit\(8) & (\inst6|inst1|auto_generated|counter_reg_bit\(11) & 
-- \inst6|inst1|auto_generated|counter_reg_bit\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|auto_generated|counter_reg_bit\(9),
	datab => \inst6|inst1|auto_generated|counter_reg_bit\(8),
	datac => \inst6|inst1|auto_generated|counter_reg_bit\(11),
	datad => \inst6|inst1|auto_generated|counter_reg_bit\(10),
	combout => \inst6|inst1|auto_generated|cmpr1|aneb_result_wire[0]~3_combout\);

-- Location: LCCOMB_X13_Y12_N24
\inst6|inst1|auto_generated|cmpr1|aneb_result_wire[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|auto_generated|cmpr1|aneb_result_wire[0]~4_combout\ = (\inst6|inst1|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\ & (\inst6|inst1|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\ & 
-- (\inst6|inst1|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ & \inst6|inst1|auto_generated|cmpr1|aneb_result_wire[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\,
	datab => \inst6|inst1|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\,
	datac => \inst6|inst1|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\,
	datad => \inst6|inst1|auto_generated|cmpr1|aneb_result_wire[0]~3_combout\,
	combout => \inst6|inst1|auto_generated|cmpr1|aneb_result_wire[0]~4_combout\);

-- Location: LCCOMB_X12_Y13_N0
\inst6|inst1|auto_generated|cmpr1|aneb_result_wire[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|auto_generated|cmpr1|aneb_result_wire[0]~6_combout\ = (\inst6|inst1|auto_generated|counter_reg_bit\(3) & (\inst6|inst1|auto_generated|counter_reg_bit\(1) & (\inst6|inst1|auto_generated|counter_reg_bit\(2) & 
-- \inst6|inst1|auto_generated|counter_reg_bit\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|auto_generated|counter_reg_bit\(3),
	datab => \inst6|inst1|auto_generated|counter_reg_bit\(1),
	datac => \inst6|inst1|auto_generated|counter_reg_bit\(2),
	datad => \inst6|inst1|auto_generated|counter_reg_bit\(0),
	combout => \inst6|inst1|auto_generated|cmpr1|aneb_result_wire[0]~6_combout\);

-- Location: LCCOMB_X12_Y12_N24
\inst6|inst1|auto_generated|counter_comb_bita23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|auto_generated|counter_comb_bita23~0_combout\ = !\inst6|inst1|auto_generated|counter_comb_bita23~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst6|inst1|auto_generated|counter_comb_bita23~COUT\,
	combout => \inst6|inst1|auto_generated|counter_comb_bita23~0_combout\);

-- Location: LCCOMB_X12_Y12_N28
\inst6|inst1|auto_generated|cout_actual\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|auto_generated|cout_actual~combout\ = (\inst6|inst1|auto_generated|counter_comb_bita23~0_combout\) # ((\inst6|inst1|auto_generated|cmpr1|aneb_result_wire[0]~5_combout\ & (\inst6|inst1|auto_generated|cmpr1|aneb_result_wire[0]~4_combout\ & 
-- \inst6|inst1|auto_generated|cmpr1|aneb_result_wire[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|auto_generated|cmpr1|aneb_result_wire[0]~5_combout\,
	datab => \inst6|inst1|auto_generated|cmpr1|aneb_result_wire[0]~4_combout\,
	datac => \inst6|inst1|auto_generated|cmpr1|aneb_result_wire[0]~6_combout\,
	datad => \inst6|inst1|auto_generated|counter_comb_bita23~0_combout\,
	combout => \inst6|inst1|auto_generated|cout_actual~combout\);

-- Location: LCCOMB_X12_Y12_N26
\inst6|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst2~0_combout\ = \inst6|inst2~q\ $ (\inst6|inst1|auto_generated|cout_actual~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst2~q\,
	datad => \inst6|inst1|auto_generated|cout_actual~combout\,
	combout => \inst6|inst2~0_combout\);

-- Location: FF_X12_Y12_N27
\inst6|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst6|inst2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst2~q\);

-- Location: LCCOMB_X12_Y16_N30
\ist10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist10~0_combout\ = (\key[1]~input_o\ & ((\inst6|inst2~q\))) # (!\key[1]~input_o\ & (\inst4|inst2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key[1]~input_o\,
	datab => \inst4|inst2~q\,
	datad => \inst6|inst2~q\,
	combout => \ist10~0_combout\);

-- Location: LCCOMB_X33_Y16_N4
inst1 : cycloneive_lcell_comb
-- Equation(s):
-- \inst1~combout\ = LCELL(\key[4]~input_o\ $ (((!\ist10~0_combout\) # (!\key[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key[2]~input_o\,
	datac => \ist10~0_combout\,
	datad => \key[4]~input_o\,
	combout => \inst1~combout\);

-- Location: LCCOMB_X33_Y16_N26
\ist22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist22~0_combout\ = !\ist22~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ist22~q\,
	combout => \ist22~0_combout\);

-- Location: LCCOMB_X32_Y16_N30
\ist72~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist72~0_combout\ = (\ist41~q\ & (\ist44~q\ & (\ist47~q\ & \ist31~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist41~q\,
	datab => \ist44~q\,
	datac => \ist47~q\,
	datad => \ist31~q\,
	combout => \ist72~0_combout\);

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

-- Location: LCCOMB_X32_Y16_N26
\ist81~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist81~0_combout\ = (!\ist34~q\ & (!\ist22~q\ & (!\ist28~q\ & !\key[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist34~q\,
	datab => \ist22~q\,
	datac => \ist28~q\,
	datad => \key[4]~input_o\,
	combout => \ist81~0_combout\);

-- Location: LCCOMB_X30_Y16_N16
\ist82~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist82~0_combout\ = (\ist38~q\ & (\ist50~q\ & !\ist25~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist38~q\,
	datac => \ist50~q\,
	datad => \ist25~q\,
	combout => \ist82~0_combout\);

-- Location: LCCOMB_X32_Y16_N6
ist82 : cycloneive_lcell_comb
-- Equation(s):
-- \ist82~combout\ = ((\ist72~0_combout\ & (\ist81~0_combout\ & \ist82~0_combout\))) # (!\key[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist72~0_combout\,
	datab => \key[3]~input_o\,
	datac => \ist81~0_combout\,
	datad => \ist82~0_combout\,
	combout => \ist82~combout\);

-- Location: FF_X33_Y16_N27
ist22 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1~combout\,
	d => \ist22~0_combout\,
	clrn => \ALT_INV_ist82~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ist22~q\);

-- Location: LCCOMB_X29_Y16_N30
ist51 : cycloneive_lcell_comb
-- Equation(s):
-- \ist51~combout\ = LCELL(\ist22~q\ $ (!\key[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ist22~q\,
	datad => \key[4]~input_o\,
	combout => \ist51~combout\);

-- Location: LCCOMB_X29_Y16_N14
\ist25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist25~0_combout\ = !\ist25~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ist25~q\,
	combout => \ist25~0_combout\);

-- Location: FF_X29_Y16_N15
ist25 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ist51~combout\,
	d => \ist25~0_combout\,
	clrn => \ALT_INV_ist82~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ist25~q\);

-- Location: LCCOMB_X29_Y16_N28
ist52 : cycloneive_lcell_comb
-- Equation(s):
-- \ist52~combout\ = LCELL(\ist25~q\ $ (!\key[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ist25~q\,
	datad => \key[4]~input_o\,
	combout => \ist52~combout\);

-- Location: LCCOMB_X29_Y16_N0
\ist28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist28~0_combout\ = !\ist28~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ist28~q\,
	combout => \ist28~0_combout\);

-- Location: FF_X29_Y16_N1
ist28 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ist52~combout\,
	d => \ist28~0_combout\,
	clrn => \ALT_INV_ist82~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ist28~q\);

-- Location: LCCOMB_X31_Y16_N24
ist53 : cycloneive_lcell_comb
-- Equation(s):
-- \ist53~combout\ = LCELL(\key[4]~input_o\ $ (!\ist28~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key[4]~input_o\,
	datad => \ist28~q\,
	combout => \ist53~combout\);

-- Location: LCCOMB_X31_Y16_N20
\ist31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist31~0_combout\ = !\ist31~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ist31~q\,
	combout => \ist31~0_combout\);

-- Location: LCCOMB_X32_Y16_N10
\ist72~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist72~1_combout\ = (\ist34~q\ & (\ist22~q\ & (\ist28~q\ & \key[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist34~q\,
	datab => \ist22~q\,
	datac => \ist28~q\,
	datad => \key[4]~input_o\,
	combout => \ist72~1_combout\);

-- Location: LCCOMB_X32_Y16_N20
\ist500~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist500~0_combout\ = (\ist72~0_combout\ & ((\ist25~q\ & ((\ist72~1_combout\))) # (!\ist25~q\ & (\ist81~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist72~0_combout\,
	datab => \ist25~q\,
	datac => \ist81~0_combout\,
	datad => \ist72~1_combout\,
	combout => \ist500~0_combout\);

-- Location: LCCOMB_X32_Y16_N28
\ist500~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist500~1_combout\ = ((\ist38~q\ & (\ist50~q\ & \ist500~0_combout\))) # (!\key[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist38~q\,
	datab => \key[3]~input_o\,
	datac => \ist50~q\,
	datad => \ist500~0_combout\,
	combout => \ist500~1_combout\);

-- Location: FF_X31_Y16_N21
ist31 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ist53~combout\,
	d => \ist31~0_combout\,
	clrn => \ALT_INV_ist500~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ist31~q\);

-- Location: LCCOMB_X31_Y16_N26
ist54 : cycloneive_lcell_comb
-- Equation(s):
-- \ist54~combout\ = LCELL(\key[4]~input_o\ $ (!\ist31~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key[4]~input_o\,
	datad => \ist31~q\,
	combout => \ist54~combout\);

-- Location: LCCOMB_X31_Y16_N0
\ist34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist34~0_combout\ = !\ist34~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ist34~q\,
	combout => \ist34~0_combout\);

-- Location: FF_X31_Y16_N1
ist34 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ist54~combout\,
	d => \ist34~0_combout\,
	clrn => \ALT_INV_ist500~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ist34~q\);

-- Location: LCCOMB_X30_Y16_N24
ist55 : cycloneive_lcell_comb
-- Equation(s):
-- \ist55~combout\ = LCELL(\ist34~q\ $ (!\key[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ist34~q\,
	datad => \key[4]~input_o\,
	combout => \ist55~combout\);

-- Location: LCCOMB_X30_Y16_N26
\ist38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist38~0_combout\ = !\ist38~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ist38~q\,
	combout => \ist38~0_combout\);

-- Location: FF_X30_Y16_N27
ist38 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ist55~combout\,
	d => \ist38~0_combout\,
	clrn => \ALT_INV_ist82~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ist38~q\);

-- Location: LCCOMB_X32_Y16_N4
ist56 : cycloneive_lcell_comb
-- Equation(s):
-- \ist56~combout\ = LCELL(\key[4]~input_o\ $ (!\ist38~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key[4]~input_o\,
	datad => \ist38~q\,
	combout => \ist56~combout\);

-- Location: LCCOMB_X32_Y16_N12
\ist41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist41~0_combout\ = !\ist41~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ist41~q\,
	combout => \ist41~0_combout\);

-- Location: FF_X32_Y16_N13
ist41 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ist56~combout\,
	d => \ist41~0_combout\,
	clrn => \ALT_INV_ist82~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ist41~q\);

-- Location: LCCOMB_X32_Y16_N8
ist57 : cycloneive_lcell_comb
-- Equation(s):
-- \ist57~combout\ = LCELL(\key[4]~input_o\ $ (!\ist41~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key[4]~input_o\,
	datad => \ist41~q\,
	combout => \ist57~combout\);

-- Location: LCCOMB_X32_Y16_N16
\ist44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist44~0_combout\ = !\ist44~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ist44~q\,
	combout => \ist44~0_combout\);

-- Location: FF_X32_Y16_N17
ist44 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ist57~combout\,
	d => \ist44~0_combout\,
	clrn => \ALT_INV_ist82~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ist44~q\);

-- Location: LCCOMB_X33_Y16_N10
ist58 : cycloneive_lcell_comb
-- Equation(s):
-- \ist58~combout\ = LCELL(\ist44~q\ $ (!\key[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ist44~q\,
	datad => \key[4]~input_o\,
	combout => \ist58~combout\);

-- Location: LCCOMB_X33_Y16_N28
\ist47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist47~0_combout\ = !\ist47~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ist47~q\,
	combout => \ist47~0_combout\);

-- Location: FF_X33_Y16_N29
ist47 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ist58~combout\,
	d => \ist47~0_combout\,
	clrn => \ALT_INV_ist82~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ist47~q\);

-- Location: LCCOMB_X33_Y16_N8
ist59 : cycloneive_lcell_comb
-- Equation(s):
-- \ist59~combout\ = LCELL(\key[4]~input_o\ $ (!\ist47~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key[4]~input_o\,
	datad => \ist47~q\,
	combout => \ist59~combout\);

-- Location: LCCOMB_X30_Y16_N22
\ist50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist50~0_combout\ = !\ist50~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ist50~q\,
	combout => \ist50~0_combout\);

-- Location: FF_X30_Y16_N23
ist50 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ist59~combout\,
	d => \ist50~0_combout\,
	clrn => \ALT_INV_ist82~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ist50~q\);

-- Location: LCCOMB_X33_Y16_N12
\ist150|auto_generated|divider|divider|op_5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist150|auto_generated|divider|divider|op_5~1_cout\ = CARRY(\ist38~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist38~q\,
	datad => VCC,
	cout => \ist150|auto_generated|divider|divider|op_5~1_cout\);

-- Location: LCCOMB_X33_Y16_N14
\ist150|auto_generated|divider|divider|op_5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist150|auto_generated|divider|divider|op_5~2_combout\ = (\ist41~q\ & (\ist150|auto_generated|divider|divider|op_5~1_cout\ & VCC)) # (!\ist41~q\ & (!\ist150|auto_generated|divider|divider|op_5~1_cout\))
-- \ist150|auto_generated|divider|divider|op_5~3\ = CARRY((!\ist41~q\ & !\ist150|auto_generated|divider|divider|op_5~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ist41~q\,
	datad => VCC,
	cin => \ist150|auto_generated|divider|divider|op_5~1_cout\,
	combout => \ist150|auto_generated|divider|divider|op_5~2_combout\,
	cout => \ist150|auto_generated|divider|divider|op_5~3\);

-- Location: LCCOMB_X33_Y16_N16
\ist150|auto_generated|divider|divider|op_5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist150|auto_generated|divider|divider|op_5~4_combout\ = (\ist44~q\ & ((GND) # (!\ist150|auto_generated|divider|divider|op_5~3\))) # (!\ist44~q\ & (\ist150|auto_generated|divider|divider|op_5~3\ $ (GND)))
-- \ist150|auto_generated|divider|divider|op_5~5\ = CARRY((\ist44~q\) # (!\ist150|auto_generated|divider|divider|op_5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ist44~q\,
	datad => VCC,
	cin => \ist150|auto_generated|divider|divider|op_5~3\,
	combout => \ist150|auto_generated|divider|divider|op_5~4_combout\,
	cout => \ist150|auto_generated|divider|divider|op_5~5\);

-- Location: LCCOMB_X33_Y16_N18
\ist150|auto_generated|divider|divider|op_5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist150|auto_generated|divider|divider|op_5~6_combout\ = (\ist47~q\ & (!\ist150|auto_generated|divider|divider|op_5~5\)) # (!\ist47~q\ & ((\ist150|auto_generated|divider|divider|op_5~5\) # (GND)))
-- \ist150|auto_generated|divider|divider|op_5~7\ = CARRY((!\ist150|auto_generated|divider|divider|op_5~5\) # (!\ist47~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ist47~q\,
	datad => VCC,
	cin => \ist150|auto_generated|divider|divider|op_5~5\,
	combout => \ist150|auto_generated|divider|divider|op_5~6_combout\,
	cout => \ist150|auto_generated|divider|divider|op_5~7\);

-- Location: LCCOMB_X33_Y16_N20
\ist150|auto_generated|divider|divider|op_5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist150|auto_generated|divider|divider|op_5~8_combout\ = (\ist50~q\ & (\ist150|auto_generated|divider|divider|op_5~7\ $ (GND))) # (!\ist50~q\ & (!\ist150|auto_generated|divider|divider|op_5~7\ & VCC))
-- \ist150|auto_generated|divider|divider|op_5~9\ = CARRY((\ist50~q\ & !\ist150|auto_generated|divider|divider|op_5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ist50~q\,
	datad => VCC,
	cin => \ist150|auto_generated|divider|divider|op_5~7\,
	combout => \ist150|auto_generated|divider|divider|op_5~8_combout\,
	cout => \ist150|auto_generated|divider|divider|op_5~9\);

-- Location: LCCOMB_X33_Y16_N22
\ist150|auto_generated|divider|divider|op_5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist150|auto_generated|divider|divider|op_5~10_combout\ = !\ist150|auto_generated|divider|divider|op_5~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \ist150|auto_generated|divider|divider|op_5~9\,
	combout => \ist150|auto_generated|divider|divider|op_5~10_combout\);

-- Location: LCCOMB_X32_Y16_N14
\ist150|auto_generated|divider|divider|StageOut[54]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist150|auto_generated|divider|divider|StageOut[54]~1_combout\ = (\ist150|auto_generated|divider|divider|op_5~10_combout\ & (\ist50~q\)) # (!\ist150|auto_generated|divider|divider|op_5~10_combout\ & 
-- ((\ist150|auto_generated|divider|divider|op_5~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist50~q\,
	datac => \ist150|auto_generated|divider|divider|op_5~8_combout\,
	datad => \ist150|auto_generated|divider|divider|op_5~10_combout\,
	combout => \ist150|auto_generated|divider|divider|StageOut[54]~1_combout\);

-- Location: LCCOMB_X32_Y16_N24
\ist150|auto_generated|divider|divider|StageOut[53]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist150|auto_generated|divider|divider|StageOut[53]~2_combout\ = (\ist150|auto_generated|divider|divider|op_5~10_combout\ & ((\ist47~q\))) # (!\ist150|auto_generated|divider|divider|op_5~10_combout\ & 
-- (\ist150|auto_generated|divider|divider|op_5~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ist150|auto_generated|divider|divider|op_5~10_combout\,
	datac => \ist150|auto_generated|divider|divider|op_5~6_combout\,
	datad => \ist47~q\,
	combout => \ist150|auto_generated|divider|divider|StageOut[53]~2_combout\);

-- Location: LCCOMB_X32_Y16_N18
\ist150|auto_generated|divider|divider|StageOut[52]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist150|auto_generated|divider|divider|StageOut[52]~3_combout\ = (\ist150|auto_generated|divider|divider|op_5~10_combout\ & (\ist44~q\)) # (!\ist150|auto_generated|divider|divider|op_5~10_combout\ & 
-- ((\ist150|auto_generated|divider|divider|op_5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ist150|auto_generated|divider|divider|op_5~10_combout\,
	datac => \ist44~q\,
	datad => \ist150|auto_generated|divider|divider|op_5~4_combout\,
	combout => \ist150|auto_generated|divider|divider|StageOut[52]~3_combout\);

-- Location: LCCOMB_X32_Y16_N2
\ist150|auto_generated|divider|divider|StageOut[51]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist150|auto_generated|divider|divider|StageOut[51]~0_combout\ = (\ist150|auto_generated|divider|divider|op_5~10_combout\ & (\ist41~q\)) # (!\ist150|auto_generated|divider|divider|op_5~10_combout\ & 
-- ((\ist150|auto_generated|divider|divider|op_5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist41~q\,
	datac => \ist150|auto_generated|divider|divider|op_5~2_combout\,
	datad => \ist150|auto_generated|divider|divider|op_5~10_combout\,
	combout => \ist150|auto_generated|divider|divider|StageOut[51]~0_combout\);

-- Location: LCCOMB_X31_Y16_N6
\ist150|auto_generated|divider|divider|op_6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist150|auto_generated|divider|divider|op_6~1_cout\ = CARRY(\ist34~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ist34~q\,
	datad => VCC,
	cout => \ist150|auto_generated|divider|divider|op_6~1_cout\);

-- Location: LCCOMB_X31_Y16_N8
\ist150|auto_generated|divider|divider|op_6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist150|auto_generated|divider|divider|op_6~2_combout\ = (\ist150|auto_generated|divider|divider|op_6~1_cout\ & ((\ist38~q\ $ (!\ist150|auto_generated|divider|divider|op_5~10_combout\)))) # (!\ist150|auto_generated|divider|divider|op_6~1_cout\ & 
-- (\ist38~q\ $ ((\ist150|auto_generated|divider|divider|op_5~10_combout\))))
-- \ist150|auto_generated|divider|divider|op_6~3\ = CARRY((!\ist150|auto_generated|divider|divider|op_6~1_cout\ & (\ist38~q\ $ (\ist150|auto_generated|divider|divider|op_5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ist38~q\,
	datab => \ist150|auto_generated|divider|divider|op_5~10_combout\,
	datad => VCC,
	cin => \ist150|auto_generated|divider|divider|op_6~1_cout\,
	combout => \ist150|auto_generated|divider|divider|op_6~2_combout\,
	cout => \ist150|auto_generated|divider|divider|op_6~3\);

-- Location: LCCOMB_X31_Y16_N10
\ist150|auto_generated|divider|divider|op_6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist150|auto_generated|divider|divider|op_6~4_combout\ = (\ist150|auto_generated|divider|divider|StageOut[51]~0_combout\ & ((GND) # (!\ist150|auto_generated|divider|divider|op_6~3\))) # (!\ist150|auto_generated|divider|divider|StageOut[51]~0_combout\ & 
-- (\ist150|auto_generated|divider|divider|op_6~3\ $ (GND)))
-- \ist150|auto_generated|divider|divider|op_6~5\ = CARRY((\ist150|auto_generated|divider|divider|StageOut[51]~0_combout\) # (!\ist150|auto_generated|divider|divider|op_6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ist150|auto_generated|divider|divider|StageOut[51]~0_combout\,
	datad => VCC,
	cin => \ist150|auto_generated|divider|divider|op_6~3\,
	combout => \ist150|auto_generated|divider|divider|op_6~4_combout\,
	cout => \ist150|auto_generated|divider|divider|op_6~5\);

-- Location: LCCOMB_X31_Y16_N12
\ist150|auto_generated|divider|divider|op_6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist150|auto_generated|divider|divider|op_6~6_combout\ = (\ist150|auto_generated|divider|divider|StageOut[52]~3_combout\ & (!\ist150|auto_generated|divider|divider|op_6~5\)) # (!\ist150|auto_generated|divider|divider|StageOut[52]~3_combout\ & 
-- ((\ist150|auto_generated|divider|divider|op_6~5\) # (GND)))
-- \ist150|auto_generated|divider|divider|op_6~7\ = CARRY((!\ist150|auto_generated|divider|divider|op_6~5\) # (!\ist150|auto_generated|divider|divider|StageOut[52]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ist150|auto_generated|divider|divider|StageOut[52]~3_combout\,
	datad => VCC,
	cin => \ist150|auto_generated|divider|divider|op_6~5\,
	combout => \ist150|auto_generated|divider|divider|op_6~6_combout\,
	cout => \ist150|auto_generated|divider|divider|op_6~7\);

-- Location: LCCOMB_X31_Y16_N14
\ist150|auto_generated|divider|divider|op_6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist150|auto_generated|divider|divider|op_6~8_combout\ = (\ist150|auto_generated|divider|divider|StageOut[53]~2_combout\ & (\ist150|auto_generated|divider|divider|op_6~7\ $ (GND))) # (!\ist150|auto_generated|divider|divider|StageOut[53]~2_combout\ & 
-- (!\ist150|auto_generated|divider|divider|op_6~7\ & VCC))
-- \ist150|auto_generated|divider|divider|op_6~9\ = CARRY((\ist150|auto_generated|divider|divider|StageOut[53]~2_combout\ & !\ist150|auto_generated|divider|divider|op_6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ist150|auto_generated|divider|divider|StageOut[53]~2_combout\,
	datad => VCC,
	cin => \ist150|auto_generated|divider|divider|op_6~7\,
	combout => \ist150|auto_generated|divider|divider|op_6~8_combout\,
	cout => \ist150|auto_generated|divider|divider|op_6~9\);

-- Location: LCCOMB_X31_Y16_N16
\ist150|auto_generated|divider|divider|op_6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist150|auto_generated|divider|divider|op_6~11_cout\ = CARRY((!\ist150|auto_generated|divider|divider|StageOut[54]~1_combout\ & !\ist150|auto_generated|divider|divider|op_6~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ist150|auto_generated|divider|divider|StageOut[54]~1_combout\,
	datad => VCC,
	cin => \ist150|auto_generated|divider|divider|op_6~9\,
	cout => \ist150|auto_generated|divider|divider|op_6~11_cout\);

-- Location: LCCOMB_X31_Y16_N18
\ist150|auto_generated|divider|divider|op_6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist150|auto_generated|divider|divider|op_6~12_combout\ = \ist150|auto_generated|divider|divider|op_6~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \ist150|auto_generated|divider|divider|op_6~11_cout\,
	combout => \ist150|auto_generated|divider|divider|op_6~12_combout\);

-- Location: LCCOMB_X31_Y16_N28
\ist150|auto_generated|divider|divider|StageOut[62]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist150|auto_generated|divider|divider|StageOut[62]~6_combout\ = (\ist150|auto_generated|divider|divider|op_6~12_combout\ & ((\ist150|auto_generated|divider|divider|StageOut[53]~2_combout\))) # (!\ist150|auto_generated|divider|divider|op_6~12_combout\ & 
-- (\ist150|auto_generated|divider|divider|op_6~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ist150|auto_generated|divider|divider|op_6~12_combout\,
	datac => \ist150|auto_generated|divider|divider|op_6~8_combout\,
	datad => \ist150|auto_generated|divider|divider|StageOut[53]~2_combout\,
	combout => \ist150|auto_generated|divider|divider|StageOut[62]~6_combout\);

-- Location: LCCOMB_X31_Y16_N22
\ist150|auto_generated|divider|divider|StageOut[61]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist150|auto_generated|divider|divider|StageOut[61]~7_combout\ = (\ist150|auto_generated|divider|divider|op_6~12_combout\ & ((\ist150|auto_generated|divider|divider|StageOut[52]~3_combout\))) # (!\ist150|auto_generated|divider|divider|op_6~12_combout\ & 
-- (\ist150|auto_generated|divider|divider|op_6~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist150|auto_generated|divider|divider|op_6~6_combout\,
	datab => \ist150|auto_generated|divider|divider|op_6~12_combout\,
	datad => \ist150|auto_generated|divider|divider|StageOut[52]~3_combout\,
	combout => \ist150|auto_generated|divider|divider|StageOut[61]~7_combout\);

-- Location: LCCOMB_X31_Y16_N30
\ist150|auto_generated|divider|divider|StageOut[60]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist150|auto_generated|divider|divider|StageOut[60]~4_combout\ = (\ist150|auto_generated|divider|divider|op_6~12_combout\ & (\ist150|auto_generated|divider|divider|StageOut[51]~0_combout\)) # (!\ist150|auto_generated|divider|divider|op_6~12_combout\ & 
-- ((\ist150|auto_generated|divider|divider|op_6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist150|auto_generated|divider|divider|StageOut[51]~0_combout\,
	datab => \ist150|auto_generated|divider|divider|op_6~12_combout\,
	datad => \ist150|auto_generated|divider|divider|op_6~4_combout\,
	combout => \ist150|auto_generated|divider|divider|StageOut[60]~4_combout\);

-- Location: LCCOMB_X31_Y16_N4
\ist150|auto_generated|divider|divider|StageOut[59]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist150|auto_generated|divider|divider|StageOut[59]~5_combout\ = (\ist150|auto_generated|divider|divider|op_6~12_combout\ & (\ist38~q\ $ (((!\ist150|auto_generated|divider|divider|op_5~10_combout\))))) # 
-- (!\ist150|auto_generated|divider|divider|op_6~12_combout\ & (((\ist150|auto_generated|divider|divider|op_6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist38~q\,
	datab => \ist150|auto_generated|divider|divider|op_6~2_combout\,
	datac => \ist150|auto_generated|divider|divider|op_5~10_combout\,
	datad => \ist150|auto_generated|divider|divider|op_6~12_combout\,
	combout => \ist150|auto_generated|divider|divider|StageOut[59]~5_combout\);

-- Location: LCCOMB_X25_Y19_N16
\ist150|auto_generated|divider|divider|op_7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist150|auto_generated|divider|divider|op_7~1_cout\ = CARRY(\ist31~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist31~q\,
	datad => VCC,
	cout => \ist150|auto_generated|divider|divider|op_7~1_cout\);

-- Location: LCCOMB_X25_Y19_N18
\ist150|auto_generated|divider|divider|op_7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist150|auto_generated|divider|divider|op_7~2_combout\ = (\ist150|auto_generated|divider|divider|op_7~1_cout\ & ((\ist150|auto_generated|divider|divider|op_6~12_combout\ $ (!\ist34~q\)))) # (!\ist150|auto_generated|divider|divider|op_7~1_cout\ & 
-- (\ist150|auto_generated|divider|divider|op_6~12_combout\ $ ((\ist34~q\))))
-- \ist150|auto_generated|divider|divider|op_7~3\ = CARRY((!\ist150|auto_generated|divider|divider|op_7~1_cout\ & (\ist150|auto_generated|divider|divider|op_6~12_combout\ $ (\ist34~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ist150|auto_generated|divider|divider|op_6~12_combout\,
	datab => \ist34~q\,
	datad => VCC,
	cin => \ist150|auto_generated|divider|divider|op_7~1_cout\,
	combout => \ist150|auto_generated|divider|divider|op_7~2_combout\,
	cout => \ist150|auto_generated|divider|divider|op_7~3\);

-- Location: LCCOMB_X25_Y19_N20
\ist150|auto_generated|divider|divider|op_7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist150|auto_generated|divider|divider|op_7~4_combout\ = (\ist150|auto_generated|divider|divider|StageOut[59]~5_combout\ & ((GND) # (!\ist150|auto_generated|divider|divider|op_7~3\))) # (!\ist150|auto_generated|divider|divider|StageOut[59]~5_combout\ & 
-- (\ist150|auto_generated|divider|divider|op_7~3\ $ (GND)))
-- \ist150|auto_generated|divider|divider|op_7~5\ = CARRY((\ist150|auto_generated|divider|divider|StageOut[59]~5_combout\) # (!\ist150|auto_generated|divider|divider|op_7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ist150|auto_generated|divider|divider|StageOut[59]~5_combout\,
	datad => VCC,
	cin => \ist150|auto_generated|divider|divider|op_7~3\,
	combout => \ist150|auto_generated|divider|divider|op_7~4_combout\,
	cout => \ist150|auto_generated|divider|divider|op_7~5\);

-- Location: LCCOMB_X25_Y19_N22
\ist150|auto_generated|divider|divider|op_7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist150|auto_generated|divider|divider|op_7~6_combout\ = (\ist150|auto_generated|divider|divider|StageOut[60]~4_combout\ & (!\ist150|auto_generated|divider|divider|op_7~5\)) # (!\ist150|auto_generated|divider|divider|StageOut[60]~4_combout\ & 
-- ((\ist150|auto_generated|divider|divider|op_7~5\) # (GND)))
-- \ist150|auto_generated|divider|divider|op_7~7\ = CARRY((!\ist150|auto_generated|divider|divider|op_7~5\) # (!\ist150|auto_generated|divider|divider|StageOut[60]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ist150|auto_generated|divider|divider|StageOut[60]~4_combout\,
	datad => VCC,
	cin => \ist150|auto_generated|divider|divider|op_7~5\,
	combout => \ist150|auto_generated|divider|divider|op_7~6_combout\,
	cout => \ist150|auto_generated|divider|divider|op_7~7\);

-- Location: LCCOMB_X25_Y19_N24
\ist150|auto_generated|divider|divider|op_7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist150|auto_generated|divider|divider|op_7~8_combout\ = (\ist150|auto_generated|divider|divider|StageOut[61]~7_combout\ & (\ist150|auto_generated|divider|divider|op_7~7\ $ (GND))) # (!\ist150|auto_generated|divider|divider|StageOut[61]~7_combout\ & 
-- (!\ist150|auto_generated|divider|divider|op_7~7\ & VCC))
-- \ist150|auto_generated|divider|divider|op_7~9\ = CARRY((\ist150|auto_generated|divider|divider|StageOut[61]~7_combout\ & !\ist150|auto_generated|divider|divider|op_7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ist150|auto_generated|divider|divider|StageOut[61]~7_combout\,
	datad => VCC,
	cin => \ist150|auto_generated|divider|divider|op_7~7\,
	combout => \ist150|auto_generated|divider|divider|op_7~8_combout\,
	cout => \ist150|auto_generated|divider|divider|op_7~9\);

-- Location: LCCOMB_X25_Y19_N26
\ist150|auto_generated|divider|divider|op_7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist150|auto_generated|divider|divider|op_7~11_cout\ = CARRY((!\ist150|auto_generated|divider|divider|StageOut[62]~6_combout\ & !\ist150|auto_generated|divider|divider|op_7~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ist150|auto_generated|divider|divider|StageOut[62]~6_combout\,
	datad => VCC,
	cin => \ist150|auto_generated|divider|divider|op_7~9\,
	cout => \ist150|auto_generated|divider|divider|op_7~11_cout\);

-- Location: LCCOMB_X25_Y19_N28
\ist150|auto_generated|divider|divider|op_7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist150|auto_generated|divider|divider|op_7~12_combout\ = \ist150|auto_generated|divider|divider|op_7~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \ist150|auto_generated|divider|divider|op_7~11_cout\,
	combout => \ist150|auto_generated|divider|divider|op_7~12_combout\);

-- Location: LCCOMB_X24_Y19_N12
\ist150|auto_generated|divider|divider|StageOut[68]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist150|auto_generated|divider|divider|StageOut[68]~9_combout\ = (\ist150|auto_generated|divider|divider|op_7~12_combout\ & ((\ist150|auto_generated|divider|divider|StageOut[59]~5_combout\))) # (!\ist150|auto_generated|divider|divider|op_7~12_combout\ & 
-- (\ist150|auto_generated|divider|divider|op_7~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ist150|auto_generated|divider|divider|op_7~12_combout\,
	datac => \ist150|auto_generated|divider|divider|op_7~4_combout\,
	datad => \ist150|auto_generated|divider|divider|StageOut[59]~5_combout\,
	combout => \ist150|auto_generated|divider|divider|StageOut[68]~9_combout\);

-- Location: LCCOMB_X24_Y19_N6
\ist150|auto_generated|divider|divider|StageOut[67]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist150|auto_generated|divider|divider|StageOut[67]~10_combout\ = (\ist150|auto_generated|divider|divider|op_7~12_combout\ & (\ist150|auto_generated|divider|divider|op_6~12_combout\ $ (((!\ist34~q\))))) # 
-- (!\ist150|auto_generated|divider|divider|op_7~12_combout\ & (((\ist150|auto_generated|divider|divider|op_7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist150|auto_generated|divider|divider|op_6~12_combout\,
	datab => \ist150|auto_generated|divider|divider|op_7~2_combout\,
	datac => \ist34~q\,
	datad => \ist150|auto_generated|divider|divider|op_7~12_combout\,
	combout => \ist150|auto_generated|divider|divider|StageOut[67]~10_combout\);

-- Location: LCCOMB_X24_Y19_N14
\ist150|auto_generated|divider|divider|op_8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist150|auto_generated|divider|divider|op_8~1_cout\ = CARRY(\ist28~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist28~q\,
	datad => VCC,
	cout => \ist150|auto_generated|divider|divider|op_8~1_cout\);

-- Location: LCCOMB_X24_Y19_N16
\ist150|auto_generated|divider|divider|op_8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist150|auto_generated|divider|divider|op_8~2_combout\ = (\ist150|auto_generated|divider|divider|op_8~1_cout\ & ((\ist31~q\ $ (!\ist150|auto_generated|divider|divider|op_7~12_combout\)))) # (!\ist150|auto_generated|divider|divider|op_8~1_cout\ & 
-- (\ist31~q\ $ ((\ist150|auto_generated|divider|divider|op_7~12_combout\))))
-- \ist150|auto_generated|divider|divider|op_8~3\ = CARRY((!\ist150|auto_generated|divider|divider|op_8~1_cout\ & (\ist31~q\ $ (\ist150|auto_generated|divider|divider|op_7~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ist31~q\,
	datab => \ist150|auto_generated|divider|divider|op_7~12_combout\,
	datad => VCC,
	cin => \ist150|auto_generated|divider|divider|op_8~1_cout\,
	combout => \ist150|auto_generated|divider|divider|op_8~2_combout\,
	cout => \ist150|auto_generated|divider|divider|op_8~3\);

-- Location: LCCOMB_X24_Y19_N18
\ist150|auto_generated|divider|divider|op_8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist150|auto_generated|divider|divider|op_8~4_combout\ = (\ist150|auto_generated|divider|divider|StageOut[67]~10_combout\ & ((GND) # (!\ist150|auto_generated|divider|divider|op_8~3\))) # (!\ist150|auto_generated|divider|divider|StageOut[67]~10_combout\ & 
-- (\ist150|auto_generated|divider|divider|op_8~3\ $ (GND)))
-- \ist150|auto_generated|divider|divider|op_8~5\ = CARRY((\ist150|auto_generated|divider|divider|StageOut[67]~10_combout\) # (!\ist150|auto_generated|divider|divider|op_8~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ist150|auto_generated|divider|divider|StageOut[67]~10_combout\,
	datad => VCC,
	cin => \ist150|auto_generated|divider|divider|op_8~3\,
	combout => \ist150|auto_generated|divider|divider|op_8~4_combout\,
	cout => \ist150|auto_generated|divider|divider|op_8~5\);

-- Location: LCCOMB_X24_Y19_N20
\ist150|auto_generated|divider|divider|op_8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist150|auto_generated|divider|divider|op_8~6_combout\ = (\ist150|auto_generated|divider|divider|StageOut[68]~9_combout\ & (!\ist150|auto_generated|divider|divider|op_8~5\)) # (!\ist150|auto_generated|divider|divider|StageOut[68]~9_combout\ & 
-- ((\ist150|auto_generated|divider|divider|op_8~5\) # (GND)))
-- \ist150|auto_generated|divider|divider|op_8~7\ = CARRY((!\ist150|auto_generated|divider|divider|op_8~5\) # (!\ist150|auto_generated|divider|divider|StageOut[68]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ist150|auto_generated|divider|divider|StageOut[68]~9_combout\,
	datad => VCC,
	cin => \ist150|auto_generated|divider|divider|op_8~5\,
	combout => \ist150|auto_generated|divider|divider|op_8~6_combout\,
	cout => \ist150|auto_generated|divider|divider|op_8~7\);

-- Location: LCCOMB_X25_Y19_N30
\ist150|auto_generated|divider|divider|StageOut[70]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist150|auto_generated|divider|divider|StageOut[70]~11_combout\ = (\ist150|auto_generated|divider|divider|op_7~12_combout\ & ((\ist150|auto_generated|divider|divider|StageOut[61]~7_combout\))) # (!\ist150|auto_generated|divider|divider|op_7~12_combout\ & 
-- (\ist150|auto_generated|divider|divider|op_7~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ist150|auto_generated|divider|divider|op_7~8_combout\,
	datac => \ist150|auto_generated|divider|divider|StageOut[61]~7_combout\,
	datad => \ist150|auto_generated|divider|divider|op_7~12_combout\,
	combout => \ist150|auto_generated|divider|divider|StageOut[70]~11_combout\);

-- Location: LCCOMB_X25_Y19_N0
\ist150|auto_generated|divider|divider|StageOut[69]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist150|auto_generated|divider|divider|StageOut[69]~8_combout\ = (\ist150|auto_generated|divider|divider|op_7~12_combout\ & ((\ist150|auto_generated|divider|divider|StageOut[60]~4_combout\))) # (!\ist150|auto_generated|divider|divider|op_7~12_combout\ & 
-- (\ist150|auto_generated|divider|divider|op_7~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist150|auto_generated|divider|divider|op_7~6_combout\,
	datab => \ist150|auto_generated|divider|divider|op_7~12_combout\,
	datac => \ist150|auto_generated|divider|divider|StageOut[60]~4_combout\,
	combout => \ist150|auto_generated|divider|divider|StageOut[69]~8_combout\);

-- Location: LCCOMB_X24_Y19_N22
\ist150|auto_generated|divider|divider|op_8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist150|auto_generated|divider|divider|op_8~8_combout\ = (\ist150|auto_generated|divider|divider|StageOut[69]~8_combout\ & (\ist150|auto_generated|divider|divider|op_8~7\ $ (GND))) # (!\ist150|auto_generated|divider|divider|StageOut[69]~8_combout\ & 
-- (!\ist150|auto_generated|divider|divider|op_8~7\ & VCC))
-- \ist150|auto_generated|divider|divider|op_8~9\ = CARRY((\ist150|auto_generated|divider|divider|StageOut[69]~8_combout\ & !\ist150|auto_generated|divider|divider|op_8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ist150|auto_generated|divider|divider|StageOut[69]~8_combout\,
	datad => VCC,
	cin => \ist150|auto_generated|divider|divider|op_8~7\,
	combout => \ist150|auto_generated|divider|divider|op_8~8_combout\,
	cout => \ist150|auto_generated|divider|divider|op_8~9\);

-- Location: LCCOMB_X24_Y19_N24
\ist150|auto_generated|divider|divider|op_8~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist150|auto_generated|divider|divider|op_8~11_cout\ = CARRY((!\ist150|auto_generated|divider|divider|StageOut[70]~11_combout\ & !\ist150|auto_generated|divider|divider|op_8~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ist150|auto_generated|divider|divider|StageOut[70]~11_combout\,
	datad => VCC,
	cin => \ist150|auto_generated|divider|divider|op_8~9\,
	cout => \ist150|auto_generated|divider|divider|op_8~11_cout\);

-- Location: LCCOMB_X24_Y19_N26
\ist150|auto_generated|divider|divider|op_8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist150|auto_generated|divider|divider|op_8~12_combout\ = \ist150|auto_generated|divider|divider|op_8~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \ist150|auto_generated|divider|divider|op_8~11_cout\,
	combout => \ist150|auto_generated|divider|divider|op_8~12_combout\);

-- Location: LCCOMB_X24_Y19_N30
\ist150|auto_generated|divider|divider|StageOut[77]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist150|auto_generated|divider|divider|StageOut[77]~13_combout\ = (\ist150|auto_generated|divider|divider|op_8~12_combout\ & ((\ist150|auto_generated|divider|divider|StageOut[68]~9_combout\))) # (!\ist150|auto_generated|divider|divider|op_8~12_combout\ & 
-- (\ist150|auto_generated|divider|divider|op_8~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ist150|auto_generated|divider|divider|op_8~6_combout\,
	datac => \ist150|auto_generated|divider|divider|op_8~12_combout\,
	datad => \ist150|auto_generated|divider|divider|StageOut[68]~9_combout\,
	combout => \ist150|auto_generated|divider|divider|StageOut[77]~13_combout\);

-- Location: LCCOMB_X24_Y19_N0
\ist150|auto_generated|divider|divider|StageOut[76]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist150|auto_generated|divider|divider|StageOut[76]~14_combout\ = (\ist150|auto_generated|divider|divider|op_8~12_combout\ & ((\ist150|auto_generated|divider|divider|StageOut[67]~10_combout\))) # (!\ist150|auto_generated|divider|divider|op_8~12_combout\ & 
-- (\ist150|auto_generated|divider|divider|op_8~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ist150|auto_generated|divider|divider|op_8~4_combout\,
	datac => \ist150|auto_generated|divider|divider|op_8~12_combout\,
	datad => \ist150|auto_generated|divider|divider|StageOut[67]~10_combout\,
	combout => \ist150|auto_generated|divider|divider|StageOut[76]~14_combout\);

-- Location: LCCOMB_X24_Y19_N4
\ist150|auto_generated|divider|divider|StageOut[78]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist150|auto_generated|divider|divider|StageOut[78]~12_combout\ = (\ist150|auto_generated|divider|divider|op_8~12_combout\ & (\ist150|auto_generated|divider|divider|StageOut[69]~8_combout\)) # (!\ist150|auto_generated|divider|divider|op_8~12_combout\ & 
-- ((\ist150|auto_generated|divider|divider|op_8~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist150|auto_generated|divider|divider|op_8~12_combout\,
	datab => \ist150|auto_generated|divider|divider|StageOut[69]~8_combout\,
	datac => \ist150|auto_generated|divider|divider|op_8~8_combout\,
	combout => \ist150|auto_generated|divider|divider|StageOut[78]~12_combout\);

-- Location: LCCOMB_X24_Y19_N10
\ist150|auto_generated|divider|divider|StageOut[75]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist150|auto_generated|divider|divider|StageOut[75]~15_combout\ = (\ist150|auto_generated|divider|divider|op_8~12_combout\ & (\ist31~q\ $ (((!\ist150|auto_generated|divider|divider|op_7~12_combout\))))) # 
-- (!\ist150|auto_generated|divider|divider|op_8~12_combout\ & (((\ist150|auto_generated|divider|divider|op_8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist31~q\,
	datab => \ist150|auto_generated|divider|divider|op_8~2_combout\,
	datac => \ist150|auto_generated|divider|divider|op_8~12_combout\,
	datad => \ist150|auto_generated|divider|divider|op_7~12_combout\,
	combout => \ist150|auto_generated|divider|divider|StageOut[75]~15_combout\);

-- Location: LCCOMB_X24_Y19_N28
\ist151|auto_generated|divider|divider|op_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist151|auto_generated|divider|divider|op_3~0_combout\ = (\ist150|auto_generated|divider|divider|StageOut[77]~13_combout\ & ((\ist150|auto_generated|divider|divider|StageOut[76]~14_combout\ & 
-- ((\ist150|auto_generated|divider|divider|StageOut[75]~15_combout\) # (!\ist150|auto_generated|divider|divider|StageOut[78]~12_combout\))) # (!\ist150|auto_generated|divider|divider|StageOut[76]~14_combout\ & 
-- (!\ist150|auto_generated|divider|divider|StageOut[78]~12_combout\ & \ist150|auto_generated|divider|divider|StageOut[75]~15_combout\)))) # (!\ist150|auto_generated|divider|divider|StageOut[77]~13_combout\ & 
-- (!\ist150|auto_generated|divider|divider|StageOut[76]~14_combout\ & (\ist150|auto_generated|divider|divider|StageOut[78]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist150|auto_generated|divider|divider|StageOut[77]~13_combout\,
	datab => \ist150|auto_generated|divider|divider|StageOut[76]~14_combout\,
	datac => \ist150|auto_generated|divider|divider|StageOut[78]~12_combout\,
	datad => \ist150|auto_generated|divider|divider|StageOut[75]~15_combout\,
	combout => \ist151|auto_generated|divider|divider|op_3~0_combout\);

-- Location: LCCOMB_X23_Y20_N20
\ist151|auto_generated|divider|divider|StageOut[22]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist151|auto_generated|divider|divider|StageOut[22]~0_combout\ = (\ist150|auto_generated|divider|divider|StageOut[76]~14_combout\ & (!\ist150|auto_generated|divider|divider|StageOut[78]~12_combout\ & 
-- ((\ist150|auto_generated|divider|divider|StageOut[75]~15_combout\) # (!\ist150|auto_generated|divider|divider|StageOut[77]~13_combout\)))) # (!\ist150|auto_generated|divider|divider|StageOut[76]~14_combout\ & 
-- (\ist150|auto_generated|divider|divider|StageOut[78]~12_combout\ & ((\ist150|auto_generated|divider|divider|StageOut[77]~13_combout\) # (!\ist150|auto_generated|divider|divider|StageOut[75]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist150|auto_generated|divider|divider|StageOut[76]~14_combout\,
	datab => \ist150|auto_generated|divider|divider|StageOut[77]~13_combout\,
	datac => \ist150|auto_generated|divider|divider|StageOut[75]~15_combout\,
	datad => \ist150|auto_generated|divider|divider|StageOut[78]~12_combout\,
	combout => \ist151|auto_generated|divider|divider|StageOut[22]~0_combout\);

-- Location: LCCOMB_X23_Y20_N30
\ist151|auto_generated|divider|divider|op_4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist151|auto_generated|divider|divider|op_4~0_combout\ = (\ist150|auto_generated|divider|divider|StageOut[77]~13_combout\ & (!\ist150|auto_generated|divider|divider|StageOut[75]~15_combout\ & 
-- (\ist150|auto_generated|divider|divider|StageOut[76]~14_combout\ $ (!\ist150|auto_generated|divider|divider|StageOut[78]~12_combout\)))) # (!\ist150|auto_generated|divider|divider|StageOut[77]~13_combout\ & 
-- (!\ist150|auto_generated|divider|divider|StageOut[76]~14_combout\ & (\ist150|auto_generated|divider|divider|StageOut[75]~15_combout\ & \ist150|auto_generated|divider|divider|StageOut[78]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist150|auto_generated|divider|divider|StageOut[76]~14_combout\,
	datab => \ist150|auto_generated|divider|divider|StageOut[77]~13_combout\,
	datac => \ist150|auto_generated|divider|divider|StageOut[75]~15_combout\,
	datad => \ist150|auto_generated|divider|divider|StageOut[78]~12_combout\,
	combout => \ist151|auto_generated|divider|divider|op_4~0_combout\);

-- Location: LCCOMB_X24_Y19_N8
\ist151|auto_generated|divider|divider|op_4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist151|auto_generated|divider|divider|op_4~1_combout\ = (\ist150|auto_generated|divider|divider|StageOut[75]~15_combout\ & ((\ist150|auto_generated|divider|divider|op_8~12_combout\ $ (!\ist28~q\)) # 
-- (!\ist151|auto_generated|divider|divider|op_3~0_combout\))) # (!\ist150|auto_generated|divider|divider|StageOut[75]~15_combout\ & ((\ist151|auto_generated|divider|divider|op_3~0_combout\) # (\ist150|auto_generated|divider|divider|op_8~12_combout\ $ 
-- (!\ist28~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist150|auto_generated|divider|divider|StageOut[75]~15_combout\,
	datab => \ist151|auto_generated|divider|divider|op_3~0_combout\,
	datac => \ist150|auto_generated|divider|divider|op_8~12_combout\,
	datad => \ist28~q\,
	combout => \ist151|auto_generated|divider|divider|op_4~1_combout\);

-- Location: LCCOMB_X23_Y20_N14
\ist151|auto_generated|divider|divider|op_4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist151|auto_generated|divider|divider|op_4~2_combout\ = (\ist151|auto_generated|divider|divider|op_4~0_combout\) # ((\ist151|auto_generated|divider|divider|StageOut[22]~0_combout\ & \ist151|auto_generated|divider|divider|op_4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ist151|auto_generated|divider|divider|StageOut[22]~0_combout\,
	datac => \ist151|auto_generated|divider|divider|op_4~0_combout\,
	datad => \ist151|auto_generated|divider|divider|op_4~1_combout\,
	combout => \ist151|auto_generated|divider|divider|op_4~2_combout\);

-- Location: LCCOMB_X24_Y19_N2
\ist151|auto_generated|divider|divider|op_5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist151|auto_generated|divider|divider|op_5~2_combout\ = (\ist151|auto_generated|divider|divider|op_4~2_combout\ & ((\ist150|auto_generated|divider|divider|op_8~12_combout\ $ (\ist28~q\)) # (!\ist25~q\))) # 
-- (!\ist151|auto_generated|divider|divider|op_4~2_combout\ & (!\ist25~q\ & (\ist150|auto_generated|divider|divider|op_8~12_combout\ $ (\ist28~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist151|auto_generated|divider|divider|op_4~2_combout\,
	datab => \ist25~q\,
	datac => \ist150|auto_generated|divider|divider|op_8~12_combout\,
	datad => \ist28~q\,
	combout => \ist151|auto_generated|divider|divider|op_5~2_combout\);

-- Location: LCCOMB_X23_Y20_N18
\ist151|auto_generated|divider|divider|op_5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist151|auto_generated|divider|divider|op_5~4_combout\ = (\ist151|auto_generated|divider|divider|StageOut[22]~0_combout\ & ((!\ist151|auto_generated|divider|divider|op_4~1_combout\))) # (!\ist151|auto_generated|divider|divider|StageOut[22]~0_combout\ & 
-- (\ist151|auto_generated|divider|divider|op_4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ist151|auto_generated|divider|divider|StageOut[22]~0_combout\,
	datac => \ist151|auto_generated|divider|divider|op_4~0_combout\,
	datad => \ist151|auto_generated|divider|divider|op_4~1_combout\,
	combout => \ist151|auto_generated|divider|divider|op_5~4_combout\);

-- Location: LCCOMB_X23_Y20_N2
\ist151|auto_generated|divider|divider|op_5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist151|auto_generated|divider|divider|op_5~3_combout\ = (\ist151|auto_generated|divider|divider|op_5~4_combout\) # ((!\ist151|auto_generated|divider|divider|op_5~2_combout\ & (\ist151|auto_generated|divider|divider|op_3~0_combout\ $ 
-- (\ist150|auto_generated|divider|divider|StageOut[75]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist151|auto_generated|divider|divider|op_3~0_combout\,
	datab => \ist151|auto_generated|divider|divider|op_5~2_combout\,
	datac => \ist150|auto_generated|divider|divider|StageOut[75]~15_combout\,
	datad => \ist151|auto_generated|divider|divider|op_5~4_combout\,
	combout => \ist151|auto_generated|divider|divider|op_5~3_combout\);

-- Location: LCCOMB_X33_Y16_N30
\ist152|auto_generated|divider|divider|StageOut[21]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist152|auto_generated|divider|divider|StageOut[21]~2_combout\ = (\ist41~q\ & (\ist47~q\ $ (((\ist44~q\) # (!\ist50~q\))))) # (!\ist41~q\ & ((\ist44~q\ & (!\ist50~q\ & \ist47~q\)) # (!\ist44~q\ & (\ist50~q\ & !\ist47~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist44~q\,
	datab => \ist41~q\,
	datac => \ist50~q\,
	datad => \ist47~q\,
	combout => \ist152|auto_generated|divider|divider|StageOut[21]~2_combout\);

-- Location: LCCOMB_X32_Y16_N0
\ist152|auto_generated|divider|divider|op_4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist152|auto_generated|divider|divider|op_4~0_combout\ = (\ist41~q\ & (\ist50~q\ & (!\ist44~q\ & !\ist47~q\))) # (!\ist41~q\ & (\ist47~q\ & (\ist50~q\ $ (!\ist44~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist50~q\,
	datab => \ist41~q\,
	datac => \ist44~q\,
	datad => \ist47~q\,
	combout => \ist152|auto_generated|divider|divider|op_4~0_combout\);

-- Location: LCCOMB_X32_Y16_N22
\ist152|auto_generated|divider|divider|StageOut[22]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist152|auto_generated|divider|divider|StageOut[22]~3_combout\ = (\ist50~q\ & (!\ist44~q\ & ((\ist47~q\) # (!\ist41~q\)))) # (!\ist50~q\ & (\ist44~q\ & ((\ist41~q\) # (!\ist47~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist50~q\,
	datab => \ist41~q\,
	datac => \ist44~q\,
	datad => \ist47~q\,
	combout => \ist152|auto_generated|divider|divider|StageOut[22]~3_combout\);

-- Location: LCCOMB_X30_Y16_N12
\ist152|auto_generated|divider|divider|StageOut[26]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist152|auto_generated|divider|divider|StageOut[26]~4_combout\ = (\ist152|auto_generated|divider|divider|op_4~0_combout\ & (((!\ist38~q\)))) # (!\ist152|auto_generated|divider|divider|op_4~0_combout\ & 
-- ((\ist152|auto_generated|divider|divider|StageOut[22]~3_combout\ & (\ist152|auto_generated|divider|divider|StageOut[21]~2_combout\ & !\ist38~q\)) # (!\ist152|auto_generated|divider|divider|StageOut[22]~3_combout\ & ((\ist38~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist152|auto_generated|divider|divider|StageOut[21]~2_combout\,
	datab => \ist152|auto_generated|divider|divider|op_4~0_combout\,
	datac => \ist152|auto_generated|divider|divider|StageOut[22]~3_combout\,
	datad => \ist38~q\,
	combout => \ist152|auto_generated|divider|divider|StageOut[26]~4_combout\);

-- Location: LCCOMB_X30_Y16_N14
\ist152|auto_generated|divider|divider|StageOut[27]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist152|auto_generated|divider|divider|StageOut[27]~5_combout\ = (\ist152|auto_generated|divider|divider|StageOut[21]~2_combout\ & ((\ist38~q\) # ((!\ist152|auto_generated|divider|divider|op_4~0_combout\ & 
-- !\ist152|auto_generated|divider|divider|StageOut[22]~3_combout\)))) # (!\ist152|auto_generated|divider|divider|StageOut[21]~2_combout\ & (\ist152|auto_generated|divider|divider|op_4~0_combout\ & ((!\ist38~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist152|auto_generated|divider|divider|StageOut[21]~2_combout\,
	datab => \ist152|auto_generated|divider|divider|op_4~0_combout\,
	datac => \ist152|auto_generated|divider|divider|StageOut[22]~3_combout\,
	datad => \ist38~q\,
	combout => \ist152|auto_generated|divider|divider|StageOut[27]~5_combout\);

-- Location: LCCOMB_X30_Y16_N10
\ist152|auto_generated|divider|divider|op_5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist152|auto_generated|divider|divider|op_5~0_combout\ = (\ist152|auto_generated|divider|divider|StageOut[22]~3_combout\ & (!\ist152|auto_generated|divider|divider|StageOut[21]~2_combout\ & ((!\ist38~q\)))) # 
-- (!\ist152|auto_generated|divider|divider|StageOut[22]~3_combout\ & (\ist152|auto_generated|divider|divider|op_4~0_combout\ & ((\ist152|auto_generated|divider|divider|StageOut[21]~2_combout\) # (\ist38~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist152|auto_generated|divider|divider|StageOut[21]~2_combout\,
	datab => \ist152|auto_generated|divider|divider|op_4~0_combout\,
	datac => \ist152|auto_generated|divider|divider|StageOut[22]~3_combout\,
	datad => \ist38~q\,
	combout => \ist152|auto_generated|divider|divider|op_5~0_combout\);

-- Location: LCCOMB_X30_Y16_N6
\ist152|auto_generated|divider|divider|StageOut[32]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist152|auto_generated|divider|divider|StageOut[32]~7_combout\ = (\ist152|auto_generated|divider|divider|StageOut[26]~4_combout\ & ((\ist34~q\) # ((!\ist152|auto_generated|divider|divider|StageOut[27]~5_combout\ & 
-- !\ist152|auto_generated|divider|divider|op_5~0_combout\)))) # (!\ist152|auto_generated|divider|divider|StageOut[26]~4_combout\ & (!\ist34~q\ & ((\ist152|auto_generated|divider|divider|op_5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist152|auto_generated|divider|divider|StageOut[26]~4_combout\,
	datab => \ist34~q\,
	datac => \ist152|auto_generated|divider|divider|StageOut[27]~5_combout\,
	datad => \ist152|auto_generated|divider|divider|op_5~0_combout\,
	combout => \ist152|auto_generated|divider|divider|StageOut[32]~7_combout\);

-- Location: LCCOMB_X30_Y16_N18
\ist152|auto_generated|divider|divider|StageOut[31]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist152|auto_generated|divider|divider|StageOut[31]~6_combout\ = (\ist34~q\ & (((!\ist152|auto_generated|divider|divider|StageOut[27]~5_combout\ & !\ist152|auto_generated|divider|divider|op_5~0_combout\)))) # (!\ist34~q\ & 
-- ((\ist152|auto_generated|divider|divider|op_5~0_combout\) # ((\ist152|auto_generated|divider|divider|StageOut[26]~4_combout\ & \ist152|auto_generated|divider|divider|StageOut[27]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist152|auto_generated|divider|divider|StageOut[26]~4_combout\,
	datab => \ist34~q\,
	datac => \ist152|auto_generated|divider|divider|StageOut[27]~5_combout\,
	datad => \ist152|auto_generated|divider|divider|op_5~0_combout\,
	combout => \ist152|auto_generated|divider|divider|StageOut[31]~6_combout\);

-- Location: LCCOMB_X30_Y16_N28
\ist152|auto_generated|divider|divider|op_6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist152|auto_generated|divider|divider|op_6~0_combout\ = (\ist152|auto_generated|divider|divider|StageOut[27]~5_combout\ & (!\ist152|auto_generated|divider|divider|StageOut[26]~4_combout\ & (!\ist34~q\))) # 
-- (!\ist152|auto_generated|divider|divider|StageOut[27]~5_combout\ & (\ist152|auto_generated|divider|divider|op_5~0_combout\ & ((\ist152|auto_generated|divider|divider|StageOut[26]~4_combout\) # (\ist34~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist152|auto_generated|divider|divider|StageOut[26]~4_combout\,
	datab => \ist34~q\,
	datac => \ist152|auto_generated|divider|divider|StageOut[27]~5_combout\,
	datad => \ist152|auto_generated|divider|divider|op_5~0_combout\,
	combout => \ist152|auto_generated|divider|divider|op_6~0_combout\);

-- Location: LCCOMB_X29_Y16_N8
\ist152|auto_generated|divider|divider|op_7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist152|auto_generated|divider|divider|op_7~0_combout\ = (\ist152|auto_generated|divider|divider|StageOut[32]~7_combout\ & (!\ist152|auto_generated|divider|divider|StageOut[31]~6_combout\ & (!\ist31~q\))) # 
-- (!\ist152|auto_generated|divider|divider|StageOut[32]~7_combout\ & (\ist152|auto_generated|divider|divider|op_6~0_combout\ & ((\ist152|auto_generated|divider|divider|StageOut[31]~6_combout\) # (\ist31~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist152|auto_generated|divider|divider|StageOut[32]~7_combout\,
	datab => \ist152|auto_generated|divider|divider|StageOut[31]~6_combout\,
	datac => \ist31~q\,
	datad => \ist152|auto_generated|divider|divider|op_6~0_combout\,
	combout => \ist152|auto_generated|divider|divider|op_7~0_combout\);

-- Location: LCCOMB_X29_Y16_N24
\ist152|auto_generated|divider|divider|StageOut[36]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist152|auto_generated|divider|divider|StageOut[36]~9_combout\ = (\ist152|auto_generated|divider|divider|StageOut[32]~7_combout\ & (!\ist31~q\ & ((\ist152|auto_generated|divider|divider|StageOut[31]~6_combout\) # 
-- (\ist152|auto_generated|divider|divider|op_6~0_combout\)))) # (!\ist152|auto_generated|divider|divider|StageOut[32]~7_combout\ & ((\ist31~q\ $ (\ist152|auto_generated|divider|divider|op_6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist152|auto_generated|divider|divider|StageOut[32]~7_combout\,
	datab => \ist152|auto_generated|divider|divider|StageOut[31]~6_combout\,
	datac => \ist31~q\,
	datad => \ist152|auto_generated|divider|divider|op_6~0_combout\,
	combout => \ist152|auto_generated|divider|divider|StageOut[36]~9_combout\);

-- Location: LCCOMB_X29_Y16_N18
\ist152|auto_generated|divider|divider|StageOut[37]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist152|auto_generated|divider|divider|StageOut[37]~8_combout\ = (\ist152|auto_generated|divider|divider|StageOut[31]~6_combout\ & ((\ist31~q\) # ((!\ist152|auto_generated|divider|divider|StageOut[32]~7_combout\ & 
-- !\ist152|auto_generated|divider|divider|op_6~0_combout\)))) # (!\ist152|auto_generated|divider|divider|StageOut[31]~6_combout\ & (((!\ist31~q\ & \ist152|auto_generated|divider|divider|op_6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist152|auto_generated|divider|divider|StageOut[32]~7_combout\,
	datab => \ist152|auto_generated|divider|divider|StageOut[31]~6_combout\,
	datac => \ist31~q\,
	datad => \ist152|auto_generated|divider|divider|op_6~0_combout\,
	combout => \ist152|auto_generated|divider|divider|StageOut[37]~8_combout\);

-- Location: LCCOMB_X29_Y16_N26
\ist152|auto_generated|divider|divider|op_8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist152|auto_generated|divider|divider|op_8~0_combout\ = (\ist28~q\ & ((\ist152|auto_generated|divider|divider|StageOut[36]~9_combout\ & ((!\ist152|auto_generated|divider|divider|StageOut[37]~8_combout\) # (!\ist25~q\))) # 
-- (!\ist152|auto_generated|divider|divider|StageOut[36]~9_combout\ & ((\ist152|auto_generated|divider|divider|StageOut[37]~8_combout\))))) # (!\ist28~q\ & (\ist152|auto_generated|divider|divider|StageOut[36]~9_combout\ & ((\ist25~q\) # 
-- (\ist152|auto_generated|divider|divider|StageOut[37]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist28~q\,
	datab => \ist152|auto_generated|divider|divider|StageOut[36]~9_combout\,
	datac => \ist25~q\,
	datad => \ist152|auto_generated|divider|divider|StageOut[37]~8_combout\,
	combout => \ist152|auto_generated|divider|divider|op_8~0_combout\);

-- Location: LCCOMB_X29_Y16_N6
\ist152|auto_generated|divider|divider|op_8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist152|auto_generated|divider|divider|op_8~1_combout\ = (\ist152|auto_generated|divider|divider|op_8~0_combout\ & ((!\ist152|auto_generated|divider|divider|StageOut[37]~8_combout\))) # (!\ist152|auto_generated|divider|divider|op_8~0_combout\ & 
-- ((\ist152|auto_generated|divider|divider|op_7~0_combout\) # (\ist152|auto_generated|divider|divider|StageOut[37]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ist152|auto_generated|divider|divider|op_7~0_combout\,
	datac => \ist152|auto_generated|divider|divider|op_8~0_combout\,
	datad => \ist152|auto_generated|divider|divider|StageOut[37]~8_combout\,
	combout => \ist152|auto_generated|divider|divider|op_8~1_combout\);

-- Location: LCCOMB_X29_Y16_N22
\ist152|auto_generated|divider|divider|StageOut[42]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist152|auto_generated|divider|divider|StageOut[42]~12_combout\ = (\ist28~q\ & (\ist152|auto_generated|divider|divider|StageOut[36]~9_combout\)) # (!\ist28~q\ & ((\ist152|auto_generated|divider|divider|StageOut[36]~9_combout\ & 
-- (!\ist152|auto_generated|divider|divider|op_7~0_combout\ & !\ist152|auto_generated|divider|divider|StageOut[37]~8_combout\)) # (!\ist152|auto_generated|divider|divider|StageOut[36]~9_combout\ & (\ist152|auto_generated|divider|divider|op_7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist28~q\,
	datab => \ist152|auto_generated|divider|divider|StageOut[36]~9_combout\,
	datac => \ist152|auto_generated|divider|divider|op_7~0_combout\,
	datad => \ist152|auto_generated|divider|divider|StageOut[37]~8_combout\,
	combout => \ist152|auto_generated|divider|divider|StageOut[42]~12_combout\);

-- Location: LCCOMB_X29_Y16_N12
\ist152|auto_generated|divider|divider|StageOut[41]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist152|auto_generated|divider|divider|StageOut[41]~10_combout\ = (\ist28~q\ & (((!\ist152|auto_generated|divider|divider|op_7~0_combout\ & !\ist152|auto_generated|divider|divider|StageOut[37]~8_combout\)))) # (!\ist28~q\ & 
-- ((\ist152|auto_generated|divider|divider|op_7~0_combout\) # ((\ist152|auto_generated|divider|divider|StageOut[36]~9_combout\ & \ist152|auto_generated|divider|divider|StageOut[37]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist28~q\,
	datab => \ist152|auto_generated|divider|divider|StageOut[36]~9_combout\,
	datac => \ist152|auto_generated|divider|divider|op_7~0_combout\,
	datad => \ist152|auto_generated|divider|divider|StageOut[37]~8_combout\,
	combout => \ist152|auto_generated|divider|divider|StageOut[41]~10_combout\);

-- Location: LCCOMB_X29_Y16_N20
\ist152|auto_generated|divider|divider|StageOut[48]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist152|auto_generated|divider|divider|StageOut[48]~13_combout\ = \ist152|auto_generated|divider|divider|StageOut[42]~12_combout\ $ (((\ist152|auto_generated|divider|divider|op_8~1_combout\ & ((\ist25~q\) # 
-- (\ist152|auto_generated|divider|divider|StageOut[41]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist152|auto_generated|divider|divider|op_8~1_combout\,
	datab => \ist25~q\,
	datac => \ist152|auto_generated|divider|divider|StageOut[42]~12_combout\,
	datad => \ist152|auto_generated|divider|divider|StageOut[41]~10_combout\,
	combout => \ist152|auto_generated|divider|divider|StageOut[48]~13_combout\);

-- Location: LCCOMB_X29_Y16_N2
\ist152|auto_generated|divider|divider|StageOut[47]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist152|auto_generated|divider|divider|StageOut[47]~11_combout\ = \ist152|auto_generated|divider|divider|StageOut[41]~10_combout\ $ (((\ist152|auto_generated|divider|divider|op_8~1_combout\ & !\ist25~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist152|auto_generated|divider|divider|op_8~1_combout\,
	datac => \ist25~q\,
	datad => \ist152|auto_generated|divider|divider|StageOut[41]~10_combout\,
	combout => \ist152|auto_generated|divider|divider|StageOut[47]~11_combout\);

-- Location: LCCOMB_X29_Y16_N10
\ist152|auto_generated|divider|divider|StageOut[46]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ist152|auto_generated|divider|divider|StageOut[46]~14_combout\ = \ist25~q\ $ (((\ist152|auto_generated|divider|divider|op_8~0_combout\ & ((!\ist152|auto_generated|divider|divider|StageOut[37]~8_combout\))) # 
-- (!\ist152|auto_generated|divider|divider|op_8~0_combout\ & ((\ist152|auto_generated|divider|divider|op_7~0_combout\) # (\ist152|auto_generated|divider|divider|StageOut[37]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist152|auto_generated|divider|divider|op_8~0_combout\,
	datab => \ist152|auto_generated|divider|divider|op_7~0_combout\,
	datac => \ist25~q\,
	datad => \ist152|auto_generated|divider|divider|StageOut[37]~8_combout\,
	combout => \ist152|auto_generated|divider|divider|StageOut[46]~14_combout\);

-- Location: LCCOMB_X25_Y20_N8
\inst7|inst27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst27~0_combout\ = (!\ist152|auto_generated|divider|divider|StageOut[48]~13_combout\ & (((\ist22~q\ & \ist152|auto_generated|divider|divider|StageOut[46]~14_combout\)) # (!\ist152|auto_generated|divider|divider|StageOut[47]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist22~q\,
	datab => \ist152|auto_generated|divider|divider|StageOut[48]~13_combout\,
	datac => \ist152|auto_generated|divider|divider|StageOut[47]~11_combout\,
	datad => \ist152|auto_generated|divider|divider|StageOut[46]~14_combout\,
	combout => \inst7|inst27~0_combout\);

-- Location: LCCOMB_X23_Y20_N24
\inst7|inst27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst27~1_combout\ = (\ist20|inst4~2_combout\ & (((\ist152|auto_generated|divider|divider|StageOut[46]~14_combout\ & !\ist152|auto_generated|divider|divider|StageOut[47]~11_combout\)) # (!\inst7|inst27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst27~0_combout\,
	datab => \ist152|auto_generated|divider|divider|StageOut[46]~14_combout\,
	datac => \ist152|auto_generated|divider|divider|StageOut[47]~11_combout\,
	datad => \ist20|inst4~2_combout\,
	combout => \inst7|inst27~1_combout\);

-- Location: LCCOMB_X25_Y20_N10
\inst7|inst10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst10~2_combout\ = (!\ist20|inst~q\ & (\ist151|auto_generated|divider|divider|op_3~0_combout\ & \ist20|inst1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ist20|inst~q\,
	datac => \ist151|auto_generated|divider|divider|op_3~0_combout\,
	datad => \ist20|inst1~q\,
	combout => \inst7|inst10~2_combout\);

-- Location: LCCOMB_X25_Y19_N2
\ins300|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ins300|auto_generated|divider|divider|add_sub_9_result_int[2]~1_cout\ = CARRY(\ist28~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ist28~q\,
	datad => VCC,
	cout => \ins300|auto_generated|divider|divider|add_sub_9_result_int[2]~1_cout\);

-- Location: LCCOMB_X25_Y19_N4
\ins300|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ins300|auto_generated|divider|divider|add_sub_9_result_int[3]~3_cout\ = CARRY((!\ins300|auto_generated|divider|divider|add_sub_9_result_int[2]~1_cout\ & (\ist31~q\ $ (\ist150|auto_generated|divider|divider|op_7~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ist31~q\,
	datab => \ist150|auto_generated|divider|divider|op_7~12_combout\,
	datad => VCC,
	cin => \ins300|auto_generated|divider|divider|add_sub_9_result_int[2]~1_cout\,
	cout => \ins300|auto_generated|divider|divider|add_sub_9_result_int[3]~3_cout\);

-- Location: LCCOMB_X25_Y19_N6
\ins300|auto_generated|divider|divider|add_sub_9_result_int[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ins300|auto_generated|divider|divider|add_sub_9_result_int[4]~5_cout\ = CARRY((\ist150|auto_generated|divider|divider|StageOut[67]~10_combout\) # (!\ins300|auto_generated|divider|divider|add_sub_9_result_int[3]~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ist150|auto_generated|divider|divider|StageOut[67]~10_combout\,
	datad => VCC,
	cin => \ins300|auto_generated|divider|divider|add_sub_9_result_int[3]~3_cout\,
	cout => \ins300|auto_generated|divider|divider|add_sub_9_result_int[4]~5_cout\);

-- Location: LCCOMB_X25_Y19_N8
\ins300|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ins300|auto_generated|divider|divider|add_sub_9_result_int[5]~7_cout\ = CARRY((!\ins300|auto_generated|divider|divider|add_sub_9_result_int[4]~5_cout\) # (!\ist150|auto_generated|divider|divider|StageOut[68]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ist150|auto_generated|divider|divider|StageOut[68]~9_combout\,
	datad => VCC,
	cin => \ins300|auto_generated|divider|divider|add_sub_9_result_int[4]~5_cout\,
	cout => \ins300|auto_generated|divider|divider|add_sub_9_result_int[5]~7_cout\);

-- Location: LCCOMB_X25_Y19_N10
\ins300|auto_generated|divider|divider|add_sub_9_result_int[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ins300|auto_generated|divider|divider|add_sub_9_result_int[6]~9_cout\ = CARRY((\ist150|auto_generated|divider|divider|StageOut[69]~8_combout\ & !\ins300|auto_generated|divider|divider|add_sub_9_result_int[5]~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ist150|auto_generated|divider|divider|StageOut[69]~8_combout\,
	datad => VCC,
	cin => \ins300|auto_generated|divider|divider|add_sub_9_result_int[5]~7_cout\,
	cout => \ins300|auto_generated|divider|divider|add_sub_9_result_int[6]~9_cout\);

-- Location: LCCOMB_X25_Y19_N12
\ins300|auto_generated|divider|divider|add_sub_9_result_int[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ins300|auto_generated|divider|divider|add_sub_9_result_int[7]~11_cout\ = CARRY((!\ist150|auto_generated|divider|divider|StageOut[70]~11_combout\ & !\ins300|auto_generated|divider|divider|add_sub_9_result_int[6]~9_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ist150|auto_generated|divider|divider|StageOut[70]~11_combout\,
	datad => VCC,
	cin => \ins300|auto_generated|divider|divider|add_sub_9_result_int[6]~9_cout\,
	cout => \ins300|auto_generated|divider|divider|add_sub_9_result_int[7]~11_cout\);

-- Location: LCCOMB_X25_Y19_N14
\ins300|auto_generated|divider|divider|add_sub_9_result_int[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ins300|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ = \ins300|auto_generated|divider|divider|add_sub_9_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \ins300|auto_generated|divider|divider|add_sub_9_result_int[7]~11_cout\,
	combout => \ins300|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\);

-- Location: LCCOMB_X24_Y20_N30
\inst7|inst27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst27~2_combout\ = ((\ist150|auto_generated|divider|divider|op_7~12_combout\ & ((!\ist150|auto_generated|divider|divider|op_6~12_combout\))) # (!\ist150|auto_generated|divider|divider|op_7~12_combout\ & 
-- ((\ins300|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\) # (\ist150|auto_generated|divider|divider|op_6~12_combout\)))) # (!\ist150|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist150|auto_generated|divider|divider|op_7~12_combout\,
	datab => \ins300|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datac => \ist150|auto_generated|divider|divider|op_5~10_combout\,
	datad => \ist150|auto_generated|divider|divider|op_6~12_combout\,
	combout => \inst7|inst27~2_combout\);

-- Location: LCCOMB_X25_Y20_N0
\inst7|inst19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst19~3_combout\ = (!\ist151|auto_generated|divider|divider|op_3~0_combout\ & (!\ist20|inst~q\ & (\ist151|auto_generated|divider|divider|op_4~2_combout\ & \ist20|inst1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist151|auto_generated|divider|divider|op_3~0_combout\,
	datab => \ist20|inst~q\,
	datac => \ist151|auto_generated|divider|divider|op_4~2_combout\,
	datad => \ist20|inst1~q\,
	combout => \inst7|inst19~3_combout\);

-- Location: LCCOMB_X23_Y20_N28
\inst7|inst19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst19~2_combout\ = (\ist20|inst4~1_combout\ & (\ist150|auto_generated|divider|divider|StageOut[78]~12_combout\ & ((\ist150|auto_generated|divider|divider|StageOut[76]~14_combout\) # 
-- (\ist150|auto_generated|divider|divider|StageOut[77]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist150|auto_generated|divider|divider|StageOut[76]~14_combout\,
	datab => \ist150|auto_generated|divider|divider|StageOut[77]~13_combout\,
	datac => \ist20|inst4~1_combout\,
	datad => \ist150|auto_generated|divider|divider|StageOut[78]~12_combout\,
	combout => \inst7|inst19~2_combout\);

-- Location: LCCOMB_X25_Y20_N12
\inst7|inst27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst27~3_combout\ = (!\inst7|inst19~2_combout\ & ((\ist151|auto_generated|divider|divider|op_4~2_combout\) # ((!\ist20|inst4~1_combout\) # (!\ist151|auto_generated|divider|divider|op_3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst19~2_combout\,
	datab => \ist151|auto_generated|divider|divider|op_4~2_combout\,
	datac => \ist151|auto_generated|divider|divider|op_3~0_combout\,
	datad => \ist20|inst4~1_combout\,
	combout => \inst7|inst27~3_combout\);

-- Location: LCCOMB_X24_Y20_N28
\inst7|inst27~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst27~4_combout\ = (\inst7|inst19~3_combout\) # (((\inst7|inst27~2_combout\ & \ist20|inst4~0_combout\)) # (!\inst7|inst27~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst27~2_combout\,
	datab => \inst7|inst19~3_combout\,
	datac => \inst7|inst27~3_combout\,
	datad => \ist20|inst4~0_combout\,
	combout => \inst7|inst27~4_combout\);

-- Location: LCCOMB_X24_Y20_N2
\inst7|inst27~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst27~5_combout\ = (\inst7|inst27~1_combout\) # ((\inst7|inst27~4_combout\) # ((!\ist151|auto_generated|divider|divider|op_5~3_combout\ & \inst7|inst10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist151|auto_generated|divider|divider|op_5~3_combout\,
	datab => \inst7|inst27~1_combout\,
	datac => \inst7|inst10~2_combout\,
	datad => \inst7|inst27~4_combout\,
	combout => \inst7|inst27~5_combout\);

-- Location: LCCOMB_X25_Y20_N30
\inst7|inst26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst26~3_combout\ = (!\ist151|auto_generated|divider|divider|op_5~3_combout\ & (\ist20|inst4~1_combout\ & ((\ist151|auto_generated|divider|divider|op_3~0_combout\) # (!\ist151|auto_generated|divider|divider|op_4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist151|auto_generated|divider|divider|op_3~0_combout\,
	datab => \ist151|auto_generated|divider|divider|op_5~3_combout\,
	datac => \ist151|auto_generated|divider|divider|op_4~2_combout\,
	datad => \ist20|inst4~1_combout\,
	combout => \inst7|inst26~3_combout\);

-- Location: LCCOMB_X24_Y20_N12
\inst7|inst26~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst26~4_combout\ = ((\ist150|auto_generated|divider|divider|op_7~12_combout\ & ((\ins300|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\) # (!\ist150|auto_generated|divider|divider|op_6~12_combout\))) # 
-- (!\ist150|auto_generated|divider|divider|op_7~12_combout\ & (\ins300|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & !\ist150|auto_generated|divider|divider|op_6~12_combout\))) # 
-- (!\ist150|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist150|auto_generated|divider|divider|op_7~12_combout\,
	datab => \ins300|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datac => \ist150|auto_generated|divider|divider|op_5~10_combout\,
	datad => \ist150|auto_generated|divider|divider|op_6~12_combout\,
	combout => \inst7|inst26~4_combout\);

-- Location: LCCOMB_X25_Y20_N22
\inst7|inst26~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst26~6_combout\ = (\inst7|inst26~4_combout\ & (\ist20|inst~q\ & \ist20|inst1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst26~4_combout\,
	datab => \ist20|inst~q\,
	datad => \ist20|inst1~q\,
	combout => \inst7|inst26~6_combout\);

-- Location: LCCOMB_X23_Y20_N8
\inst7|inst26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst26~2_combout\ = (\ist20|inst4~2_combout\ & (((!\ist22~q\ & !\ist152|auto_generated|divider|divider|StageOut[46]~14_combout\)) # (!\inst7|inst27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist22~q\,
	datab => \inst7|inst27~0_combout\,
	datac => \ist152|auto_generated|divider|divider|StageOut[46]~14_combout\,
	datad => \ist20|inst4~2_combout\,
	combout => \inst7|inst26~2_combout\);

-- Location: LCCOMB_X24_Y20_N26
\inst7|inst26~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst26~5_combout\ = (\inst7|inst26~3_combout\) # ((\inst7|inst26~6_combout\) # ((\inst7|inst26~2_combout\) # (!\inst7|inst27~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst26~3_combout\,
	datab => \inst7|inst26~6_combout\,
	datac => \inst7|inst27~3_combout\,
	datad => \inst7|inst26~2_combout\,
	combout => \inst7|inst26~5_combout\);

-- Location: LCCOMB_X23_Y20_N10
\inst7|inst25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst25~0_combout\ = (!\ist22~q\ & (\ist20|inst4~2_combout\ & ((\ist152|auto_generated|divider|divider|StageOut[46]~14_combout\) # (!\ist152|auto_generated|divider|divider|StageOut[47]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist22~q\,
	datab => \ist152|auto_generated|divider|divider|StageOut[47]~11_combout\,
	datac => \ist152|auto_generated|divider|divider|StageOut[46]~14_combout\,
	datad => \ist20|inst4~2_combout\,
	combout => \inst7|inst25~0_combout\);

-- Location: LCCOMB_X23_Y20_N0
\inst7|inst25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst25~1_combout\ = (!\ist151|auto_generated|divider|divider|op_5~3_combout\ & (\ist20|inst4~1_combout\ & ((\ist151|auto_generated|divider|divider|op_4~2_combout\) # (!\ist151|auto_generated|divider|divider|op_3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist151|auto_generated|divider|divider|op_3~0_combout\,
	datab => \ist151|auto_generated|divider|divider|op_5~3_combout\,
	datac => \ist151|auto_generated|divider|divider|op_4~2_combout\,
	datad => \ist20|inst4~1_combout\,
	combout => \inst7|inst25~1_combout\);

-- Location: LCCOMB_X24_Y20_N4
\inst7|inst25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst25~2_combout\ = (\ist20|inst4~0_combout\ & (\ins300|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & ((\ist150|auto_generated|divider|divider|op_6~12_combout\) # (!\ist150|auto_generated|divider|divider|op_7~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist150|auto_generated|divider|divider|op_7~12_combout\,
	datab => \ist20|inst4~0_combout\,
	datac => \ins300|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datad => \ist150|auto_generated|divider|divider|op_6~12_combout\,
	combout => \inst7|inst25~2_combout\);

-- Location: LCCOMB_X23_Y20_N6
\inst7|inst25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst25~3_combout\ = (\inst7|inst25~0_combout\) # ((\inst7|inst25~1_combout\) # (\inst7|inst25~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst25~0_combout\,
	datab => \inst7|inst25~1_combout\,
	datad => \inst7|inst25~2_combout\,
	combout => \inst7|inst25~3_combout\);

-- Location: LCCOMB_X25_Y20_N2
\inst7|inst24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst24~3_combout\ = (\ist152|auto_generated|divider|divider|StageOut[48]~13_combout\) # ((\ist22~q\ & (\ist152|auto_generated|divider|divider|StageOut[47]~11_combout\ $ (\ist152|auto_generated|divider|divider|StageOut[46]~14_combout\))) # 
-- (!\ist22~q\ & ((\ist152|auto_generated|divider|divider|StageOut[46]~14_combout\) # (!\ist152|auto_generated|divider|divider|StageOut[47]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist22~q\,
	datab => \ist152|auto_generated|divider|divider|StageOut[48]~13_combout\,
	datac => \ist152|auto_generated|divider|divider|StageOut[47]~11_combout\,
	datad => \ist152|auto_generated|divider|divider|StageOut[46]~14_combout\,
	combout => \inst7|inst24~3_combout\);

-- Location: LCCOMB_X24_Y20_N6
\inst7|inst24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst24~0_combout\ = ((\ist150|auto_generated|divider|divider|op_7~12_combout\ & (\ins300|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ $ (!\ist150|auto_generated|divider|divider|op_6~12_combout\))) # 
-- (!\ist150|auto_generated|divider|divider|op_7~12_combout\ & ((\ins300|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\) # (\ist150|auto_generated|divider|divider|op_6~12_combout\)))) # 
-- (!\ist150|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist150|auto_generated|divider|divider|op_7~12_combout\,
	datab => \ins300|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datac => \ist150|auto_generated|divider|divider|op_5~10_combout\,
	datad => \ist150|auto_generated|divider|divider|op_6~12_combout\,
	combout => \inst7|inst24~0_combout\);

-- Location: LCCOMB_X24_Y20_N8
\inst7|inst24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst24~1_combout\ = (\inst7|inst19~2_combout\) # ((\inst7|inst19~3_combout\) # ((\inst7|inst24~0_combout\ & \ist20|inst4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst24~0_combout\,
	datab => \inst7|inst19~2_combout\,
	datac => \inst7|inst19~3_combout\,
	datad => \ist20|inst4~0_combout\,
	combout => \inst7|inst24~1_combout\);

-- Location: LCCOMB_X25_Y20_N26
\inst7|inst24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst24~2_combout\ = (\ist20|inst4~1_combout\ & (\ist151|auto_generated|divider|divider|op_5~3_combout\ $ (((\ist151|auto_generated|divider|divider|op_4~2_combout\) # (!\ist151|auto_generated|divider|divider|op_3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist151|auto_generated|divider|divider|op_3~0_combout\,
	datab => \ist151|auto_generated|divider|divider|op_5~3_combout\,
	datac => \ist151|auto_generated|divider|divider|op_4~2_combout\,
	datad => \ist20|inst4~1_combout\,
	combout => \inst7|inst24~2_combout\);

-- Location: LCCOMB_X24_Y20_N14
\inst7|inst24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst24~4_combout\ = (\inst7|inst24~1_combout\) # ((\inst7|inst24~2_combout\) # ((\inst7|inst24~3_combout\ & \ist20|inst4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst24~3_combout\,
	datab => \ist20|inst4~2_combout\,
	datac => \inst7|inst24~1_combout\,
	datad => \inst7|inst24~2_combout\,
	combout => \inst7|inst24~4_combout\);

-- Location: LCCOMB_X23_Y20_N12
\inst7|inst23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst23~0_combout\ = (\ist20|inst4~2_combout\ & ((\ist22~q\) # ((\ist152|auto_generated|divider|divider|StageOut[47]~11_combout\) # (!\ist152|auto_generated|divider|divider|StageOut[46]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist22~q\,
	datab => \ist152|auto_generated|divider|divider|StageOut[47]~11_combout\,
	datac => \ist152|auto_generated|divider|divider|StageOut[46]~14_combout\,
	datad => \ist20|inst4~2_combout\,
	combout => \inst7|inst23~0_combout\);

-- Location: LCCOMB_X24_Y20_N20
\inst7|inst23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst23~1_combout\ = (\ist20|inst4~0_combout\ & ((\ist150|auto_generated|divider|divider|op_7~12_combout\) # ((!\ist150|auto_generated|divider|divider|op_6~12_combout\) # 
-- (!\ins300|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist150|auto_generated|divider|divider|op_7~12_combout\,
	datab => \ist20|inst4~0_combout\,
	datac => \ins300|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datad => \ist150|auto_generated|divider|divider|op_6~12_combout\,
	combout => \inst7|inst23~1_combout\);

-- Location: LCCOMB_X23_Y20_N22
\inst7|inst23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst23~2_combout\ = (\inst7|inst23~1_combout\) # ((\ist20|inst4~1_combout\ & ((\ist151|auto_generated|divider|divider|op_3~0_combout\) # (!\ist151|auto_generated|divider|divider|op_4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist151|auto_generated|divider|divider|op_3~0_combout\,
	datab => \ist151|auto_generated|divider|divider|op_4~2_combout\,
	datac => \inst7|inst23~1_combout\,
	datad => \ist20|inst4~1_combout\,
	combout => \inst7|inst23~2_combout\);

-- Location: LCCOMB_X23_Y20_N16
\inst7|inst23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst23~3_combout\ = (\inst7|inst23~0_combout\) # ((\inst7|inst23~2_combout\) # ((\ist151|auto_generated|divider|divider|op_5~3_combout\ & \ist20|inst4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst23~0_combout\,
	datab => \ist151|auto_generated|divider|divider|op_5~3_combout\,
	datac => \inst7|inst23~2_combout\,
	datad => \ist20|inst4~1_combout\,
	combout => \inst7|inst23~3_combout\);

-- Location: LCCOMB_X24_Y20_N10
\inst7|inst22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst22~1_combout\ = (!\ist150|auto_generated|divider|divider|op_6~12_combout\ & (\ist150|auto_generated|divider|divider|op_7~12_combout\ $ (\ins300|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist150|auto_generated|divider|divider|op_7~12_combout\,
	datac => \ins300|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datad => \ist150|auto_generated|divider|divider|op_6~12_combout\,
	combout => \inst7|inst22~1_combout\);

-- Location: LCCOMB_X25_Y20_N24
\inst7|inst22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst22~2_combout\ = (\ist20|inst4~1_combout\ & ((\ist151|auto_generated|divider|divider|op_5~3_combout\ $ (!\ist151|auto_generated|divider|divider|op_4~2_combout\)) # (!\ist151|auto_generated|divider|divider|op_3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist151|auto_generated|divider|divider|op_3~0_combout\,
	datab => \ist151|auto_generated|divider|divider|op_5~3_combout\,
	datac => \ist151|auto_generated|divider|divider|op_4~2_combout\,
	datad => \ist20|inst4~1_combout\,
	combout => \inst7|inst22~2_combout\);

-- Location: LCCOMB_X23_Y20_N26
\inst7|inst22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst22~0_combout\ = (\ist20|inst4~2_combout\ & ((\ist22~q\ $ (!\ist152|auto_generated|divider|divider|StageOut[46]~14_combout\)) # (!\ist152|auto_generated|divider|divider|StageOut[47]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist22~q\,
	datab => \ist152|auto_generated|divider|divider|StageOut[47]~11_combout\,
	datac => \ist152|auto_generated|divider|divider|StageOut[46]~14_combout\,
	datad => \ist20|inst4~2_combout\,
	combout => \inst7|inst22~0_combout\);

-- Location: LCCOMB_X24_Y20_N0
\inst7|inst22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst22~3_combout\ = (\inst7|inst22~2_combout\) # ((\inst7|inst22~0_combout\) # ((!\inst7|inst22~1_combout\ & \ist20|inst4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst22~1_combout\,
	datab => \inst7|inst22~2_combout\,
	datac => \inst7|inst22~0_combout\,
	datad => \ist20|inst4~0_combout\,
	combout => \inst7|inst22~3_combout\);

-- Location: LCCOMB_X24_Y20_N22
\inst7|inst21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst21~2_combout\ = ((\ins300|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ $ (!\ist150|auto_generated|divider|divider|op_6~12_combout\)) # (!\ist150|auto_generated|divider|divider|op_5~10_combout\)) # 
-- (!\ist150|auto_generated|divider|divider|op_7~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist150|auto_generated|divider|divider|op_7~12_combout\,
	datab => \ins300|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datac => \ist150|auto_generated|divider|divider|op_5~10_combout\,
	datad => \ist150|auto_generated|divider|divider|op_6~12_combout\,
	combout => \inst7|inst21~2_combout\);

-- Location: LCCOMB_X23_Y20_N4
\inst7|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst4~0_combout\ = (\ist20|inst4~1_combout\ & ((\ist151|auto_generated|divider|divider|op_4~0_combout\) # ((\ist151|auto_generated|divider|divider|op_4~1_combout\ & \ist151|auto_generated|divider|divider|StageOut[22]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist151|auto_generated|divider|divider|op_4~1_combout\,
	datab => \ist151|auto_generated|divider|divider|StageOut[22]~0_combout\,
	datac => \ist151|auto_generated|divider|divider|op_4~0_combout\,
	datad => \ist20|inst4~1_combout\,
	combout => \inst7|inst4~0_combout\);

-- Location: LCCOMB_X24_Y20_N24
\inst7|inst21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst21~3_combout\ = (\inst7|inst19~2_combout\) # ((\inst7|inst4~0_combout\) # ((\inst7|inst21~2_combout\ & \ist20|inst4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst21~2_combout\,
	datab => \inst7|inst19~2_combout\,
	datac => \inst7|inst4~0_combout\,
	datad => \ist20|inst4~0_combout\,
	combout => \inst7|inst21~3_combout\);

-- Location: LCCOMB_X25_Y20_N4
\inst7|inst21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst21~4_combout\ = (\inst7|inst21~3_combout\) # ((\ist20|inst4~1_combout\ & (\ist151|auto_generated|divider|divider|op_3~0_combout\ $ (!\ist151|auto_generated|divider|divider|op_5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist151|auto_generated|divider|divider|op_3~0_combout\,
	datab => \inst7|inst21~3_combout\,
	datac => \ist151|auto_generated|divider|divider|op_5~3_combout\,
	datad => \ist20|inst4~1_combout\,
	combout => \inst7|inst21~4_combout\);

-- Location: LCCOMB_X25_Y20_N14
\inst7|inst21~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst21~5_combout\ = (\ist152|auto_generated|divider|divider|StageOut[48]~13_combout\) # ((\ist152|auto_generated|divider|divider|StageOut[46]~14_combout\) # (\ist22~q\ $ (!\ist152|auto_generated|divider|divider|StageOut[47]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ist22~q\,
	datab => \ist152|auto_generated|divider|divider|StageOut[48]~13_combout\,
	datac => \ist152|auto_generated|divider|divider|StageOut[47]~11_combout\,
	datad => \ist152|auto_generated|divider|divider|StageOut[46]~14_combout\,
	combout => \inst7|inst21~5_combout\);

-- Location: LCCOMB_X24_Y20_N18
\inst7|inst21~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst21~6_combout\ = (\inst7|inst21~4_combout\) # ((\ist20|inst~q\ & (\inst7|inst21~5_combout\ & !\ist20|inst1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst21~4_combout\,
	datab => \ist20|inst~q\,
	datac => \inst7|inst21~5_combout\,
	datad => \ist20|inst1~q\,
	combout => \inst7|inst21~6_combout\);

ww_dig(3) <= \dig[3]~output_o\;

ww_dig(2) <= \dig[2]~output_o\;

ww_dig(1) <= \dig[1]~output_o\;

ww_seg(6) <= \seg[6]~output_o\;

ww_seg(5) <= \seg[5]~output_o\;

ww_seg(4) <= \seg[4]~output_o\;

ww_seg(3) <= \seg[3]~output_o\;

ww_seg(2) <= \seg[2]~output_o\;

ww_seg(1) <= \seg[1]~output_o\;

ww_seg(0) <= \seg[0]~output_o\;
END structure;


