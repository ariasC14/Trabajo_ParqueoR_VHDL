library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity motor_parqueadero_control is
    Port (
        clk         : in  std_logic;
        reset       : in  std_logic;
        nuevo_auto  : in  std_logic;                  -- Señal de entrada de vehículo
        tecla_val   : in  std_logic_vector(3 downto 0);  -- Entrada del teclado (1-6)
        liberar     : in  std_logic;                  -- Señal para liberar con teclado
        enable      : out std_logic;                  -- Habilita motor paso a paso
        dir         : out std_logic;                  -- Direccion motor: 0 derecha / 1 izquierda
        
        pos_actual  : out integer range 1 to 6;       -- Posicion actual motor
        plazas_disp : out integer range 0 to 6        -- Espacios disponibles
    );
end motor_parqueadero_control;

architecture Behavioral of motor_parqueadero_control is

    signal estado_espacios : std_logic_vector(5 downto 0) := (others => '0'); -- 1 = ocupado
    signal indice_actual   : integer range 1 to 6 := 1;  -- posición inicial del motor
    signal plazas_total    : integer range 0 to 6 := 6;
    signal target_pos      : integer range 1 to 6 := 1;
    signal motor_enable    : std_logic := '0';
    signal motor_dir       : std_logic := '0';

begin

    process(clk, reset)
    begin
        if reset = '1' then
            estado_espacios <= (others => '0');
            indice_actual <= 1;
            plazas_total <= 6;
            motor_enable <= '0';
            motor_dir <= '0';
        elsif rising_edge(clk) then

            -- 1. INGRESAR AUTO NUEVO
            if nuevo_auto = '1' then
                -- busca el primer espacio libre
                for i in 1 to 6 loop
                    if estado_espacios(i-1) = '0' then
                        estado_espacios(i-1) <= '1';    -- marca ocupado
                        plazas_total <= plazas_total - 1;
                        target_pos <= i;                -- mover motor a ese espacio
                        exit;
                    end if;
                end loop;
            end if;

            -- 2. LIBERAR AUTO (vía teclado)
            if liberar = '1' then
                if to_integer(unsigned(tecla_val)) >= 1 and to_integer(unsigned(tecla_val)) <= 6 then
                    if estado_espacios(to_integer(unsigned(tecla_val))-1) = '1' then
                        estado_espacios(to_integer(unsigned(tecla_val))-1) <= '0';  -- liberar
                        plazas_total <= plazas_total + 1;
                        target_pos <= to_integer(unsigned(tecla_val));              -- mueve motor al lugar
                    end if;
                end if;
            end if;

            -- 3. Decidir dirección de movimiento
            if target_pos /= indice_actual then
                motor_enable <= '1';
                if target_pos > indice_actual then
                    motor_dir <= '0'; -- horario
                else
                    motor_dir <= '1'; -- antihorario
                end if;
                indice_actual <= target_pos; -- posición actual se actualiza
            else
                motor_enable <= '0'; -- sin movimiento
            end if;

        end if;
    end process;

    enable <= motor_enable;
    dir <= motor_dir;
    
    pos_actual <= indice_actual;
    plazas_disp <= plazas_total;

end Behavioral;
