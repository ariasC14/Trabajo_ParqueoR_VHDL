library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity teclado is
    port(
        clk      : in  std_logic;                       -- Reloj principal (50 MHz)
        filas    : in  std_logic_vector(3 downto 0);    -- Filas del teclado (entradas)
        columnas : out std_logic_vector(3 downto 0);    -- Columnas del teclado (salidas)
        key      : out std_logic_vector(3 downto 0);    -- Valor de la tecla presionada (binario)
        segT     : out std_logic_vector(6 downto 0)     -- Display 7 segmentos (activo en bajo)
    );
end teclado;

architecture rtl of teclado is

    -- Señales internas para control de escaneo y almacenamiento de valor
    signal scan_col : integer range 0 to 3 := 0;       -- Índice columna a activar
    signal key_val  : integer range 0 to 15 := 0;      -- Valor binario de tecla detectada
    signal clk_div  : std_logic := '0';                -- Reloj dividido para escaneo (≈ 1 ms)
    signal div_cnt  : integer := 0;                     -- Contador para división de reloj

begin

    ----------------------------------------------------------------------
    -- Divisor de frecuencia (~1 ms) para escanear el teclado
    ----------------------------------------------------------------------
    process(clk)
    begin
        if rising_edge(clk) then
            if div_cnt = 50000 then      -- Para reloj de 50 MHz ≈ 1 ms
                div_cnt <= 0;
                clk_div <= not clk_div;
            else
                div_cnt <= div_cnt + 1;
            end if;
        end if;
    end process;

    ----------------------------------------------------------------------
    -- Escaneo secuencial de columnas de teclado 4x4 (activo en bajo)
    -- Detecta filas activas y asigna valor binario correspondiente a key_val
    ----------------------------------------------------------------------
    process(clk_div)
    begin
        if rising_edge(clk_div) then
            case scan_col is
                when 0 =>
                    columnas <= "1101";  -- Activa columna 0 (bit 1 en 0)
                    if filas /= "1111" then
                        case filas is
                            when "1110" => key_val <= 1;
                            when "1101" => key_val <= 4;
                            when "1011" => key_val <= 7;
                            when "0111" => key_val <= 14; -- *
                            when others => null;
                        end case;
                    end if;
                    scan_col <= 1;

                when 1 =>
                    columnas <= "1011";  -- Activa columna 1
                    if filas /= "1111" then
                        case filas is
                            when "1110" => key_val <= 2;
                            when "1101" => key_val <= 5;
                            when "1011" => key_val <= 8;
                            when "0111" => key_val <= 0;
                            when others => null;
                        end case;
                    end if;
                    scan_col <= 2;

                when 2 =>
                    columnas <= "0111";  -- Activa columna 2
                    if filas /= "1111" then
                        case filas is
                            when "1110" => key_val <= 3;
                            when "1101" => key_val <= 6;
                            when "1011" => key_val <= 9;
                            when "0111" => key_val <= 15; -- #
                            when others => null;
                        end case;
                    end if;
                    scan_col <= 3;

                when 3 =>
                    columnas <= "1110";  -- Activa columna 3
                    if filas /= "1111" then
                        case filas is
                            when "1110" => key_val <= 10; -- A
                            when "1101" => key_val <= 11; -- B
                            when "1011" => key_val <= 12; -- C
                            when "0111" => key_val <= 13; -- D
                            when others => null;
                        end case;
                    end if;
                    scan_col <= 0;

                when others =>
                    scan_col <= 0;
            end case;
        end if;
    end process;

    ----------------------------------------------------------------------
    -- Salida del valor binario detectado
    ----------------------------------------------------------------------
    key <= std_logic_vector(to_unsigned(key_val, 4));

    ----------------------------------------------------------------------
    -- Decodificador para display de 7 segmentos (activo en bajo)
    ----------------------------------------------------------------------
    process(key_val)
    begin
        case key_val is
            when 0  => segT <= "1000000"; -- 0
            when 1  => segT <= "1111001"; -- 1
            when 2  => segT <= "0100100"; -- 2
            when 3  => segT <= "0110000"; -- 3
            when 4  => segT <= "0011001"; -- 4
            when 5  => segT <= "0010010"; -- 5
            when 6  => segT <= "0000010"; -- 6
            when others => segT <= "1111111"; -- Apagado para valores no definidos
        end case;
    end process;

end rtl;
