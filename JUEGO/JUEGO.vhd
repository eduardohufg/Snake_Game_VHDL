--Circuito: Top Level del juego snake
--Autor: Eduardo Chavez Martin A01799595
--       Rergis Novelo Michelle A01798576
--Curso: TE2002B


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Definición de la entidad JUEGO con sus entradas y salidas.
entity JUEGO is
    port(
        START              : in  std_logic; -- Señal de inicio para el juego
        clk_1              : in  std_logic; -- Reloj principal para el sistema
        reset              : in  std_logic; -- Reinicia el juego a su estado inicial
        button             : in  std_logic_vector(4 downto 0); -- Botones de entrada para controlar el juego
        hout, vout         : out std_logic; -- Señales de sincronización horizontal y vertical para VGA
        rout, gout, bout   : out std_logic_vector(3 downto 0)); -- Salidas de color para VGA (rojo, verde, azul)
end entity;

architecture arch of JUEGO is
    
    -- Componente que maneja la lógica principal del juego.
    component LOGIC
        port(
            clk_1            : in  std_logic; -- Reloj a 60Hz para temporización en el juego
            direction           : in  std_logic_vector(1 downto 0); -- Dirección de movimiento de la serpiente
            stop                : in  std_logic; -- Señal para detener el juego
            reset               : in  std_logic; -- Reinicia la lógica del juego
            clk_2          : in  std_logic; -- Reloj a 108MHz para la generación de VGA
            en                  : in  std_logic; -- Habilita la lógica del juego
            row, col            : in  std_logic_vector(9 downto 0); -- Coordenadas de fila y columna para VGA
            rout, gout, bout    : out std_logic_vector(3 downto 0)); -- Salidas de color (RGB) para el juego
    end component;

 

    -- Componente para controlar las entradas de usuario y determinar la dirección.
    component CONTROL
        port(
            clk    : in  std_logic; -- Reloj a 60Hz para el control
            button      : in  std_logic_vector(4 downto 0); -- Entradas de botones del usuario
            stop        : out std_logic; -- Señal de parada basada en entradas de usuario
            direction   : out std_logic_vector(1 downto 0)); -- Dirección de movimiento calculada
    end component;
	 
	 
	--divisor de frecuencia para reducir a la mitad el clk
	COMponent DIVFREQ2 is
	port(
		clk, reset: in std_logic;
		F: OUT STD_logic
	);
	end COMponent DIVFREQ2;
	

	--contador de 20 bits para alentar la cuenta
	component CONTADOR20BITS is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           enable : in STD_LOGIC;
           overflow : out STD_LOGIC);
	end component CONTADOR20BITS;
	
	
	--controlador del vga que manda los pusos de sincronizacion
	COMPONENT VGA_CONTROLLER IS
	PORT(CLK, RST, START: IN STD_LOGIC;
			ENAB: OUT STD_LOGIC;
			HSYNC, VSYNC: OUT STD_LOGIC;
			FIL, COL: OUT STD_LOGIC_VECTOR (9 DOWNTO 0));
			
	END COMponent VGA_CONTROLLER;


    -- Instanciación de señales internas para conectar los componentes.
    signal clk_min, clk_max     : std_logic;
    signal joypad_direction         : std_logic_vector(1 downto 0);
    signal joypad_stop              : std_logic;
    signal vga_en                   : std_logic;
    signal vga_row, vga_col         : std_logic_vector(9 downto 0);
begin


 -- División de frecuencia para generar un reloj de 108MHz a partir del reloj principal.
    I0: DIVFREQ2 PORT MAP(CLK_1, reset, clk_max);

    -- Generación de un reloj de 60Hz para la temporización del juego y control.
    I1: CONTADOR20BITS PORT MAP(CLK_1, reset, START, clk_min );

    -- Conexión de la lógica del juego con los relojes y salidas correspondientes.
    I2: LOGIC port map(clk_min, joypad_direction, joypad_stop, reset, clk_max, vga_en, vga_row, vga_col, rout, gout, bout);

    -- Control de VGA para generar señales de sincronización y coordenadas de píxel.
    I3: VGA_CONTROLLER PORT MAP(CLK_1, reset, START, vga_en, hout, vout, vga_row, vga_col);
    
    -- Procesamiento de las entradas de usuario para determinar la dirección y control del juego.
    I4: CONTROL port map(clk_min, button, joypad_stop, joypad_direction);

end arch;