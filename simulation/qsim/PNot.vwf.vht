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
-- Generated on "10/25/2018 19:32:41"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          PNot
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY PNot_vhd_vec_tst IS
END PNot_vhd_vec_tst;
ARCHITECTURE PNot_arch OF PNot_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL pin : STD_LOGIC;
SIGNAL Pout : STD_LOGIC;
COMPONENT PNot
	PORT (
	pin : IN STD_LOGIC;
	Pout : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : PNot
	PORT MAP (
-- list connections between master ports and signals
	pin => pin,
	Pout => Pout
	);

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
END PNot_arch;
