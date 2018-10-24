Library ieee;
use ieee.std_logic_1164.all;

ENTITY registrador_tipo_jk IS
	PORT(pj, pk, clk: IN STD_LOGIC;
		  pq, pqn: OUT STD_LOGIC
);
END registrador_tipo_jk;

ARCHITECTURE behavior OF registrador_tipo_jk IS
BEGIN
	pq  <= pj WHEN clk = '1';
	pqn <= pk WHEN clk = '1';
END behavior;