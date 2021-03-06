Library ieee;
use ieee.std_logic_1164.all;

ENTITY maquina_de_estados_copia IS
	PORT(P: IN STD_LOGIC;
		clock: IN STD_LOGIC;
		R: OUT STD_LOGIC);
END maquina_de_estados_copia;

ARCHITECTURE behavior of maquina_de_estados_copia IS
	TYPE est IS (A, B, C, D);
	SIGNAL estado : est := A;
	
BEGIN
	abc: PROCESS(P, clock) IS 
	BEGIN
		IF(rising_edge(clock)) THEN
			CASE (estado) IS
				WHEN A =>
					IF (P = '1') THEN estado <= B; END IF;
				WHEN B =>
					IF (P = '1') THEN estado <= C; END IF;
				WHEN C =>
					IF (P = '1') THEN estado <= D; END IF;
				WHEN D =>
					IF (P = '1') THEN estado <= B; END IF;
					IF (P = '0') THEN estado <= A; END IF;
			END CASE;
		END IF;
	END PROCESS abc;
	
	WITH estado SELECT
		R <= '0' WHEN A | B | C,
			  '1' WHEN OTHERS;
END behavior;