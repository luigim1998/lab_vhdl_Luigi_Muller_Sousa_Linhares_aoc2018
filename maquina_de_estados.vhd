Library ieee;
use ieee.std_logic_1164.all;

ENTITY maquina_de_estados IS
	PORT(P: IN STD_LOGIC;
		R: OUT STD_LOGIC);
END maquina_de_estados;

ARCHITECTURE behavior of maquina_de_estados IS
	SIGNAL estado: STD_LOGIC_VECTOR(1 DOWNTO 0) := "00";
	--"00" para A
	--"01" para B
	--"10" para C
	--"11" para D
	SIGNAL saida: STD_LOGIC;
BEGIN
abc: PROCESS(estado, P)
	BEGIN
	CASE (estado) IS
		WHEN "00" =>
			IF (P = '1') THEN
				estado <= "01";
				R <= '0';
			END IF;
		WHEN "01" =>
			IF (P = '1') THEN
				estado <= "10";
				R <= '0';
			END IF;
		WHEN "10" =>
			IF (P = '1') THEN
				estado <= "11";
				R <= '1';
			END IF;
		WHEN "11" =>
			CASE (P) IS
				WHEN '0' =>
					estado <= "00";
					R <= '0';
				WHEN '1'=>
					estado <= "01";
					R <= '0';
			END CASE;
	END CASE;
END PROCESS abc;
END behavior;