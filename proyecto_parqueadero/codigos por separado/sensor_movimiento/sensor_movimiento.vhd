library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sensor_movimiento is
    Port(
        clk                : in  std_logic;         -- Señal de reloj principal
        reset              : in  std_logic;         -- Señal de reinicio asíncrono
        sensor_in          : in  std_logic;         -- Sensor de movimiento (activo bajo)
        parqueadero_lleno  : in  std_logic;         -- Indicador de parqueadero lleno (1 = lleno)
        control_puerta_int : out std_logic          -- Señal de control para apertura/cierre de puerta
    );
end sensor_movimiento;

architecture Behavioral of sensor_movimiento is

    --------------------------------------------------------------------------
    -- Declaración de tipos y señales internas
    --------------------------------------------------------------------------

    type state_type is (CERRADO, CONTANDO_ABRIR, ABIERTO, CONTANDO_CERRAR);
    signal estado : state_type := CERRADO;

    constant TIEMPO_5S : integer := 50_000_000 * 3;           -- Tiempo aproximado de 3 segundos (reloj 50 MHz)
    constant DEBOUNCE_COUNT_MAX : integer := 2_500_000;       -- Filtro antirrebote (~50 ms)

    signal contador_5s       : integer := 0;                  -- Contador para temporización de los estados
    signal debounce_counter  : integer range 0 to DEBOUNCE_COUNT_MAX := 0;  -- Contador para el debounce
    signal sensor_filtered   : std_logic := '1';              -- Señal del sensor tras el filtro antirrebote

begin

    --------------------------------------------------------------------------
    -- PROCESO 1: Filtro antirrebote (debounce) para el sensor de movimiento
    -- Este proceso garantiza que los cambios de estado del sensor sean estables
    -- antes de ser considerados válidos, evitando lecturas falsas por ruido.
    --------------------------------------------------------------------------
    process(clk, reset)
    begin
        if reset = '1' then
            debounce_counter <= 0;
            sensor_filtered  <= '1';
        elsif rising_edge(clk) then
            if sensor_in /= sensor_filtered then
                debounce_counter <= 0;  -- Reinicia el contador si hay cambio en la entrada
            else
                if debounce_counter < DEBOUNCE_COUNT_MAX then
                    debounce_counter <= debounce_counter + 1;
                end if;
            end if;

            if debounce_counter = DEBOUNCE_COUNT_MAX then
                sensor_filtered <= sensor_in;  -- Actualiza valor estable del sensor
            end if;
        end if;
    end process;

    --------------------------------------------------------------------------
    -- PROCESO 2: Máquina de estados finitos (FSM)
    -- Controla la apertura y cierre de la puerta basándose en el sensor y en
    -- el estado de ocupación del parqueadero.
    -- Bloquea la apertura si el parqueadero está lleno.
    --------------------------------------------------------------------------
    process(clk, reset)
        variable abrir_permitido : boolean := false;
    begin
        if reset = '1' then
            estado <= CERRADO;
            control_puerta_int <= '0';
            contador_5s <= 0;
        elsif rising_edge(clk) then
            abrir_permitido := (parqueadero_lleno = '0');  -- Solo abre si hay espacio disponible

            case estado is
                ------------------------------------------------------------------
                -- Estado CERRADO: Puerta cerrada. Espera señal del sensor para abrir.
                ------------------------------------------------------------------
                when CERRADO =>
                    control_puerta_int <= '0';
                    if (sensor_filtered = '0') and abrir_permitido then
                        estado <= CONTANDO_ABRIR;
                        contador_5s <= 0;
                    end if;

                ------------------------------------------------------------------
                -- Estado CONTANDO_ABRIR: Espera tiempo de seguridad antes de abrir.
                ------------------------------------------------------------------
                when CONTANDO_ABRIR =>
                    control_puerta_int <= '0';
                    if contador_5s < TIEMPO_5S then
                        contador_5s <= contador_5s + 1;
                    else
                        estado <= ABIERTO;
                        contador_5s <= 0;
                    end if;

                    -- Si el sensor deja de detectar o el parqueadero se llena, cancela apertura
                    if (sensor_filtered = '1') or not abrir_permitido then
                        estado <= CERRADO;
                        contador_5s <= 0;
                    end if;

                ------------------------------------------------------------------
                -- Estado ABIERTO: La puerta se abre mientras haya movimiento.
                ------------------------------------------------------------------
                when ABIERTO =>
                    control_puerta_int <= '1';
                    if sensor_filtered = '1' then
                        estado <= CONTANDO_CERRAR;
                        contador_5s <= 0;
                    end if;

                ------------------------------------------------------------------
                -- Estado CONTANDO_CERRAR: Espera tiempo antes de cerrar.
                ------------------------------------------------------------------
                when CONTANDO_CERRAR =>
                    control_puerta_int <= '1';
                    if contador_5s < TIEMPO_5S then
                        contador_5s <= contador_5s + 1;
                    else
                        estado <= CERRADO;
                        contador_5s <= 0;
                    end if;

                    -- Si vuelve a detectar movimiento, regresa a ABIERTO
                    if sensor_filtered = '0' then
                        estado <= ABIERTO;
                        contador_5s <= 0;
                    end if;

                ------------------------------------------------------------------
                -- Estado por defecto: Reinicia a CERRADO
                ------------------------------------------------------------------
                when others =>
                    estado <= CERRADO;
                    control_puerta_int <= '0';
                    contador_5s <= 0;
            end case;
        end if;
    end process;

end Behavioral;
