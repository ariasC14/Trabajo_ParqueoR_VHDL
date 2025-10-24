library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity parqueadero_top is
    Port (
        clk           : in  std_logic;           -- Señal de reloj
        reset         : in  std_logic;           -- Señal de reinicio

        boton         : in  std_logic;           -- Botón de incremento manual
        btn_bot       : in  std_logic;           -- Botón adicional o secundario
        sensor_in     : in  std_logic;           -- Entrada del sensor de movimiento o presencia

        segT          : out std_logic_vector(6 downto 0);  -- Display 7 segmentos (teclado)
        filas         : in  std_logic_vector(3 downto 0);  -- Filas del teclado matricial
        columnas      : out std_logic_vector(3 downto 0);  -- Columnas del teclado matricial

        done_motor    : out std_logic;            -- Señal de finalización del motor paso a paso
        control_puerta_int : out std_logic;       -- Señal hacia el sistema de control de puerta

        seg           : out std_logic_vector(6 downto 0);  -- Display 7 segmentos (contador)
        led_full      : buffer std_logic;         -- LED indicador de parqueadero lleno
        led_verde     : out std_logic;            -- LED indicador de plaza disponible
        led_mov       : out std_logic;            -- LED de movimiento (no utilizado)

        servo_pwm     : out std_logic;            -- PWM del servomotor
        mot_A1A       : out std_logic;            -- Salida motor paso A1A
        mot_A1B       : out std_logic;            -- Salida motor paso A1B
        mot_B1A       : out std_logic;            -- Salida motor paso B1A
        mot_B1B       : out std_logic             -- Salida motor paso B1B
    );
end parqueadero_top;

architecture Behavioral of parqueadero_top is

    -- Señales internas
    signal key_val_local       : std_logic_vector(3 downto 0);
    signal seg_local           : std_logic_vector(6 downto 0);
    signal seg_c               : std_logic_vector(6 downto 0);

    signal control_puerta_sig  : std_logic;
    signal control_puerta_prev : std_logic := '0';
    signal decrementar_espacio : std_logic := '0';

    signal sensor_detected_sync : std_logic := '1';
    signal sensor_filtered      : std_logic := '1';

    signal motor_start         : std_logic := '0';
    signal motor_plaza         : std_logic_vector(3 downto 0) := (others => '0');
    signal motor_done_internal : std_logic;

    signal gestor_ocupadas     : std_logic_vector(5 downto 0);

begin
    --------------------------------------------------------------------------
    -- PROCESO 1: Sincronización del sensor mediante doble flip-flop
    -- Evita errores por señales asíncronas del sensor detectado.
    --------------------------------------------------------------------------
    process(clk, reset)
    begin
        if reset = '1' then
            sensor_detected_sync <= '1';
            sensor_filtered <= '1';
        elsif rising_edge(clk) then
            sensor_detected_sync <= sensor_in;
            sensor_filtered <= sensor_detected_sync;
        end if;
    end process;

    --------------------------------------------------------------------------
    -- PROCESO 2: Detección de flanco de subida de control_puerta_sig
    -- Genera un pulso corto (decrementar_espacio) en el momento de apertura.
    --------------------------------------------------------------------------
    process(clk, reset)
    begin
        if reset = '1' then
            control_puerta_prev <= '0';
            decrementar_espacio <= '0';
        elsif rising_edge(clk) then
            control_puerta_prev <= control_puerta_sig;
            if control_puerta_prev = '0' and control_puerta_sig = '1' then
                decrementar_espacio <= '1';  -- Pulso para decrementar el conteo
            else
                decrementar_espacio <= '0';
            end if;
        end if;
    end process;

    --------------------------------------------------------------------------
    -- INSTANCIAS DE MÓDULOS AUXILIARES
    --------------------------------------------------------------------------

    -- Módulo gestor de plazas y control de motor paso a paso
    gestor_plazas_inst: entity work.gestor_plazas
        port map (
            clk                => clk,
            reset              => reset,
            sensor_filtered    => sensor_filtered,
            control_puerta_sig => control_puerta_sig,
            btn_bot            => btn_bot,
            teclado_plaza      => key_val_local,
            motor_start        => motor_start,
            motor_plaza        => motor_plaza,
            motor_done         => motor_done_internal,
            plazas_ocupadas_out=> gestor_ocupadas
        );

    -- Contador de plazas del parqueadero
    contador_inst: entity work.contador_parqueadero
        port map (
            clk                => clk,
            reset              => reset,
            boton              => boton,
            btn_bot            => btn_bot,
            control_puerta_int => decrementar_espacio,
            seg                => seg_c,
            led_full           => led_full,
            led_verde          => led_verde
        );

    -- Control de apertura automática mediante sensor de movimiento
    sensor_movimiento_inst: entity work.sensor_movimiento
        port map (
            clk                => clk,
            reset              => reset,
            sensor_in          => sensor_in,
            parqueadero_lleno  => led_full,
            control_puerta_int => control_puerta_sig
        );

    -- Control del servomotor de la puerta
    servomotor_inst: entity work.servomotor
        port map (
            clk     => clk,
            control => control_puerta_sig,
            servo   => servo_pwm
        );

    -- Control del motor paso a paso
    motor_paso_inst: entity work.motor_28byj48_control
        port map (
            clk     => clk,
            reset   => reset,
            start   => motor_start,
            plaza   => motor_plaza,
            done    => motor_done_internal,
            A1A     => mot_A1A,
            A1B     => mot_A1B,
            B1A     => mot_B1A,
            B1B     => mot_B1B
        );

    -- Teclado matricial
    teclado_inst: entity work.teclado
        port map (
            clk       => clk,
            filas     => filas,
            columnas  => columnas,
            key       => key_val_local,
            segT      => seg_local
        );

    --------------------------------------------------------------------------
    -- ASIGNACIONES FINALES
    --------------------------------------------------------------------------
    segT <= seg_local;
    seg  <= seg_c;

    done_motor         <= motor_done_internal;
    control_puerta_int <= control_puerta_sig;

end Behavioral;
