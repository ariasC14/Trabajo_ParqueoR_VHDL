library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity gestor_plazas is
    Port (
        clk               : in std_logic;
        reset             : in std_logic;
        sensor_filtered    : in std_logic;            -- Sensor sincronizado y filtrado
        control_puerta_sig : in std_logic;            -- Control apertura puerta
        btn_bot            : in std_logic;            -- Botón para liberar plaza
        teclado_plaza      : in std_logic_vector(3 downto 0); -- Tecla para seleccionar plaza

        motor_start        : out std_logic;           -- Señal para iniciar motor
        motor_plaza        : out std_logic_vector(3 downto 0); -- Plaza destino para motor
        motor_done         : in  std_logic;           -- Señal que indica fin de movimiento motor
        plazas_ocupadas_out: out std_logic_vector(5 downto 0) -- Vector de plazas ocupadas
    );
end gestor_plazas;

architecture Behavioral of gestor_plazas is

    -- Estado interno de plazas (1 = ocupada, 0 = libre)
    signal plazas_ocupadas     : std_logic_vector(5 downto 0) := (others => '0');
    signal estado_maquina      : integer range 0 to 3 := 0;           -- Estados de la FSM
    signal motor_start_int     : std_logic := '0';
    signal motor_plaza_int     : std_logic_vector(3 downto 0) := (others => '0');

    signal sensor_prev         : std_logic := '1';                   -- Para detectar flanco descendente del sensor
    signal sensor_fallo        : std_logic := '0';                   -- Indica detección de vehículo (flanco descendente)

    signal primera_ocupada     : boolean := false;                    -- Indica si primera plaza ya fue ocupada

    constant TIMEOUT_LIMIT     : integer := 250000000;                -- Tiempo máximo de espera (timeout)
    signal timeout_counter     : integer range 0 to TIMEOUT_LIMIT := 0;

begin

    -----------------------------------------------------------------------
    -- Detección de flanco descendente en sensor_filtered (nuevo vehículo detectado)
    -----------------------------------------------------------------------
    process(clk, reset)
    begin
        if reset = '1' then
            sensor_prev <= '1';
            sensor_fallo <= '0';
        elsif rising_edge(clk) then
            sensor_prev <= sensor_filtered;
            sensor_fallo <= sensor_prev and not sensor_filtered; -- flanco descendente
        end if;
    end process;

    -----------------------------------------------------------------------
    -- Máquina de estados para gestión de plazas y control de motor
    -----------------------------------------------------------------------
    process(clk, reset)
        variable plazas_temp : std_logic_vector(5 downto 0);
        variable plaza_libre : integer := -1;
        variable i : integer;
    begin
        if reset = '1' then
            motor_start_int <= '0';
            motor_plaza_int <= (others => '0');
            plazas_ocupadas <= (others => '0');
            estado_maquina <= 0;
            timeout_counter <= 0;
            primera_ocupada <= false;
        elsif rising_edge(clk) then

            plazas_temp := plazas_ocupadas;

            -- Liberar plaza si botón liberación presionado y plaza válida seleccionada
            if btn_bot = '0' then
                if to_integer(unsigned(teclado_plaza)) >= 1 and to_integer(unsigned(teclado_plaza)) <= 6 then
                    plazas_temp(to_integer(unsigned(teclado_plaza)) - 1) := '0'; -- Marca plaza libre
                    if to_integer(unsigned(teclado_plaza)) = 1 then
                        primera_ocupada <= false; -- Si libera primera plaza, se actualiza estado
                    end if;
                end if;
            end if;

            case estado_maquina is
                when 0 =>  -- Esperando nuevo vehículo y puerta cerrada
                    if sensor_fallo = '1' and control_puerta_sig = '0' then
                        if primera_ocupada = false then
                            -- Primera plaza ocupada directamente
                            plazas_temp(0) := '1';
                            primera_ocupada <= true;
                            motor_start_int <= '0';
                            motor_plaza_int <= (others => '0');
                            estado_maquina <= 3; -- Estado para espera de apertura puerta
                            timeout_counter <= 0;
                        else
                            -- Buscar plaza libre para asignar
                            plaza_libre := -1;
                            for i in 1 to 5 loop
                                if plazas_temp(i) = '0' then
                                    plaza_libre := i;
                                    exit;
                                end if;
                            end loop;

                            if plaza_libre /= -1 then
                                -- Iniciar movimiento motor hacia plaza libre
                                motor_plaza_int <= std_logic_vector(to_unsigned(plaza_libre + 1,4));
                                motor_start_int <= '1';
                                estado_maquina <= 1; -- Estado motor en movimiento
                                timeout_counter <= 0;
                            else
                                motor_start_int <= '0'; -- No hay plazas libres, no iniciar motor
                            end if;
                        end if;
                    else
                        motor_start_int <= '0';
                    end if;

                when 1 =>  -- Motor en movimiento hacia plaza asignada
                    motor_start_int <= '0'; -- Se desactiva start tras iniciar movimiento
                    if motor_done = '1' then
                        estado_maquina <= 2; -- Esperar finalización ocupación plaza
                        timeout_counter <= 0;
                    end if;

                when 2 => -- Plaza asignada marcada como ocupada, esperar apertura de puerta
                    plazas_temp(to_integer(unsigned(motor_plaza_int)) - 1) := '1'; -- Marca plaza ocupada

                    if control_puerta_sig = '0' then
                        plazas_ocupadas <= plazas_temp;
                        estado_maquina <= 0;
                        timeout_counter <= 0;
                    else
                        if timeout_counter < TIMEOUT_LIMIT then
                            timeout_counter <= timeout_counter + 1;
                        else
                            -- Timeout para liberar estado y actualizar plazas ocupadas
                            plazas_ocupadas <= plazas_temp;
                            estado_maquina <= 0;
                            timeout_counter <= 0;
                        end if;
                    end if;

                when 3 =>  -- Espera después de ocupar primera plaza, similar a estado 2
                    if control_puerta_sig = '0' then
                        plazas_ocupadas <= plazas_temp;
                        estado_maquina <= 0;
                    else
                        if timeout_counter < TIMEOUT_LIMIT then
                            timeout_counter <= timeout_counter + 1;
                        else
                            plazas_ocupadas <= plazas_temp;
                            estado_maquina <= 0;
                            timeout_counter <= 0;
                        end if;
                    end if;

                when others =>
                    estado_maquina <= 0;
            end case;
        end if;
    end process;

    -- Salida de señales hacia módulos externos
    motor_start <= motor_start_int;
    motor_plaza <= motor_plaza_int;
    plazas_ocupadas_out <= plazas_ocupadas;

end Behavioral;
