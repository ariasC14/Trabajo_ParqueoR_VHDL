library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity servomotor is
    Port (
        clk     : in  std_logic;       -- Reloj del sistema (50 MHz)
        control : in  std_logic;       -- '1' => 90° | '0' => 0°
        servo   : out std_logic        -- Señal PWM dirigida al servomotor
    );
end servomotor;

architecture arch_servo of servomotor is

    ----------------------------------------------------------------------
    -- Declaración de señales internas y constantes del sistema
    ----------------------------------------------------------------------

    signal pwm_cnt     : integer := 0;   -- Contador para generación del PWM
    signal pulse_width : integer := 0;   -- Ancho del pulso PWM (define el ángulo)

    -- Frecuencia base del sistema (50 MHz)
    constant CLK_FREQ : integer := 50000000;

    -- Cálculos para generar el periodo de 20 ms (frecuencia 50 Hz)
    constant TICKS    : integer := CLK_FREQ / 50;  -- Ciclos por periodo
    constant SERVO_0  : integer := (CLK_FREQ / 1000000) * 1075; -- 1.075 ms → 0°
    constant SERVO_90 : integer := (CLK_FREQ / 1000000) * 2080; -- 2.08 ms → 90°

begin

    ----------------------------------------------------------------------
    -- PROCESO 1: Ajuste del ancho de pulso según señal 'control'
    -- Define la posición del servo (0° o 90°) en función de la entrada
    ----------------------------------------------------------------------
    process(clk)
    begin
        if rising_edge(clk) then
            if control = '1' then
                pulse_width <= SERVO_90;   -- Posiciona el servo a 90°
            else
                pulse_width <= SERVO_0;    -- Posiciona el servo a 0°
            end if;
        end if;
    end process;

    ----------------------------------------------------------------------
    -- PROCESO 2: Generador PWM
    -- Genera una señal periódica de 20 ms con ciclo útil variable
    -- para controlar el ángulo del servomotor.
    ----------------------------------------------------------------------
    process(clk)
    begin
        if rising_edge(clk) then
            -- Reinicia el contador al completar un ciclo PWM
            if pwm_cnt >= TICKS - 1 then
                pwm_cnt <= 0;
            else
                pwm_cnt <= pwm_cnt + 1;
            end if;

            -- Señal de salida PWM: activa mientras el contador
            -- esté dentro del rango definido por 'pulse_width'
            if pwm_cnt < pulse_width then
                servo <= '1';
            else
                servo <= '0';
            end if;
        end if;
    end process;

end architecture;
