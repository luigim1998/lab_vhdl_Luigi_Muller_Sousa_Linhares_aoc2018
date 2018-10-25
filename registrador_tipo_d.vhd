Library ieee;
use ieee.std_logic_1164.all;

ENTITY registrador_tipo_d is 
PORT(
	clk, pin : IN STD_LOGIC;
	pout : OUT STD_LOGIC
);
END registrador_tipo_d;

ARCHITECTURE behavior OF registrador_tipo_d IS
BEGIN
	pout <= pin WHEN clk = '1';
END behavior;