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
-- Generated on "10/25/2018 19:19:28"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          JK_FF
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY JK_FF_vhd_vec_tst IS
END JK_FF_vhd_vec_tst;
ARCHITECTURE JK_FF_arch OF JK_FF_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL J : STD_LOGIC;
SIGNAL K : STD_LOGIC;
SIGNAL Q : STD_LOGIC;
SIGNAL Qbar : STD_LOGIC;
COMPONENT JK_FF
	PORT (
	clock : IN STD_LOGIC;
	J : IN STD_LOGIC;
	K : IN STD_LOGIC;
	Q : BUFFER STD_LOGIC;
	Qbar : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : JK_FF
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	J => J,
	K => K,
	Q => Q,
	Qbar => Qbar
	);

-- J
t_prcs_J: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		J <= '0';
		WAIT FOR 80000 ps;
		J <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	J <= '0';
WAIT;
END PROCESS t_prcs_J;

-- K
t_prcs_K: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		K <= '0';
		WAIT FOR 40000 ps;
		K <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	K <= '0';
WAIT;
END PROCESS t_prcs_K;

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 20000 ps;
	clock <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;
END JK_FF_arch;
