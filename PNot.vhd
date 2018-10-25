Library ieee;
use ieee.std_logic_1164.all;

ENTITY PNot IS
	PORT (pin : IN STD_LOGIC;
	Pout : OUT STD_LOGIC
	);
END PNot;

ARCHITECTURE behavior OF PNot IS
BEGIN
	Pout <= NOT Pin;
END behavior;