--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.NUMERIC_STD.ALL;
--
--entity vgaout is
--    generic(
--        hor_active_video    : integer := 640;
--        hor_front_porch     : integer := 16;
--        hor_sync_pulse      : integer := 96;
--        hor_back_porch      : integer := 48;
--        vert_active_video   : integer := 480;
--        vert_front_porch    : integer := 10;
--        vert_sync_pulse     : integer := 2;
--        vert_back_porch     : integer := 33        
--    );
--    port(
--        clock_vga    : in std_logic;
--        clock_dram   : in std_logic;
--        -- vga_out: r(17-13), g(12-7), b(6-2), hsync(1), vsync(0)
--        vga_out      : out unsigned(17 downto 0); 
--        pixel_in     : in unsigned(15 downto 0);        
--        row_number   : out unsigned(9 downto 0);
--        col_number   : out unsigned(9 downto 0); 
--        load_req     : out std_logic := '0';
--        load_ack     : in std_logic;
--        video_active : in std_logic -- 0: SDRAM, 1: Barre colore
--    );
--end vgaout;
--
--architecture behavioral of vgaout is
--
--    signal hcount : unsigned(11 downto 0) := (others => '0');
--    signal vcount : unsigned(9 downto 0) := (others => '0');
--    signal hsync_reg, vsync_reg : std_logic := '1';
--
--begin
--
--    -- 1. TIMING VGA
--    process(clock_vga)
--    begin
--        if rising_edge(clock_vga) then
--            if hcount = (hor_active_video + hor_front_porch + hor_sync_pulse + hor_back_porch - 1) then
--                hcount <= (others => '0');
--                if vcount = (vert_active_video + vert_front_porch + vert_sync_pulse + vert_back_porch - 1) then
--                    vcount <= (others => '0');
--                else
--                    vcount <= vcount + 1;
--                end if;
--            else
--                hcount <= hcount + 1;
--            end if;
--        end if;
--    end process;
--
-- -- 2. SINCRONISMI (Attivi Bassi)
--    process(clock_vga)
--    begin
--        if rising_edge(clock_vga) then
--            -- HSync
--            if (hcount >= (hor_active_video + hor_front_porch) and 
--                hcount < (hor_active_video + hor_front_porch + hor_sync_pulse)) then
--                hsync_reg <= '0';
--            else
--                hsync_reg <= '1';
--            end if;
--
--            -- VSync
--            if (vcount >= (vert_active_video + vert_front_porch) and 
--                vcount < (vert_active_video + vert_front_porch + vert_sync_pulse)) then
--                vsync_reg <= '0';
--            else
--                vsync_reg <= '1';
--            end if;
--        end if;
--    end process;
--
--    -- 3. INDIRIZZAMENTO LINE BUFFER
--    process(clock_vga)
--    begin
--        if rising_edge(clock_vga) then
--            if (hcount < hor_active_video) then
--                col_number <= hcount(9 downto 0);
--            else
--                col_number <= (others => '0');
--            end if;
--            
--            row_number <= vcount;
--        end if;
--    end process;
--
--    -- 4. RICHIESTA CARICAMENTO RIGA (Blanking)
--    process(clock_dram, load_ack)
--    begin
--        if load_ack = '1' then
--            load_req <= '0';
--        elsif rising_edge(clock_dram) then
--            if hcount = (hor_active_video + 1) then 
--                load_req <= '1';
--            end if;
--        end if;
--    end process;
--
--
--
---- 5. USCITA VIDEO DIRETTA (RGB565)
--    process(clock_vga)
--        variable is_blank  : boolean;
--        variable bar_rgb   : unsigned(15 downto 0);
--        variable pixel_sel : unsigned(15 downto 0);
--    begin
--        if rising_edge(clock_vga) then
--            -- Definizione area di Blanking
--            is_blank := (hcount >= hor_active_video) or (vcount >= vert_active_video);
--            
--            -- Generazione Barre Colore (Sempre attiva internamente per test)
--            -- Formato RGB565: RRRRR GGGGGG BBBBB
--            if hcount < 213 then 
--                bar_rgb := x"F800";    -- Rosso (11111 000000 00000)
--            elsif hcount < 426 then 
--                bar_rgb := x"07E0";    -- Verde (00000 111111 00000)
--            else 
--                bar_rgb := x"001F";    -- Blu   (00000 000000 11111)
--            end if;
--
--            -- Selezione della sorgente
--            if video_active = '1' then
--                pixel_sel := bar_rgb;   -- Modalità Test
--            else
--                pixel_sel := pixel_in;  -- Modalità SDRAM (Normale)
--            end if;
--
--            -- Applicazione Blanking e invio al bus di uscita
--            if is_blank then
--                vga_out(17 downto 2) <= (others => '0');
--            else
--                vga_out(17 downto 2) <= pixel_sel;
--            end if;
--            
--            -- Sincronismi (sempre presenti)
--            vga_out(1) <= hsync_reg;
--            vga_out(0) <= vsync_reg;
--        end if;
--    end process;
--
--end behavioral;

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
        -- vga_out: r(17-13), g(12-7), b(6-2), hsync(1), vsync(0)
        vga_out      : out unsigned(17 downto 0); 
        pixel_in     : in unsigned(15 downto 0);        
        row_number   : out unsigned(9 downto 0);
        col_number   : out unsigned(9 downto 0); 
        load_req     : out std_logic := '0';
        load_ack     : in std_logic;
        video_active : in std_logic -- 0: SDRAM, 1: Barre colore
    );
end vgaout;

architecture behavioral of vgaout is

    signal hcount : unsigned(11 downto 0) := (others => '0');
    signal vcount : unsigned(9 downto 0) := (others => '0');
    signal hsync_reg, vsync_reg : std_logic := '1';
    
    -- Segnali per la sincronizzazione Cross-Clock (CDC)
    signal h_trigger_vga   : std_logic := '0';
    signal sync_pipe       : std_logic_vector(2 downto 0) := (others => '0');
    signal h_trigger_dram  : std_logic := '0';
	 signal next_hcount : unsigned(11 downto 0);

begin

    -- 1. TIMING VGA
    process(clock_vga)
    begin
        if rising_edge(clock_vga) then
            if hcount = (hor_active_video + hor_front_porch + hor_sync_pulse + hor_back_porch - 1) then
                hcount <= (others => '0');
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

    -- 2. SINCRONISMI (Attivi Bassi)
    process(clock_vga)
    begin
        if rising_edge(clock_vga) then
            -- HSync
            if (hcount >= (hor_active_video + hor_front_porch) and 
                hcount < (hor_active_video + hor_front_porch + hor_sync_pulse)) then
                hsync_reg <= '0';
            else
                hsync_reg <= '1';
            end if;

            -- VSync
            if (vcount >= (vert_active_video + vert_front_porch) and 
                vcount < (vert_active_video + vert_front_porch + vert_sync_pulse)) then
                vsync_reg <= '0';
            else
                vsync_reg <= '1';
            end if;
        end if;
    end process;

    -- 3. INDIRIZZAMENTO LINE BUFFER E TRIGGER CARICAMENTO
	 next_hcount <= hcount;
	 
    process(clock_vga)
    begin
        if rising_edge(clock_vga) then
            -- Indirizzi per la riga attuale
            if (next_hcount < hor_active_video) then
                --col_number <= hcount(9 downto 0);
					 col_number <= next_hcount(9 downto 0);
            else
                col_number <= (others => '0');
            end if;
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
	 


    -- 6. USCITA VIDEO DIRETTA (RGB565)
    process(clock_vga)
        variable is_blank  : boolean;
        variable bar_rgb   : unsigned(15 downto 0);
        variable pixel_sel : unsigned(15 downto 0);
    begin
        if rising_edge(clock_vga) then
            -- Definizione area di Blanking
            is_blank := (hcount >= hor_active_video) or (vcount >= vert_active_video);
            
            -- Generazione Barre Colore (RGB565)
            if hcount < 213 then 
                bar_rgb := x"F800";    -- Rosso
            elsif hcount < 426 then 
                bar_rgb := x"07E0";    -- Verde
            else 
                bar_rgb := x"001F";    -- Blu
            end if;

            -- Selezione della sorgente
            if video_active = '1' then
                pixel_sel := bar_rgb;
            else
                pixel_sel := pixel_in;
            end if;

            -- Output con Blanking
            if is_blank then
                vga_out(17 downto 2) <= (others => '0');
            else
                vga_out(17 downto 2) <= pixel_sel;
            end if;
            
            -- Sincronismi
            vga_out(1) <= hsync_reg;
            vga_out(0) <= vsync_reg;
        end if;
    end process;

end behavioral;