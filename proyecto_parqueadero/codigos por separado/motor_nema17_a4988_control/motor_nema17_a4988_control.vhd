library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity motor_nema17_a4988_control is
    port(
        clk        : in  std_logic;               -- Reloj 50 MHz
        reset      : in  std_logic;               -- Señal de reset
        start      : in  std_logic;               -- Inicia el movimiento
        plaza      : in  std_logic_vector(3 downto 0); -- Plaza destino (1 a 6)
        done       : out std_logic;               -- Indica llegada a posición
        STEP       : out std_logic;               -- Pin STEP del A4988
        DIR        : out std_logic;               -- Pin DIR del A4988
        ENABLE     : out std_logic                -- Pin ENABLE del A4988 (activo bajo)
    );
end entity;

architecture behavioral of motor_nema17_a4988_control is

    ----------------------------------------------------------------------
    -- Parámetros de configuración del motor y del controlador A4988
    ----------------------------------------------------------------------

    constant TOTAL_PASOS       : integer := 200;     -- 200 pasos por revolución
    constant PASOS_POR_PLAZA   : integer := 33;      -- Aproximadamente 1/6 de vuelta (~33 pasos)
    constant VELOCIDAD_DIV     : integer := 50000;   -- Control de velocidad (~1 kHz)

    -- Duración mínima del pulso STEP (A4988 requiere >= 1 µs HIGH y LOW)
    constant STEP_PULSE_WIDTH  : integer := 50;      -- 1 µs @ 50 MHz = 50 ciclos de reloj

    -- Señales internas de control
    signal step_pulse_counter : integer range 0 to STEP_PULSE_WIDTH := 0;
    signal step_pulse_state   : std_logic := '0';
    signal count_div          : integer range 0 to VELOCIDAD_DIV := 0;
    signal current_pos        : integer range 0 to TOTAL_PASOS-1 := 0;
    signal target_pos         : integer range 0 to TOTAL_PASOS-1 := 0;
    signal motor_en           : std_logic := '0';
    signal dir_internal       : std_logic := '0';
    signal moving             : std_logic := '0';
    signal plaza_num          : integer range 0 to 6;
    signal step_trigger       : std_logic := '0';

begin

    ----------------------------------------------------------------------
    -- Asignaciones directas a pines del controlador A4988
    ----------------------------------------------------------------------
    plaza_num <= to_integer(unsigned(plaza));
    DIR <= dir_internal;             -- Dirección de rotación
    ENABLE <= '0';                   -- A4988 habilitado permanentemente (activo bajo)

    ----------------------------------------------------------------------
    -- Cálculo de posición objetivo según plaza seleccionada
    ----------------------------------------------------------------------
    process(plaza_num)
    begin
        if plaza_num >= 1 and plaza_num <= 6 then
            target_pos <= (plaza_num - 1) * PASOS_POR_PLAZA;
        else
            target_pos <= 0;
        end if;
    end process;

    ----------------------------------------------------------------------
    -- Generador de frecuencia base para control de velocidad del motor
    ----------------------------------------------------------------------
    process(clk, reset)
    begin
        if reset = '1' then
            count_div <= 0;
            motor_en <= '0';
        elsif rising_edge(clk) then
            if count_div = VELOCIDAD_DIV then
                count_div <= 0;
                motor_en <= '1';      -- Habilita un avance de paso
            else
                count_div <= count_div + 1;
                motor_en <= '0';
            end if;
        end if;
    end process;

    ----------------------------------------------------------------------
    -- Generador del pulso STEP del A4988 (mínimo 1 µs HIGH y LOW)
    ----------------------------------------------------------------------
    process(clk, reset)
    begin
        if reset = '1' then
            step_pulse_counter <= 0;
            step_pulse_state <= '0';
            STEP <= '0';
        elsif rising_edge(clk) then
            if step_trigger = '1' then
                -- Inicia nuevo pulso STEP
                step_pulse_state <= '1';
                step_pulse_counter <= 0;
                STEP <= '1';
            elsif step_pulse_state = '1' then
                -- Mantiene pulso HIGH al menos por 1 µs
                if step_pulse_counter < STEP_PULSE_WIDTH then
                    step_pulse_counter <= step_pulse_counter + 1;
                    STEP <= '1';
                elsif step_pulse_counter < 2 * STEP_PULSE_WIDTH then
                    -- Mantiene LOW otro 1 µs
                    step_pulse_counter <= step_pulse_counter + 1;
                    STEP <= '0';
                else
                    step_pulse_state <= '0';
                    STEP <= '0';
                end if;
            else
                STEP <= '0';
            end if;
        end if;
    end process;

    ----------------------------------------------------------------------
    -- Máquina de control de movimiento (posición, dirección y pasos)
    ----------------------------------------------------------------------
    process(clk, reset)
    begin
        if reset = '1' then
            current_pos <= 0;
            moving <= '0';
            done <= '0';
            dir_internal <= '0';
            step_trigger <= '0';
        elsif rising_edge(clk) then
            step_trigger <= '0'; -- Por defecto no genera paso

            if start = '1' then
                moving <= '1';
                done <= '0';
            end if;

            if moving = '1' and motor_en = '1' and step_pulse_state = '0' then
                if current_pos /= target_pos then
                    ------------------------------------------------------
                    -- Selección de la dirección más corta hacia el destino
                    ------------------------------------------------------
                    if abs(current_pos - target_pos) < (TOTAL_PASOS / 2) then
                        if target_pos > current_pos then
                            dir_internal <= '1'; -- Horario
                        else
                            dir_internal <= '0'; -- Antihorario
                        end if;
                    else
                        if target_pos > current_pos then
                            dir_internal <= '0';
                        else
                            dir_internal <= '1';
                        end if;
                    end if;

                    ------------------------------------------------------
                    -- Avanza un paso en la dirección seleccionada
                    ------------------------------------------------------
                    if dir_internal = '1' then
                        current_pos <= (current_pos + 1) mod TOTAL_PASOS;
                    else
                        if current_pos = 0 then
                            current_pos <= TOTAL_PASOS - 1;
                        else
                            current_pos <= current_pos - 1;
                        end if;
                    end if;

                    step_trigger <= '1';  -- Genera un pulso STEP

                else
                    moving <= '0';        -- Movimiento completado
                    done <= '1';          -- Señal de fin de movimiento
                end if;
            end if;
        end if;
    end process;

end behavioral;
