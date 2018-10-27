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
-- Generated on "10/26/2018 21:40:46"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          memoria_ram_16_bits
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY memoria_ram_16_bits_vhd_vec_tst IS
END memoria_ram_16_bits_vhd_vec_tst;
ARCHITECTURE memoria_ram_16_bits_arch OF memoria_ram_16_bits_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL adress : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL data : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL RD : STD_LOGIC;
SIGNAL WR : STD_LOGIC;
COMPONENT memoria_ram_16_bits
	PORT (
	adress : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	data : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	RD : IN STD_LOGIC;
	WR : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : memoria_ram_16_bits
	PORT MAP (
-- list connections between master ports and signals
	adress => adress,
	data => data,
	RD => RD,
	WR => WR
	);
-- adress[3]
t_prcs_adress_3: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		adress(3) <= '0';
		WAIT FOR 80000 ps;
		adress(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	adress(3) <= '0';
WAIT;
END PROCESS t_prcs_adress_3;
-- adress[2]
t_prcs_adress_2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		adress(2) <= '0';
		WAIT FOR 40000 ps;
		adress(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	adress(2) <= '0';
WAIT;
END PROCESS t_prcs_adress_2;
-- adress[1]
t_prcs_adress_1: PROCESS
BEGIN
LOOP
	adress(1) <= '0';
	WAIT FOR 20000 ps;
	adress(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_adress_1;
-- adress[0]
t_prcs_adress_0: PROCESS
BEGIN
LOOP
	adress(0) <= '0';
	WAIT FOR 10000 ps;
	adress(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_adress_0;
-- data[3]
t_prcs_data_3: PROCESS
BEGIN
	data(3) <= '0';
	WAIT FOR 80000 ps;
	data(3) <= '1';
	WAIT FOR 80000 ps;
	data(3) <= 'Z';
	WAIT FOR 160000 ps;
	data(3) <= '0';
	WAIT FOR 80000 ps;
	data(3) <= '1';
	WAIT FOR 80000 ps;
	FOR i IN 1 TO 3
	LOOP
		data(3) <= '0';
		WAIT FOR 80000 ps;
		data(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	data(3) <= '0';
WAIT;
END PROCESS t_prcs_data_3;
-- data[2]
t_prcs_data_2: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		data(2) <= '0';
		WAIT FOR 40000 ps;
		data(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	data(2) <= 'Z';
	WAIT FOR 160000 ps;
	data(2) <= '0';
	WAIT FOR 40000 ps;
	data(2) <= '1';
	WAIT FOR 40000 ps;
	FOR i IN 1 TO 7
	LOOP
		data(2) <= '0';
		WAIT FOR 40000 ps;
		data(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	data(2) <= '0';
WAIT;
END PROCESS t_prcs_data_2;
-- data[1]
t_prcs_data_1: PROCESS
BEGIN
	FOR i IN 1 TO 4
	LOOP
		data(1) <= '0';
		WAIT FOR 20000 ps;
		data(1) <= '1';
		WAIT FOR 20000 ps;
	END LOOP;
	data(1) <= 'Z';
	WAIT FOR 160000 ps;
	data(1) <= '0';
	WAIT FOR 20000 ps;
	data(1) <= '1';
	WAIT FOR 20000 ps;
	FOR i IN 1 TO 16
	LOOP
		data(1) <= '0';
		WAIT FOR 20000 ps;
		data(1) <= '1';
		WAIT FOR 20000 ps;
	END LOOP;
WAIT;
END PROCESS t_prcs_data_1;
-- data[0]
t_prcs_data_0: PROCESS
BEGIN
	FOR i IN 1 TO 8
	LOOP
		data(0) <= '0';
		WAIT FOR 10000 ps;
		data(0) <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	data(0) <= 'Z';
	WAIT FOR 160000 ps;
	data(0) <= '0';
	WAIT FOR 10000 ps;
	data(0) <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 33
	LOOP
		data(0) <= '0';
		WAIT FOR 10000 ps;
		data(0) <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
WAIT;
END PROCESS t_prcs_data_0;

-- RD
t_prcs_RD: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		RD <= '0';
		WAIT FOR 160000 ps;
		RD <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	RD <= '0';
WAIT;
END PROCESS t_prcs_RD;

-- WR
t_prcs_WR: PROCESS
BEGIN
	WR <= '1';
	WAIT FOR 160000 ps;
	FOR i IN 1 TO 2
	LOOP
		WR <= '0';
		WAIT FOR 160000 ps;
		WR <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	WR <= '0';
	WAIT FOR 160000 ps;
	WR <= '1';
WAIT;
END PROCESS t_prcs_WR;
END memoria_ram_16_bits_arch;
