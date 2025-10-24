library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity motor_28byj48_control is
    port(
        clk        : in  std_logic;               -- Reloj 50 MHz
        reset      : in  std_logic;               -- Señal de reset
        start      : in  std_logic;               -- Señal para iniciar movimiento
        plaza      : in  std_logic_vector(3 downto 0); -- Índice de plaza destino (1 a 6)
        done       : out std_logic;               -- Señal que indica llegada a la posición
        A1A, A1B   : out std_logic;               -- Salidas para bobina A del motor
        B1A, B1B   : out std_logic                -- Salidas para bobina B del motor
    );
end entity;

architecture behavioral of motor_28byj48_control is

    -- Constantes para control y secuencia del motor
    constant TOTAL_PASOS       : integer := 2048;    -- Total de pasos para una vuelta completa
    constant PASOS_POR_PLAZA   : integer := 341;     -- Pasos para mover a una plaza (2048 / 6)
    constant VELOCIDAD_DIV     : integer := 200000;  -- División del reloj para controlar velocidad (~1 kHz)

    -- Señales internas para seguimiento de estado y control
    signal step_index  : integer range 0 to 3 := 0;           -- Índice de paso dentro de la secuencia (0-3)
    signal count_div   : integer range 0 to VELOCIDAD_DIV := 0;-- Contador para división de reloj
    signal current_pos : integer range 0 to TOTAL_PASOS-1 := 0; -- Posición actual del motor
    signal target_pos  : integer range 0 to TOTAL_PASOS-1 := 0; -- Posición objetivo a alcanzar
    signal motor_en    : std_logic := '0';                    -- Enable del motor para dar paso
    signal dir         : std_logic := '0';                     -- Dirección del motor ('1' = horario, '0' = antihorario)
    signal moving      : std_logic := '0';                     -- Indica si está en movimiento
    signal plaza_num   : integer range 0 to 6;                 -- Número de plaza convertido a entero

begin

    -- Conversión de vector std_logic_vector a entero para facilitar cálculo
    plaza_num <= to_integer(unsigned(plaza));

    -- Proceso para actualizar la posición objetivo según la plaza solicitada
    process(plaza_num)
    begin
        if plaza_num >= 1 and plaza_num <= 6 then
            target_pos <= (plaza_num - 1) * PASOS_POR_PLAZA;  -- Calcula el paso objetivo
        else
            target_pos <= 0;  -- Plaza inválida, posición por defecto 0
        end if;
    end process;

    -- Generación de señal de enable según división del reloj para controlar velocidad del motor
    process(clk, reset)
    begin
        if reset = '1' then
            count_div <= 0;
            motor_en <= '0';
        elsif rising_edge(clk) then
            if count_div = VELOCIDAD_DIV then
                count_div <= 0;
                motor_en <= '1';  -- Habilita paso motor
            else
                count_div <= count_div + 1;
                motor_en <= '0';  -- Deshabilita paso motor
            end if;
        end if;
    end process;

    -- Proceso principal de control de movimiento del motor
    process(clk, reset)
    begin
        if reset = '1' then
            current_pos <= 0;
            moving <= '0';
            done <= '0';
            step_index <= 0;
            dir <= '0';
        elsif rising_edge(clk) then
            if start = '1' then
                moving <= '1';
                done <= '0';
            end if;

            if moving = '1' and motor_en = '1' then  -- Solo avanza si motor habilitado
                if current_pos /= target_pos then
                    -- Determina dirección más corta para alcanzar objetivo
                    if abs(current_pos - target_pos) < (TOTAL_PASOS / 2) then
                        if target_pos > current_pos then
                            dir <= '1';  -- Movimiento horario
                        else
                            dir <= '0';  -- Movimiento antihorario
                        end if;
                    else
                        -- Gira alrededor del punto 0 para dirección más corta
                        if target_pos > current_pos then
                            dir <= '0';
                        else
                            dir <= '1';
                        end if;
                    end if;

                    -- Actualiza posición actual según dirección
                    if dir = '1' then
                        current_pos <= (current_pos + 1) mod TOTAL_PASOS;
                    else
                        if current_pos = 0 then
                            current_pos <= TOTAL_PASOS - 1;
                        else
                            current_pos <= current_pos - 1;
                        end if;
                    end if;

                    -- Actualiza índice de paso para secuencia de bobinas
                    if dir = '1' then
                        step_index <= (step_index + 1) mod 4;
                    else
                        if step_index = 0 then
                            step_index <= 3;
                        else
                            step_index <= step_index - 1;
                        end if;
                    end if;

                else
                    moving <= '0';  -- Llegó a la posición deseada
                    done <= '1';    -- Señal de finalización
                end if;
            end if;
        end if;
    end process;

    -- Secuencia de activación de bobinas según índice de paso
    process(step_index)
    begin
        case step_index is
            when 0 =>
                A1A <= '1'; A1B <= '0'; B1A <= '1'; B1B <= '0';
            when 1 =>
                A1A <= '0'; A1B <= '1'; B1A <= '1'; B1B <= '0';
            when 2 =>
                A1A <= '0'; A1B <= '1'; B1A <= '0'; B1B <= '1';
            when others =>  -- step_index = 3
                A1A <= '1'; A1B <= '0'; B1A <= '0'; B1B <= '1';
        end case;
    end process;

end behavioral;
