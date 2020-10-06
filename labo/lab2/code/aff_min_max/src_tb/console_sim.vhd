-------------------------------------------------------------------------------
-- HEIG-VD, Haute Ecole d'Ingenierie et de Gestion du canton de Vaud
-- Institut REDS, Reconfigurable & Embedded Digital Systems
--
-- Fichier      : console_sim.vhd
--
-- Description  : Ce fichier permet l'utilisation de la console generique du REDS.
-- 
-- Auteur       : Gilles Habegger
-- Date         : 20.04.2015
-- 
-- Utilise      : -
-- 
--| Modifications |------------------------------------------------------------
-- Version  Auteur  Date        Description
-- 0.0      GHR    20.04.2015   Premiere version de console_sim
--  
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;

entity console_sim is
    port(
        -- 16 switchs
        S0_sti       : in  std_logic;
        S1_sti       : in  std_logic;
        S2_sti       : in  std_logic;
        S3_sti       : in  std_logic;
        S4_sti       : in  std_logic;
        S5_sti       : in  std_logic;
        S6_sti       : in  std_logic;
        S7_sti       : in  std_logic;
        S8_sti       : in  std_logic;
        S9_sti       : in  std_logic;
        S10_sti      : in  std_logic;
        S11_sti      : in  std_logic;
        S12_sti      : in  std_logic;
        S13_sti      : in  std_logic;
        S14_sti      : in  std_logic;
        S15_sti      : in  std_logic;
        -- 2 valeurs sur 16 bits
        Val_A_sti    : in  std_logic_vector (15 downto 0);
        Val_B_sti    : in  std_logic_vector (15 downto 0);
        -- 16 LEDs
        L0_obs       : out std_logic;
        L1_obs       : out std_logic;
        L2_obs       : out std_logic;
        L3_obs       : out std_logic;
        L4_obs       : out std_logic;
        L5_obs       : out std_logic;
        L6_obs       : out std_logic;
        L7_obs       : out std_logic;
        L8_obs       : out std_logic;
        L9_obs       : out std_logic;
        L10_obs      : out std_logic;
        L11_obs      : out std_logic;
        L12_obs      : out std_logic;
        L13_obs      : out std_logic;
        L14_obs      : out std_logic;
        L15_obs      : out std_logic;
        -- 2 valeurs hexadecimales
        Hex0_obs     : out std_logic_vector (3 downto 0);
        Hex1_obs     : out std_logic_vector (3 downto 0);
        -- 2 resultats sur 16 bits
        Result_A_obs : out std_logic_vector (15 downto 0);
        Result_B_obs : out std_logic_vector (15 downto 0);
        -- 1 affichage 7 segments
        -- seg7_obs(0) -> DP (pas present)
        -- seg7_obs(1) -> G
        -- seg7_obs(2) -> F
        -- seg7_obs(3) -> E
        -- seg7_obs(4) -> D
        -- seg7_obs(5) -> C
        -- seg7_obs(6) -> B
        -- seg7_obs(7) -> A
        seg7_obs     : out std_logic_vector (7 downto 0)
        );

-- Declarations

end console_sim;

architecture struct of console_sim is

    ---------------
    -- component --
    ---------------
    component min_max_top
        port (
            com_i  : in  std_logic_vector (1 downto 0);
            max_i  : in  std_logic_vector (3 downto 0);
            min_i  : in  std_logic_vector (3 downto 0);
            osc_i  : in  std_logic;
            val_i  : in  std_logic_vector (3 downto 0);
            leds_o : out std_logic_vector (15 downto 0)
            );
    end component;
    for all : min_max_top use entity work.min_max_top;

    -------------
    -- Signals --
    -------------
    -- Internal signals
    signal leds_s : std_logic_vector(15 downto 0);
    signal max_s : std_logic_vector(3 downto 0);
    signal min_s : std_logic_vector(3 downto 0);
    signal val_s : std_logic_vector(3 downto 0);
    -- Clock generator
    signal clk_s : std_logic := '1';

    ---------------
    -- constants --
    ---------------
    constant PERIOD : time := 100 ns;

begin

    -------------
    -- Mapping --
    -------------
    UUT : min_max_top
        port map (com_i(0) => S0_sti,
                  com_i(1) => S1_sti,
                  max_i    => max_s,
                  min_i    => min_s,
                  osc_i    => clk_s,
                  val_i    => val_s,
                  leds_o   => leds_s);

    ------------------------
    -- Combinatorial part --
    ------------------------
    Result_A_obs(7 downto 0) <= leds_s(7 downto 0);
    Result_B_obs(7 downto 0) <= leds_s(15 downto 8);
    --   Connect max_s, min_s and val_s to Val_A or Val_b
    min_s                    <= Val_A_sti(3 downto 0);
    max_s                    <= Val_A_sti(7 downto 4);
    val_s                    <= Val_B_sti(3 downto 0);

    -----------------------------
    -- Process clock generator --
    -----------------------------
    clock_generator : process
    begin
        clk_s <= not clk_s;
        wait for PERIOD/2;
    end process;
    
end struct;
