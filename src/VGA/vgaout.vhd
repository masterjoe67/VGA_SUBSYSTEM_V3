library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity vgaout is
    generic(
        hor_active_video    : integer := 640;
        hor_front_porch     : integer := 16;
        hor_sync_pulse      : integer := 96;
        hor_back_porch      : integer := 48;
        vert_active_video   : integer := 480;
        vert_front_porch    : integer := 10;
        vert_sync_pulse     : integer := 2;
        vert_back_porch     : integer := 33        
    );
    port(
        clock_vga    : in std_logic;
        clock_dram   : in std_logic;
        vga_out      : out unsigned(17 downto 0); -- r(3), g(3), b(3), hsync, vsync
        pixel_in     : in unsigned(15 downto 0);        
        row_number   : out unsigned(9 downto 0);
        col_number   : out unsigned(9 downto 0); 
        load_req     : out std_logic := '0';
        load_ack     : in std_logic;
        video_active : in std_logic -- 0: segnale AVR, 1: barre colore
    );
end vgaout;

architecture behavioral of vgaout is

    signal hcount : unsigned(11 downto 0) := (others => '0');
    signal vcount : unsigned(9 downto 0) := (others => '0');
    signal hsync_reg, vsync_reg : std_logic := '1';

begin

    -- 1. GENERAZIONE TIMING VGA (HCOUNT e VCOUNT)
    process(clock_vga)
    begin
        if rising_edge(clock_vga) then
            -- Contatore Orizzontale
            if hcount = (hor_active_video + hor_front_porch + hor_sync_pulse + hor_back_porch - 1) then
                hcount <= (others => '0');
                -- Contatore Verticale
                if vcount = (vert_active_video + vert_front_porch + vert_sync_pulse + vert_back_porch - 1) then
                    vcount <= (others => '0');
                else
                    vcount <= vcount + 1;
                end if;
            else
                hcount <= hcount + 1;
            end if;
        end if;
    end process;

    -- 2. SEGNALI DI SINCRONISMO (H-Sync e V-Sync)
    process(clock_vga)
    begin
        if rising_edge(clock_vga) then
            -- HSync: attivo basso
            if hcount >= (hor_active_video + hor_front_porch) and 
               hcount < (hor_active_video + hor_front_porch + hor_sync_pulse) then
                hsync_reg <= '0';
            else
                hsync_reg <= '1';
            end if;

            -- VSync: attivo basso
            if vcount >= (vert_active_video + vert_front_porch) and 
               vcount < (vert_active_video + vert_front_porch + vert_sync_pulse) then
                vsync_reg <= '0';
            else
                vsync_reg <= '1';
            end if;
        end if;
    end process;

    -- 3. INDIRIZZAMENTO SDRAM / RAM LINE BUFFER
    --row_number <= vcount; -- Indirizzo riga per SDRAM
    
    process(clock_vga)
    begin
        if rising_edge(clock_vga) then
            -- col_number pilota la lettura della RAM2 (Line Buffer)
            -- Deve essere 0 esattamente quando hcount è 0.
            if hcount < hor_active_video then
                col_number <= hcount(9 downto 0);
            else
                col_number <= (others => '0');
            end if;
            
            -- row_number per la riga successiva o attuale
            row_number <= vcount;
        end if;
    end process;

    -- 4. RICHIESTA CARICAMENTO RIGA (LOAD_REQ)
    -- Carica la riga dalla SDRAM durante il Blanking Orizzontale
    process(clock_dram, load_ack)
    begin
        if load_ack = '1' then
            load_req <= '0';
        elsif rising_edge(clock_dram) then
            -- Chiediamo il caricamento appena finisce l'area attiva
            if hcount = (hor_active_video + 1) then 
                load_req <= '1';
            end if;
        end if;
    end process;

    -- 5. USCITA VIDEO (RGB + SYNC)
    process(clock_vga)
        variable is_blank  : boolean;
        variable bar_rgb   : unsigned(15 downto 0);
        variable pixel_sel : unsigned(15 downto 0);
    begin
        if rising_edge(clock_vga) then
            -- Definizione area di Blanking
            is_blank := (hcount >= hor_active_video) or (vcount >= vert_active_video);
            
            -- Generazione Barre Colore (Sempre attiva internamente per test)
            -- Formato RGB565: RRRRR GGGGGG BBBBB
            if hcount < 213 then 
                bar_rgb := x"F800";    -- Rosso (11111 000000 00000)
            elsif hcount < 426 then 
                bar_rgb := x"07E0";    -- Verde (00000 111111 00000)
            else 
                bar_rgb := x"001F";    -- Blu   (00000 000000 11111)
            end if;

            -- Selezione della sorgente
            if video_active = '1' then
                pixel_sel := bar_rgb;   -- Modalità Test
            else
                pixel_sel := pixel_in;  -- Modalità SDRAM (Normale)
            end if;

            -- Applicazione Blanking e invio al bus di uscita
            if is_blank then
                vga_out(17 downto 2) <= (others => '0');
            else
                vga_out(17 downto 2) <= pixel_sel;
            end if;
            
            -- Sincronismi (sempre presenti)
            vga_out(1) <= hsync_reg;
            vga_out(0) <= vsync_reg;
        end if;
    end process;

end behavioral;