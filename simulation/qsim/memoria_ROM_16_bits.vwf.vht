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
-- Generated on "10/26/2018 22:03:31"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          memoria_ROM_16_bits
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY memoria_ROM_16_bits_vhd_vec_tst IS
END memoria_ROM_16_bits_vhd_vec_tst;
ARCHITECTURE memoria_ROM_16_bits_arch OF memoria_ROM_16_bits_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL adress : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL enable : STD_LOGIC;
SIGNAL saida : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT memoria_ROM_16_bits
	PORT (
	adress : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	enable : IN STD_LOGIC;
	saida : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : memoria_ROM_16_bits
	PORT MAP (
-- list connections between master ports and signals
	adress => adress,
	enable => enable,
	saida => saida
	);
-- adress[4]
t_prcs_adress_4: PROCESS
BEGIN
	adress(4) <= '0';
WAIT;
END PROCESS t_prcs_adress_4;
-- adress[3]
t_prcs_adress_3: PROCESS
BEGIN
	adress(3) <= '0';
WAIT;
END PROCESS t_prcs_adress_3;
-- adress[2]
t_prcs_adress_2: PROCESS
BEGIN
	adress(2) <= '0';
	WAIT FOR 640000 ps;
	adress(2) <= '1';
WAIT;
END PROCESS t_prcs_adress_2;
-- adress[1]
t_prcs_adress_1: PROCESS
BEGIN
	adress(1) <= '0';
	WAIT FOR 320000 ps;
	adress(1) <= '1';
	WAIT FOR 320000 ps;
	adress(1) <= '0';
	WAIT FOR 320000 ps;
	adress(1) <= '1';
WAIT;
END PROCESS t_prcs_adress_1;
-- adress[0]
t_prcs_adress_0: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		adress(0) <= '0';
		WAIT FOR 160000 ps;
		adress(0) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	adress(0) <= '0';
WAIT;
END PROCESS t_prcs_adress_0;

-- enable
t_prcs_enable: PROCESS
BEGIN
	enable <= '1';
WAIT;
END PROCESS t_prcs_enable;
END memoria_ROM_16_bits_arch;
