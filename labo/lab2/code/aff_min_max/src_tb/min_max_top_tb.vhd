-------------------------------------------------------------------------------
-- HEIG-VD, Haute Ecole d'Ingenierie et de Gestion du canton de Vaud
-- Institut REDS, Reconfigurable & Embedded Digital Systems
--
-- Fichier      : min_max_top_tb.vhd
--
-- Description  : Banc de test automatique (test bench) pour
--                affichage min-max (struct connection uut avec tester)
--
-- Auteur       : Etienne Messerli
-- Date         : 29.09.2014
-- Version      : 0.0
--
-- Utilise      : Manipulation de laboratoire du cours CSN
--                Banc de test automatique (test bench)
--
--| Modifications |------------------------------------------------------------
-- Version   Auteur Date               Description
--
-------------------------------------------------------------------------------
library ieee;
  use ieee.std_logic_1164.ALL;
  use ieee.numeric_std.ALL;

entity min_max_top_tb is
end min_max_top_tb ;

architecture struct of min_max_top_tb is

   -- Architecture declarations

   -- Internal signal declarations
   signal com_sti  : std_logic_vector(1 downto 0);
   signal leds_obs : std_logic_vector(15 downto 0);
   signal max_sti  : std_logic_vector(3 downto 0);
   signal min_sti  : std_logic_vector(3 downto 0);
   signal osc_sti  : std_logic;
   signal val_sti  : std_logic_vector(3 downto 0);


   -- Component Declarations
   component min_max_top
   port (
      com_i  : in     std_logic_vector ( 1 downto 0 );
      max_i  : in     std_logic_vector ( 3 downto 0 );
      min_i  : in     std_logic_vector ( 3 downto 0 );
      osc_i  : in     std_logic ;
      val_i  : in     std_logic_vector ( 3 downto 0 );
      leds_o : out    std_logic_vector ( 15 downto 0 )
   );
   end component;

   component min_max_top_tester
   generic (
      mode_normal_optionnel : boolean := FALSE
   );
   port (
      leds_obs : in     std_logic_vector (15 downto 0);
      com_sti  : out    std_logic_vector (1 downto 0);
      max_sti  : out    std_logic_vector (3 downto 0);
      min_sti  : out    std_logic_vector (3 downto 0);
      osc_sti  : out    std_logic ;
      val_sti  : out    std_logic_vector (3 downto 0)
   );
   end component;

   -- Optional embedded configurations
   for all : min_max_top use entity work.min_max_top;
   for all : min_max_top_tester use entity work.min_max_top_tester;


begin

   -- Instance port mappings.
   uut : min_max_top
      port map (
         com_i  => com_sti,
         max_i  => max_sti,
         min_i  => min_sti,
         osc_i  => osc_sti,
         val_i  => val_sti,
         leds_o => leds_obs
      );
   tst : min_max_top_tester
      generic map (
         mode_normal_optionnel => FALSE
      )
      port map (
         leds_obs => leds_obs,
         com_sti  => com_sti,
         max_sti  => max_sti,
         min_sti  => min_sti,
         osc_sti  => osc_sti,
         val_sti  => val_sti
      );

end struct;
