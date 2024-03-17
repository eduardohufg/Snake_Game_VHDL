--Circuito: Maquina de estados semaforo
--Autor: Eduardo Chavez Martin A01799595
--Curso: TE2002B

--Declaracion de librerias
library ieee;
use ieee.std_logic_1164.all;

--Entidad del Circuito
entity MESTADOSVSYNC is
   --	entradas de control, tiempos y salidas
	port ( RST, CLK, START: in std_logic;
			 CUENTA    :  in std_logic_vector(9 downto 0);
			 VSYNC: OUT STD_logic;
			 VA: OUT STD_logic);
end MESTADOSVSYNC; 

ARCHITECTURE ARC OF MESTADOSVSYNC IS

	type estados is (IDLE, S1, S2, S3, S4);
	signal EDO, EDO_F : estados;
	
	begin 
	 --Declaracion del Flip Flop D para pasar del
	 --estado presente al futuro
		process(CLK, RST)
			begin 
				if RST = '1' then 
					EDO <= IDLE;
				elsif CLK'event and CLK='1' then
					EDO <= EDO_F;
				end if ;
			end process;
	
	process(EDO, cuenta, START)
			begin
				case EDO is 
					when IDLE => if START = '1' then 
										 EDO_F <= S1;
									 else 
										 EDO_F <= IDLE;
									 end if;
					
					when  S1  => if cuenta = "0000000010" then 
										EDO_F <= S2;
								    else 
										EDO_F <= S1;
								    end if;
									 
					when  S2  => if cuenta = "0000100011" then 
										EDO_F <= S3;
								    else 
										EDO_F <= S2;
								    end if;
									 
					when  S3  => if cuenta = "1000000011" then 
										EDO_F <= S4;
								    else 
										EDO_F <= S3;
								    end if;
									 
				   when  S4  => if cuenta = "1000001100" then 
										EDO_F <= IDLE;
								    else 
										EDO_F <= S4;
								    end if;
									
				end case;
			end process;
			
			salidas: process(EDO)
			begin
				case EDO is 
					when S1 => 		VSYNC<= '0';
										VA <= '0';
										
									
									
					when S2 =>     VSYNC<= '1';
										VA <= '0';
										
									
									
					when S3 => 		VSYNC<= '1';
										VA <= '1';
										
									
					when S4 =>     VSYNC<= '1';
										VA <= '0';
										
										
					when IDLE =>   VSYNC<= '0';
										VA <= '0';
										

				end case;
			end process;
	 
END ARC;
	 