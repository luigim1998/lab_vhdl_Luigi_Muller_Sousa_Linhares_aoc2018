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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/24/2018 11:02:56"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          registrador_tipo_d
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY registrador_tipo_d_vhd_vec_tst IS
END registrador_tipo_d_vhd_vec_tst;
ARCHITECTURE registrador_tipo_d_arch OF registrador_tipo_d_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL pin : STD_LOGIC;
SIGNAL pout : STD_LOGIC;
COMPONENT registrador_tipo_d
	PORT (
	clk : IN STD_LOGIC;
	pin : IN STD_LOGIC;
	pout : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : registrador_tipo_d
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	pin => pin,
	pout => pout
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- pin
t_prcs_pin: PROCESS
BEGIN
LOOP
	pin <= '0';
	WAIT FOR 20000 ps;
	pin <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_pin;
END registrador_tipo_d_arch;
