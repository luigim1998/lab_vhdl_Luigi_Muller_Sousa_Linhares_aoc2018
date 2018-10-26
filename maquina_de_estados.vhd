Library ieee;
use ieee_std_logic.all;

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
abc: PROCESS(P)
	CASE (estado) IS
		WHEN "00" =>
			IF (P = '1') THEN
				estado := "01";
				R <= '0';
		WHEN "01" =>
	END CASE
END PROCESS;