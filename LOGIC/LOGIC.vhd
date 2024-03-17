--Circuito: Logica del juego y mostrar graficas
--Autor: Eduardo Chavez Martin A01799595
--       Rergis Novelo Michelle A01798576
--Curso: TE2002B

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- La entidad LOGIC define los parámetros del juego y las interfaces de entrada/salida.
entity LOGIC is
    generic(
        screen_width        : integer := 640;  -- Ancho de la pantalla
        screen_height       : integer := 480;  -- Alto de la pantalla
        food_width          : integer := 20;   -- Ancho de la comida
        food_height         : integer := 20;   -- Alto de la comida
        head_width          : integer := 20;   -- Ancho de la cabeza de la serpiente
        snake_begin_x       : integer := 150;  -- Posición inicial X de la serpiente
        snake_begin_y       : integer := 100;  -- Posición inicial Y de la serpiente
        snake_length_begin  : integer := 1;    -- Longitud inicial de la serpiente
        snake_length_max    : integer := 150;  -- Longitud máxima de la serpiente
        food_begin_x        : integer := 300;  -- Posición inicial X de la comida
        food_begin_y        : integer := 200); -- Posición inicial Y de la comida
    port(
        clk_1               : in  std_logic;         -- Reloj principal
        direction           : in  std_logic_vector(1 downto 0); -- Dirección de movimiento
        stop                : in  std_logic;         -- Señal para detener el juego
        reset               : in  std_logic;         -- Señal para reiniciar el juego
        clk_2               : in  std_logic;         -- Reloj secundario
        en                  : in  std_logic;         -- Habilitar señal de salida
        row, col            : in  std_logic_vector(9 downto 0); -- Posiciones de fila y columna
        rout, gout, bout    : out std_logic_vector(3 downto 0)); -- Salidas de color RGB
end entity;

architecture rtl of LOGIC is
    subtype xy is std_logic_vector(19 downto 0); -- Representación de coordenadas X e Y
    type xys is array (integer range <>) of xy; -- Arreglo para almacenar coordenadas de la serpiente

    signal snake_length         : integer range 0 to snake_length_max; -- Longitud actual de la serpiente
    signal snake_mesh_xy        : xys(0 to snake_length_max - 1); -- Posiciones de la serpiente
    signal food_xy              : xy; -- Posición de la comida
    signal random_xy            : unsigned(19 downto 0); -- Coordenadas aleatorias para la comida
    signal fruits_eaten         : integer := 0; -- Contador de frutas comidas
    signal snake_speed          : signed(9 downto 0) := to_signed(3, 10); -- Velocidad inicial de la serpiente

begin

-- Proceso para mover la serpiente
snake_move:
    process(clk_1, reset, random_xy)
        variable inited                     : std_logic := '0'; -- Indica si el juego ha sido inicializado
        variable snake_head_xy_future       : xy := (others => '0'); -- Futura posición de la cabeza de la serpiente
        variable food_xy_future             : xy := (others => '0'); -- Futura posición de la comida
        variable snake_length_future        : integer := 0; -- Futura longitud de la serpiente
    begin
        if reset = '1' or inited = '0' then
            -- Reiniciar o inicializar el juego
            snake_length_future := snake_length_begin;
            fruits_eaten <= 0; -- Reiniciar contador de frutas comidas
            snake_speed <= to_signed(3, 10); -- Reiniciar velocidad
            -- Configurar posición inicial de la comida y la serpiente
            food_xy_future(19 downto 10) := std_logic_vector(to_signed(food_begin_x, 10));
            food_xy_future(9 downto 0) := std_logic_vector(to_signed(food_begin_y, 10));
            snake_head_xy_future(19 downto 10)  := std_logic_vector(to_signed(snake_begin_x, 10));
            snake_head_xy_future(9 downto 0)    := std_logic_vector(to_signed(snake_begin_y, 10));
            -- Inicializar posiciones de la serpiente
            for i in 0 to snake_length_max - 1 loop
                snake_mesh_xy(i) <= snake_head_xy_future;
            end loop;
            inited := '1';
        elsif rising_edge(clk_1) then
            if stop = '0' then
                -- Mover la serpiente según la dirección
                case direction is
                    when "00" => snake_head_xy_future(9 downto 0) := std_logic_vector(signed(snake_head_xy_future(9 downto 0)) - snake_speed);
                    when "01" => snake_head_xy_future(19 downto 10) := std_logic_vector(signed(snake_head_xy_future(19 downto 10)) + snake_speed);
                    when "10" => snake_head_xy_future(9 downto 0) := std_logic_vector(signed(snake_head_xy_future(9 downto 0)) + snake_speed);
                    when "11" => snake_head_xy_future(19 downto 10) := std_logic_vector(signed(snake_head_xy_future(19 downto 10)) - snake_speed);
                    when others => null;
                end case;
                -- Actualizar la posición de la serpiente
                snake_mesh_xy(0) <= snake_head_xy_future;
                for i in snake_length_max - 1 downto 1 loop
                    snake_mesh_xy(i) <= snake_mesh_xy(i - 1);
                end loop;

                -- Verificar colisión con ella misma
                for i in 1 to snake_length_max - 1 loop
                    if i < snake_length then
                        if snake_head_xy_future = snake_mesh_xy(i) then
                            -- Reiniciar juego si hay colisión
                            inited := '0';
                            exit;
                        end if;
                    end if;
                end loop;
                
                -- Verificar colisión con los bordes de la pantalla
                if (signed(snake_head_xy_future(19 downto 10)) < 28 or 
                    signed(snake_head_xy_future(19 downto 10)) >= 640 or
                    signed(snake_head_xy_future(9 downto 0)) < 16 or
                    signed(snake_head_xy_future(9 downto 0)) >= 461) then
                    inited := '0';
                end if;

                -- Verificar colisión con la comida
                if abs(signed(snake_head_xy_future(19 downto 10)) - signed(food_xy_future(19 downto 10))) < (food_width + head_width) / 2 and
                   abs(signed(snake_head_xy_future(9 downto 0)) - signed(food_xy_future(9 downto 0))) < (food_width + head_width) / 2 then
                    snake_length_future := snake_length_future + 1; -- Incrementar longitud de la serpiente
                    food_xy_future := std_logic_vector(random_xy); -- Generar nueva posición para la comida
                    fruits_eaten <= fruits_eaten + 1; -- Incrementar contador de frutas comidas
                    -- Aumentar velocidad cada 10 frutas comidas
                    if fruits_eaten mod 10 = 0 then
                        snake_speed <= snake_speed + to_signed(1, 10);
                    end if;
                end if;

                -- Actualizar señales
                food_xy <= food_xy_future;
                snake_length <= snake_length_future;
            end if;
        end if;
    end process;

-- Generador de números aleatorios para la posición de la comida
ramdom_number_gen:
    process(clk_2)
        variable random_x : unsigned(9 downto 0) := (others => '0');
        variable random_y : unsigned(9 downto 0) := (others => '0');
    begin
        if (rising_edge(clk_2)) then
            -- Incrementar coordenadas aleatorias y reiniciar si se alcanzan los límites
            if (random_x = to_unsigned(screen_width - 155, 10)) then 
                random_x := (others => '0');
            end if;
            if (random_y = to_unsigned(screen_height - 45, 10)) then 
                random_y := (others => '0');
            end if;
            random_x := random_x + 1;
            random_y := random_y + 1;
            -- Ajustar posición de la comida dentro de los límites de la pantalla
            random_xy(19 downto 10) <= random_x + 23;
            random_xy(9 downto 0) <= random_y + 23;
        end if;
    end process;

-- Proceso para dibujar la serpiente y la comida en la pantalla
draw:
    process(snake_length, snake_mesh_xy, food_xy, row, col, en)
        variable dx, dy             : signed(9 downto 0) := (others => '0'); -- Distancia X y Y desde una parte del cuerpo o comida
        variable is_body, is_food   : std_logic := '0'; -- Indicadores de si el píxel actual pertenece al cuerpo o a la comida
    begin
        if (en = '1') then 
            -- Dibujar cuerpo de la serpiente
            is_body := '0';
            for i in 0 to snake_length_max - 1 loop
                dx := abs(signed(col) - signed(snake_mesh_xy(i)(19 downto 10)));
                dy := abs(signed(row) - signed(snake_mesh_xy(i)(9 downto 0)));
                if (i < snake_length) then  -- Verificar si es parte válida del cuerpo
                    if (dx < head_width / 2 and dy < head_width / 2) then
                        is_body := '1';
                    end if;
                end if;
            end loop;
            -- Dibujar comida
            dx := abs(signed(col) - signed(food_xy(19 downto 10)));
            dy := abs(signed(row) - signed(food_xy(9 downto 0)));
            if (dx < food_width / 2 and dy < food_width / 2) then
                is_food := '1';
            else 
                is_food := '0';
            end if;

            -- Asignar colores según el objeto
            if (is_body = '1') then
                rout <= "0000"; gout <= "0100"; bout <= "0000";
            elsif (is_food = '1') then
                rout <= "1100"; gout <= "0000"; bout <= "0000";
            else 
                rout <= "1010"; gout <= "1100"; bout <= "1101"; -- Color de fondo
            end if;
        else 
            rout <= "0000"; gout <= "0000"; bout <= "0000"; -- Apagar píxel si 'en' es '0'
        end if;
    end process;

end rtl;

