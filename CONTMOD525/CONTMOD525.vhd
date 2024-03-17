--Circuito: Contador MOD 525
--Autor: Eduardo Chavez Martin A01799595
--Curso: TE2002B

--Declaracion de librerias
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

--Entidad del circuito
ENTITY CONTMOD525 IS
	PORT(CLK, RST: IN STD_LOGIC; --Bits de control
			O: OUT STD_LOGIC_VECTOR (9 DOWNTO 0)); --Over Flow del contador
	END CONTMOD525;
	
ARCHITECTURE RTL OF CONTMOD525 IS
	
	COMPONENT CONTA10BITS IS
	PORT(CLK, RST: IN STD_LOGIC; --Bits de control
			O: OUT STD_LOGIC_VECTOR (9 DOWNTO 0)); 
	END COMPONENT CONTA10BITS;
	
	
	SIGNAL D: STD_LOGIC_VECTOR (9 DOWNTO 0);
	SIGNAL R: STD_LOGIC;
	
	BEGIN 
	
	I0: CONTA10BITS PORT MAP(CLK, R, D);
	
	O <= D;

	
	PROCESS (D)
		BEGIN
			IF (RST = '1') THEN
				R <= '1';
			ELSE 
				R <= '0';
			IF (D = "1000001101") THEN
				R <= '1';
			ELSE
				R <= '0';
			END IF;
			END IF;
		END PROCESS;
		
	
	
END RTL;
	