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

-- DATE "10/24/2018 14:43:17"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	registrador_tipo_d IS
    PORT (
	clk : IN std_logic;
	pin : IN std_logic;
	pout : BUFFER std_logic
	);
END registrador_tipo_d;

-- Design Ports Information
-- pout	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF registrador_tipo_d IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_pin : std_logic;
SIGNAL ww_pout : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \pin~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \pout$latch~combout\ : std_logic;
SIGNAL \ALT_INV_clk~input_o\ : std_logic;
SIGNAL \ALT_INV_pin~input_o\ : std_logic;
SIGNAL \ALT_INV_pout$latch~combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_pin <= pin;
pout <= ww_pout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_clk~input_o\ <= NOT \clk~input_o\;
\ALT_INV_pin~input_o\ <= NOT \pin~input_o\;
\ALT_INV_pout$latch~combout\ <= NOT \pout$latch~combout\;

-- Location: IOOBUF_X89_Y8_N56
\pout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pout$latch~combout\,
	devoe => ww_devoe,
	o => ww_pout);

-- Location: IOIBUF_X89_Y8_N4
\pin~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin,
	o => \pin~input_o\);

-- Location: IOIBUF_X89_Y8_N21
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: LABCELL_X88_Y8_N30
\pout$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \pout$latch~combout\ = ( \clk~input_o\ & ( \pin~input_o\ ) ) # ( !\clk~input_o\ & ( \pout$latch~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_pin~input_o\,
	datad => \ALT_INV_pout$latch~combout\,
	dataf => \ALT_INV_clk~input_o\,
	combout => \pout$latch~combout\);

-- Location: LABCELL_X64_Y15_N3
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


