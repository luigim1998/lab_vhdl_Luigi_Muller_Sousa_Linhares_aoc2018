LIBRARY ieee; USE ieee.std_logic_1164.all; USE ieee.numeric_std.all; USE ieee.std_logic_unsigned.all;

ENTITY memoria_ram_16_bits IS
	PORT(
		adress : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		data : INOUT STD_LOGIC_VECTOR (3 DOWNTO 0); 
		WR : IN STD_LOGIC; 
		RD : IN STD_LOGIC 
	);

END memoria_ram_16_bits;

ARCHITECTURE behavior OF memoria_ram_16_bits IS

	TYPE RAM IS ARRAY (INTEGER RANGE <>) OF STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL data_out : STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL MEM : RAM (0 TO 15);

BEGIN
	data <= data_out WHEN (RD = '1') ELSE (OTHERS => 'Z');
 
	mem_write: PROCESS(adress, data, WR)
	BEGIN
		IF (WR = '1') THEN
		
		MEM(TO_INTEGER(UNSIGNED(adress))) <= data;
			
		END IF;
	END PROCESS;

	mem_read: PROCESS(adress, RD)
	BEGIN
		IF(RD = '1') THEN
		
			data_out <= MEM(TO_INTEGER(UNSIGNED(adress)));
			
		END IF;
	END PROCESS;
	
END behavior;  