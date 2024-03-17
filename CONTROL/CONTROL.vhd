--Circuito: Controlador de las señales del joystick
--Autor: Eduardo Chavez Martin A01799595
--       Rergis Novelo Michelle A01798576
--Curso: TE2002B

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Definición de la entidad CONTROL con sus entradas y salidas.
entity CONTROL is
    port(
        clk    : in std_logic;                          -- Reloj de entrada
        button : in std_logic_vector(4 downto 0);       -- Botones de entrada en el formato "arriba derecha abajo izquierda parar"
        stop   : out std_logic;                         -- Señal de salida para detener el juego
        direction : out std_logic_vector(1 downto 0));  -- Dirección de movimiento de salida
end entity;

architecture rtl of CONTROL is
begin
    -- Proceso principal que se ejecuta en cada flanco ascendente del reloj.
    process(clk)
        variable old_button : std_logic_vector(4 downto 0) := (others => '0'); -- Almacena el estado anterior de los botones para detectar flancos.
        variable stop_next : std_logic := '0';                                 -- Próxima señal de detención.
        variable direction_next : std_logic_vector(1 downto 0) := (others => '0'); -- Próxima dirección de movimiento.
        -- Variable para almacenar la última dirección no opuesta válida, evitando movimientos inversos directos.
        variable last_direction : std_logic_vector(1 downto 0) := "00"; -- Inicializada arbitrariamente.
    begin
        if (rising_edge(clk)) then -- Actúa en el flanco ascendente del reloj.
            -- Cambio a "arriba" si el botón correspondiente se presiona y la última dirección no es "abajo".
            if (old_button(0) = '0' and button(0) = '1') and last_direction /= "10" then
                direction_next := "00"; -- Arriba
                last_direction := "00";
            end if;
            -- Cambio a "derecha" si el botón correspondiente se presiona y la última dirección no es "izquierda".
            if (old_button(1) = '0' and button(1) = '1') and last_direction /= "11" then
                direction_next := "01"; -- Derecha
                last_direction := "01";
            end if;
            -- Cambio a "abajo" si el botón correspondiente se presiona y la última dirección no es "arriba".
            if (old_button(2) = '0' and button(2) = '1') and last_direction /= "00" then
                direction_next := "10"; -- Abajo
                last_direction := "10";
            end if;
            -- Cambio a "izquierda" si el botón correspondiente se presiona y la última dirección no es "derecha".
            if (old_button(3) = '0' and button(3) = '1') and last_direction /= "01" then
                direction_next := "11"; -- Izquierda
                last_direction := "11";
            end if;
            -- Cambio el estado de la señal de detención si se presiona el botón correspondiente.
            if (old_button(4) = '0' and button(4) = '1') then
                stop_next := not stop_next; -- Detener o continuar el juego
            end if;
            old_button := button; -- Actualiza el estado anterior de los botones.
        end if;
        stop <= stop_next; -- Actualiza la señal de detención.
        direction <= direction_next; -- Actualiza la dirección de movimiento.
    end process;
end rtl;
