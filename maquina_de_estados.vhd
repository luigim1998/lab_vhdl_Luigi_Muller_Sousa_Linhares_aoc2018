Library ieee;
use ieee.std_logic_1164.all;

ENTITY maquina_de_estados IS
	PORT(P: IN STD_LOGIC;
		R: OUT STD_LOGIC);
END maquina_de_estados;

ARCHITECTURE behavior of maquina_de_estados IS
	TYPE est IS (A, B, C, D);
	SIGNAL estado : est;
BEGIN
abc: PROCESS(estado, P) IS
	BEGIN
	
END PROCESS abc;
R <= saida;
END behavior;