--Circuito: Contador de 24 Bits
--Autor: Eduardo Chavez Martin A01799595
--Curso: TE2002B

--Declaracion de librerias
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

--Entidad del circuito
ENTITY CONTADOR24BITS IS
	PORT(CLK, RST, START: IN STD_LOGIC; --Bits de control
			O: OUT STD_LOGIC); --Over Flow del contador
	END CONTADOR24BITS;
	
ARCHITECTURE RTL OF CONTADOR24BITS IS

--Declaracion del componente SUMA24

	COMPONENT SUMAUNO24 IS

	PORT(A: IN STD_LOGIC_VECTOR (23 DOWNTO 0);
			S: OUT STD_LOGIC_VECTOR(23 DOWNTO 0));
			
	END COMPONENT SUMAUNO24;
		
	SIGNAL D, Q: STD_LOGIC_VECTOR (23 DOWNTO 0);
	
	BEGIN
	--Signals para la entrada y salida del Flip Flop
	
	I0: SUMAUNO24 PORT MAP(Q, D);
	
	--Declaracion del Flip Flop
	PROCESS(CLK, RST, START)
		BEGIN 
			IF (START = '1') THEN
			
				IF(RST = '1') THEN 
					Q <= X"000000";
				ELSIF (CLK 'EVENT AND CLK = '1') THEN
					Q <= D;
				END IF;
			END IF;
			END PROCESS;
			
		--Verifica si el contador ya termino para mandar
		--el over Flow
	PROCESS (Q)
		BEGIN 	
			IF (Q = X"FFFFFF") THEN
				O <= '1';
			ELSE
				O <= '0';
			END IF;
		END PROCESS;
		
	END RTL;
	
	
				
				
				
				
				