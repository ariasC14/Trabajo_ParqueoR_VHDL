library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity contador_parqueadero is
    Port (
        clk                 : in  std_logic;            -- Reloj del sistema
        reset               : in  std_logic;            -- Reset asincrónico
        boton               : in  std_logic;            -- Botón de entrada de vehículo (decrementa plazas)
        btn_bot             : in  std_logic;            -- Botón para liberar plaza (incrementa plazas)
        control_puerta_int  : in  std_logic;            -- Señal para decrecer plazas (desde servomotor)
        seg                 : out std_logic_vector(6 downto 0); -- Display de 7 segmentos (ánodo común)
        led_full            : out std_logic;            -- LED rojo, parpadea si no hay plazas disponibles
        led_verde           : out std_logic             -- LED verde, encendido si hay plazas disponibles
    );
end contador_parqueadero;

architecture Behavioral of contador_parqueadero is

    -- Señal que almacena la cantidad de plazas disponibles (0 a 6)
    signal plazas_disponibles : integer range 0 to 6 := 6;

    -- Señales para detectar flancos en botones y control de puerta
    signal boton_prev         : std_logic := '0';
    signal btn_bot_prev       : std_logic := '0';
    signal control_prev       : std_logic := '0';

    -- Señal para mostrar el número en el display 7 segmentos
    signal muestra            : std_logic_vector(6 downto 0);

    -- Señales para parpadeo del LED rojo (cuando parqueadero lleno)
    signal led_state          : std_logic := '0';
    signal counter_blink      : integer range 0 to 100000000 := 0; -- Aproximadamente 2 segundos con clk 50 MHz

    -- Mapeo de dígitos 0 a 6 para display de 7 segmentos (ánodo común)
    type segmentos_array is array (0 to 6) of std_logic_vector(6 downto 0);
    constant display_map : segmentos_array := (
        "1000000", -- 0
        "1111001", -- 1
        "0100100", -- 2
        "0110000", -- 3
        "0011001", -- 4
        "0010010", -- 5
        "0000010"  -- 6
    );

begin

    ---------------------------------------------------------------------------
    -- Proceso principal para manejar conteo de plazas y parpadeo de LED
    ---------------------------------------------------------------------------
    process(clk, reset)
    begin
        if reset = '1' then
            plazas_disponibles <= 6;    -- Inicializa con todas las plazas libres
            boton_prev <= '0';
            btn_bot_prev <= '0';
            control_prev <= '0';
            counter_blink <= 0;
            led_state <= '0';
        elsif rising_edge(clk) then

            -- Detecta flanco descendente en boton para decrementar plazas
            if (boton = '0') and (boton_prev = '1') then
                if plazas_disponibles > 0 then
                    plazas_disponibles <= plazas_disponibles - 1;
                end if;
            end if;

            -- Detecta flanco descendente en btn_bot para incrementar plazas
            if (btn_bot = '0') and (btn_bot_prev = '1') then
                if plazas_disponibles < 6 then
                    plazas_disponibles <= plazas_disponibles + 1;
                end if;
            end if;

            -- Detecta flanco de subida en control_puerta_int para decrementar plazas
            if (control_prev = '0') and (control_puerta_int = '1') then
                if plazas_disponibles > 0 then
                    plazas_disponibles <= plazas_disponibles - 1;
                end if;
            end if;

            -- Actualiza estados previos para detección de flancos
            boton_prev <= boton;
            btn_bot_prev <= btn_bot;
            control_prev <= control_puerta_int;

            -- Controla parpadeo del LED rojo cuando no hay plazas disponibles
            if plazas_disponibles = 0 then
                if counter_blink < 100000000 then
                    counter_blink <= counter_blink + 1;
                else
                    counter_blink <= 0;
                    led_state <= not led_state;  -- Alterna el LED rojo
                end if;
            else
                led_state <= '0';     -- Apaga LED rojo si hay plazas
                counter_blink <= 0;   -- Reinicia contador de parpadeo
            end if;

        end if;
    end process;

    -- Asigna el valor a mostrar en el display 7 segmentos según plazas disponibles
    muestra <= display_map(plazas_disponibles);
    seg <= muestra;

    -- Asignación de LEDs indicadores
    led_full <= led_state;                             -- LED rojo parpadeante si lleno
    led_verde <= '1' when plazas_disponibles > 0 else '0'; -- LED verde encendido si plazas disponibles

end Behavioral;
