library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity control_parada_semaforo is
    Port (
        clk         : in  std_logic;
        reset       : in  std_logic;
        btn_emergencia : in std_logic;
        btn_segura : in std_logic;
        --led_rojo    : out std_logic;
        led_amarillo: out std_logic;
        led_verde   : out std_logic
		  
    );
end control_parada_semaforo;

architecture Behavioral of control_parada_semaforo is

    signal estado_emergencia : std_logic := '0';

begin

    process(clk, reset)
    begin
        if reset = '1' then
            estado_emergencia <= '0';
        elsif rising_edge(clk) then
            if btn_emergencia = '1' then
                estado_emergencia <= '1';
            end if;
        end if;
    end process;

    -- Leds controlados
   -- led_rojo <= estado_emergencia;
    led_amarillo <= btn_segura;
    led_verde <= not (estado_emergencia or btn_segura);

end Behavioral;
