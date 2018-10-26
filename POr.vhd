Library ieee;
use ieee.std_logic_1164.all;

ENTITY POr IS
	PORT(A, B: IN STD_LOGIC;
	pout: OUT STD_LOGIC);
END POr;

ARCHITECTURE behavior OF POr IS
BEGIN
	pout <= A OR B;
END behavior;