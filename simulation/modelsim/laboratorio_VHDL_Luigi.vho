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

-- DATE "10/26/2018 11:25:42"

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

ENTITY 	maquina_de_estados IS
    PORT (
	P : IN std_logic;
	R : OUT std_logic
	);
END maquina_de_estados;

-- Design Ports Information
-- R	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF maquina_de_estados IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_P : std_logic;
SIGNAL ww_R : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \P~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \saida~combout\ : std_logic;
SIGNAL estado : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_P~input_o\ : std_logic;
SIGNAL ALT_INV_estado : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_saida~combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_P <= P;
R <= ww_R;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_P~input_o\ <= NOT \P~input_o\;
ALT_INV_estado(1) <= NOT estado(1);
ALT_INV_estado(0) <= NOT estado(0);
\ALT_INV_saida~combout\ <= NOT \saida~combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;

-- Location: IOOBUF_X89_Y37_N39
\R~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~combout\,
	devoe => ww_devoe,
	o => ww_R);

-- Location: IOIBUF_X89_Y37_N55
\P~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P,
	o => \P~input_o\);

-- Location: LABCELL_X88_Y37_N30
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( !estado(1) & ( estado(0) ) ) # ( estado(1) & ( !estado(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_estado(1),
	dataf => ALT_INV_estado(0),
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X88_Y37_N51
\estado[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- estado(1) = ( \Mux1~0_combout\ & ( \Mux3~0_combout\ ) ) # ( !\Mux1~0_combout\ & ( \Mux3~0_combout\ & ( estado(1) ) ) ) # ( !\Mux1~0_combout\ & ( !\Mux3~0_combout\ & ( estado(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_estado(1),
	datae => \ALT_INV_Mux1~0_combout\,
	dataf => \ALT_INV_Mux3~0_combout\,
	combout => estado(1));

-- Location: LABCELL_X88_Y37_N12
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( estado(0) & ( estado(1) & ( \P~input_o\ ) ) ) # ( !estado(0) & ( estado(1) ) ) # ( !estado(0) & ( !estado(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_P~input_o\,
	datae => ALT_INV_estado(0),
	dataf => ALT_INV_estado(1),
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X88_Y37_N21
\estado[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- estado(0) = ( estado(0) & ( \Mux2~0_combout\ ) ) # ( !estado(0) & ( \Mux2~0_combout\ & ( \Mux1~0_combout\ ) ) ) # ( estado(0) & ( !\Mux2~0_combout\ & ( !\Mux1~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mux1~0_combout\,
	datae => ALT_INV_estado(0),
	dataf => \ALT_INV_Mux2~0_combout\,
	combout => estado(0));

-- Location: LABCELL_X88_Y37_N36
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( estado(1) & ( \P~input_o\ ) ) # ( !estado(1) & ( \P~input_o\ ) ) # ( estado(1) & ( !\P~input_o\ & ( estado(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_estado(0),
	datae => ALT_INV_estado(1),
	dataf => \ALT_INV_P~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X88_Y37_N54
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( !estado(0) & ( estado(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_estado(1),
	dataf => ALT_INV_estado(0),
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X88_Y37_N45
saida : cyclonev_lcell_comb
-- Equation(s):
-- \saida~combout\ = ( \saida~combout\ & ( \Mux0~0_combout\ ) ) # ( !\saida~combout\ & ( \Mux0~0_combout\ & ( \Mux1~0_combout\ ) ) ) # ( \saida~combout\ & ( !\Mux0~0_combout\ & ( !\Mux1~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mux1~0_combout\,
	datae => \ALT_INV_saida~combout\,
	dataf => \ALT_INV_Mux0~0_combout\,
	combout => \saida~combout\);

-- Location: LABCELL_X77_Y31_N3
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


