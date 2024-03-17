--Circuito: Contador MOD 800
--Autor: Eduardo Chavez Martin A01799595
--Curso: TE2002B

--Declaracion de librerias
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

--Entidad del circuito
ENTITY CONT800 IS
	PORT(CLK, RST: IN STD_LOGIC; --Bits de control
			O: OUT STD_LOGIC_VECTOR (9 DOWNTO 0);
			ov: out std_LOGIC); --Over Flow del contador
	END CONT800;
	
ARCHITECTURE RTL OF CONT800 IS

--Declaracion del componente SUMA24

	COMPONENT SUMAUNO10 IS

	PORT(A: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
			S: OUT STD_LOGIC_VECTOR(9 DOWNTO 0));
			
	END COMPONENT SUMAUNO10;
		
	SIGNAL D, Q: STD_LOGIC_VECTOR (9 DOWNTO 0);
	
	BEGIN
	--Signals para la entrada y salida del Flip Flop
	
	I0: SUMAUNO10 PORT MAP(Q, D);
	
	--Declaracion del Flip Flop
	PROCESS(CLK, RST)
		BEGIN 
			
				IF(RST = '1') THEN 
					Q <= "0000000000";
					ov <= '0';
				ELSIF (CLK 'EVENT AND CLK = '1') THEN
					Q <= D;
					IF(Q = "1100011111") THEN
						Q <= "0000000000";
						OV <= '1';
					ELSE
					 OV<= '0';
					END IF;
				END IF;
		
			END PROCESS;
			
	O <= Q;
			

	END RTL;