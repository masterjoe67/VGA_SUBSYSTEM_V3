library IEEE;
use IEEE.std_logic_1164.all;

entity vga_xbus_gateway is
  port (
    clk           : in  std_logic;
    rst_n         : in  std_logic;
    xbus_addr_i   : in  std_logic_vector(31 downto 0); 
    xbus_data_i   : in  std_logic_vector(31 downto 0);
    xbus_data_o   : out std_logic_vector(31 downto 0);
    xbus_we_i     : in  std_logic;
    xbus_st_i     : in  std_logic; 
    xbus_cy_i     : in  std_logic; 
    xbus_ack_o    : out std_logic;
    
    -- Interfaccia verso il sottosistema
    vga_data_o    : out std_logic_vector(15 downto 0);
    vga_cmd_o     : out std_logic_vector(2 downto 0);
    vga_st_i      : out std_logic; -- IL GRILLETTO
    vga_busy_i    : in  std_logic
  );
end entity;

architecture rtl of vga_xbus_gateway is
    signal shot_fired : std_logic := '0';
    signal ack_q      : std_logic := '0';
begin
    -- L'ACK ora è un registro: garantisce stabilità
    xbus_ack_o <= ack_q;
    
    -- Lettura busy (sempre disponibile sul bus dati)
    xbus_data_o <= (0 => vga_busy_i, others => '0');

    process(clk, rst_n)
    begin
        if rst_n = '0' then
            vga_st_i   <= '0';
            shot_fired <= '0';
            ack_q      <= '0';
            vga_data_o <= (others => '0');
            vga_cmd_o  <= (others => '0');
        elsif rising_edge(clk) then
            -- Reset automatico dello strobe (1 solo ciclo)
            vga_st_i <= '0';
            
            -- Gestione ACK: Risponde a ogni richiesta del bus
            -- (st_i and cy_i) attiva l'ack, ma solo per un ciclo (not ack_q)
            ack_q <= (xbus_st_i and xbus_cy_i) and (not ack_q);

            if (xbus_st_i = '1' and xbus_cy_i = '1') then
                -- Se è una SCRITTURA
                if xbus_we_i = '1' then
                    vga_data_o <= xbus_data_i(15 downto 0);
                    vga_cmd_o  <= xbus_addr_i(4 downto 2);

                    -- Logica del Grilletto (Strobe)
                    if shot_fired = '0' then
                        vga_st_i   <= '1';
                        shot_fired <= '1';
                    end if;
                end if;
                -- Se è una LETTURA, non facciamo nulla (xbus_data_o è già fuori)
            else
                -- Ciclo terminato: resettiamo il grilletto
                shot_fired <= '0';
                ack_q      <= '0';
            end if;
        end if;
    end process;
end architecture;