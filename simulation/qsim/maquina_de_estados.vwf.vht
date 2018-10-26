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
-- Generated on "10/26/2018 11:42:33"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          maquina_de_estados
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY maquina_de_estados_vhd_vec_tst IS
END maquina_de_estados_vhd_vec_tst;
ARCHITECTURE maquina_de_estados_arch OF maquina_de_estados_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL P : STD_LOGIC;
SIGNAL R : STD_LOGIC;
COMPONENT maquina_de_estados
	PORT (
	P : IN STD_LOGIC;
	R : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : maquina_de_estados
	PORT MAP (
-- list connections between master ports and signals
	P => P,
	R => R
	);

-- P
t_prcs_P: PROCESS
BEGIN
	FOR i IN 1 TO 8
	LOOP
		P <= '0';
		WAIT FOR 60000 ps;
		P <= '1';
		WAIT FOR 60000 ps;
	END LOOP;
	P <= '0';
WAIT;
END PROCESS t_prcs_P;
END maquina_de_estados_arch;
