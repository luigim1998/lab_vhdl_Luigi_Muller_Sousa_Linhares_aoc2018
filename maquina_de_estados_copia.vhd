Library ieee;
use ieee.std_logic_1164.all;

ENTITY maquina_de_estados IS
	PORT(P: IN STD_LOGIC;
		clock: IN STD_LOGIC;
		R: OUT STD_LOGIC);
END maquina_de_estados;

ARCHITECTURE behavior of maquina_de_estados IS
	SIGNAL estado : STD_LOGIC_VECTOR(1 DOWNTO 0) := "00";
	
BEGIN
	abc: PROCESS(P, clock) IS 
	BEGIN
		IF(rising_edge(clock)) THEN
			CASE (estado) IS
				WHEN "00" =>
					IF (P = '1') THEN estado <= "01"; END IF;
				WHEN "01" =>
					IF (P = '1') THEN estado <= "10"; END IF;
				WHEN "10" =>
					IF (P = '1') THEN estado <= "11"; END IF;
				WHEN "11" =>
					IF (P = '1') THEN estado <= "01"; END IF;
					IF (P = '0') THEN estado <= "00"; END IF;
			END CASE;
		END IF;
	END PROCESS abc;
	
	WITH estado SELECT
		R <= '0' WHEN "00" | "01" | "10",
			  '1' WHEN OTHERS;
END behavior;