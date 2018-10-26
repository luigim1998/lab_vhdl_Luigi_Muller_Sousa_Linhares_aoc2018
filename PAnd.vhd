Library ieee;
use ieee.std_logic_1164.all;

ENTITY PAnd IS
	PORT(A, B: IN STD_LOGIC;
	pout: OUT STD_LOGIC);
END PAnd;

ARCHITECTURE behavior OF PAnd IS
BEGIN
	pout <= A AND B;
END behavior;