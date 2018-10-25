-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "10/25/2018 17:39:58"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	JK_FF IS
    PORT (
	clock : IN std_logic;
	J : IN std_logic;
	K : IN std_logic;
	Q : BUFFER std_logic;
	Qbar : BUFFER std_logic
	);
END JK_FF;

-- Design Ports Information
-- Q	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qbar	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF JK_FF IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_J : std_logic;
SIGNAL ww_K : std_logic;
SIGNAL ww_Q : std_logic;
SIGNAL ww_Qbar : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \K~input_o\ : std_logic;
SIGNAL \J~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \state~feeder_combout\ : std_logic;
SIGNAL \state~q\ : std_logic;
SIGNAL \ALT_INV_state~q\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_J~input_o\ : std_logic;
SIGNAL \ALT_INV_K~input_o\ : std_logic;

BEGIN

ww_clock <= clock;
ww_J <= J;
ww_K <= K;
Q <= ww_Q;
Qbar <= ww_Qbar;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_state~q\ <= NOT \state~q\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_J~input_o\ <= NOT \J~input_o\;
\ALT_INV_K~input_o\ <= NOT \K~input_o\;

-- Location: IOOBUF_X8_Y0_N19
\Q~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \state~q\,
	devoe => ww_devoe,
	o => ww_Q);

-- Location: IOOBUF_X8_Y0_N2
\Qbar~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_state~q\,
	devoe => ww_devoe,
	o => ww_Qbar);

-- Location: IOIBUF_X8_Y0_N52
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\K~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_K,
	o => \K~input_o\);

-- Location: IOIBUF_X6_Y0_N35
\J~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_J,
	o => \J~input_o\);

-- Location: LABCELL_X9_Y1_N51
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \J~input_o\ & ( \state~q\ & ( !\K~input_o\ ) ) ) # ( !\J~input_o\ & ( \state~q\ & ( !\K~input_o\ ) ) ) # ( \J~input_o\ & ( !\state~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_K~input_o\,
	datae => \ALT_INV_J~input_o\,
	dataf => \ALT_INV_state~q\,
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X9_Y1_N42
\state~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~feeder_combout\ = ( \Mux0~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux0~0_combout\,
	combout => \state~feeder_combout\);

-- Location: FF_X9_Y1_N44
state : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \state~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state~q\);

-- Location: LABCELL_X9_Y42_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


