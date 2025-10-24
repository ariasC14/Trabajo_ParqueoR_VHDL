library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity contador_monedas is
    Port (
        clk          : in  std_logic;
        reset        : in  std_logic;
        pir_sensor   : in  std_logic;   -- Sensor PIR (activo en alto)
        sensor_500   : in  std_logic;   -- Sensor monedas 500 (activo bajo)
        sensor_1000  : in  std_logic;   -- Sensor monedas 1000 (activo bajo)
        seg_unidades : out std_logic_vector(6 downto 0); -- Display dígito unidades
        seg_decenas  : out std_logic_vector(6 downto 0); -- Display dígito decenas
        valor_bits   : out std_logic_vector(7 downto 0) -- Valor total en bits
    );
end contador_monedas;

architecture Behavioral of contador_monedas is

    -- Señales internas para filtrado antirrebote
    signal sensor_500_filtrado  : std_logic := '1';
    signal sensor_1000_filtrado : std_logic := '1';

    -- Señales para detectar flancos descendentes (moneda insertada)
    signal sensor_500_prev  : std_logic := '1';
    signal sensor_1000_prev : std_logic := '1';

    -- Contador total en unidades de moneda
    signal contador_total : unsigned(7 downto 0) := (others => '0');

    -- Dígitos para pantalla
    signal unidades : unsigned(3 downto 0);
    signal decenas  : unsigned(3 downto 0);

    -- Contadores para debouncing
    signal debounce_counter_500  : unsigned(20 downto 0) := (others => '0');
    signal debounce_counter_1000 : unsigned(20 downto 0) := (others => '0');

    -- Tiempo de debounce (20 ms aprox con clk 50 MHz)
    constant DEBOUNCE_TIME : integer := 1000000;

    -- Función para convertir dígito a código de display 7 segmentos activo en bajo
    function digit_to_7seg(d : unsigned(3 downto 0)) return std_logic_vector is
    begin
        case d is
            when "0000" => return "1000000"; -- 0
            when "0001" => return "1111001"; -- 1
            when "0010" => return "0100100"; -- 2
            when "0011" => return "0110000"; -- 3
            when "0100" => return "0011001"; -- 4
            when "0101" => return "0010010"; -- 5
            when "0110" => return "0000010"; -- 6
            when "0111" => return "1111000"; -- 7
            when "1000" => return "0000000"; -- 8
            when "1001" => return "0011000"; -- 9
            when others => return "1111111"; -- Apagado
        end case;
    end function;

begin

    ----------------------------------------------------------------------
    -- Proceso 1: Debounce para sensor monedas 500
    -- Para evitar cambios falsos debido a ruido
    ----------------------------------------------------------------------
    process(clk, reset)
    begin
        if reset = '1' then
            debounce_counter_500 <= (others => '0');
            sensor_500_filtrado <= '1';
        elsif rising_edge(clk) then
            if sensor_500 = sensor_500_filtrado then
                debounce_counter_500 <= (others => '0'); -- Sin cambio
            else
                if debounce_counter_500 = DEBOUNCE_TIME then
                    sensor_500_filtrado <= sensor_500; -- Actualiza valor estable
                    debounce_counter_500 <= (others => '0');
                else
                    debounce_counter_500 <= debounce_counter_500 + 1;
                end if;
            end if;
        end if;
    end process;

    ----------------------------------------------------------------------
    -- Proceso 2: Debounce para sensor monedas 1000
    -- Similar al anterior para evitar ruido
    ----------------------------------------------------------------------
    process(clk, reset)
    begin
        if reset = '1' then
            debounce_counter_1000 <= (others => '0');
            sensor_1000_filtrado <= '1';
        elsif rising_edge(clk) then
            if sensor_1000 = sensor_1000_filtrado then
                debounce_counter_1000 <= (others => '0');
            else
                if debounce_counter_1000 = DEBOUNCE_TIME then
                    sensor_1000_filtrado <= sensor_1000; -- Actualiza valor
                    debounce_counter_1000 <= (others => '0');
                else
                    debounce_counter_1000 <= debounce_counter_1000 + 1;
                end if;
            end if;
        end if;
    end process;

    ----------------------------------------------------------------------
    -- Proceso 3: Conteo de monedas cuando hay movimiento (PIR activo)
    -- Detecta flancos descendentes en monedero y los suma al total
    ----------------------------------------------------------------------
    process(clk, reset)
    begin
        if reset = '1' then
            sensor_500_prev <= '1';
            sensor_1000_prev <= '1';
            contador_total <= (others => '0');
        elsif rising_edge(clk) then
            if pir_sensor = '1' then  -- Movimiento detectado
                -- Moneda de 500 (detectada por flanco descendente)
                if sensor_500_prev = '1' and sensor_500_filtrado = '0' then
                    if contador_total >= 95 then
                        contador_total <= (others => '0'); -- Reset tras 99
                    else
                        contador_total <= contador_total + 5; -- Suma 5 unidades
                    end if;
                end if;
                sensor_500_prev <= sensor_500_filtrado;

                -- Moneda de 1000 (detectada por flanco descendente)
                if sensor_1000_prev = '1' and sensor_1000_filtrado = '0' then
                    if contador_total >= 90 then
                        contador_total <= (others => '0');
                    else
                        contador_total <= contador_total + 10; -- Suma 10 unidades
                    end if;
                end if;
                sensor_1000_prev <= sensor_1000_filtrado;
            end if;
        end if;
    end process;

    ----------------------------------------------------------------------
    -- Proceso 4: Separar dígitos para mostrar en displays 7 segmentos
    ----------------------------------------------------------------------
    process(contador_total)
        variable temp : integer;
    begin
        temp := to_integer(contador_total);
        if temp > 99 then
            temp := 0; -- Reiniciar si se supera 99
        end if;
        decenas  <= to_unsigned(temp / 10, 4);
        unidades <= to_unsigned(temp mod 10, 4);
    end process;

    -- Asignación de códigos para los displays
    seg_unidades <= digit_to_7seg(unidades);
    seg_decenas  <= digit_to_7seg(decenas);
    valor_bits   <= std_logic_vector(contador_total);

end Behavioral;
