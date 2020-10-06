-------------------------------------------------------------------------------
-- HEIG-VD, Haute Ecole d'Ingenierie et de Gestion du canton de Vaud
-- Institut REDS, Reconfigurable & Embedded Digital Systems
--
-- Fichier      : Min_Max_top_tester.vhd
--
-- Description  : Banc de test automatique (test bench) pour 
--                affichage min-max (tester)
-- 
-- Auteur       : Etienne Messerli
-- Date         : 29.09.2014
-- Version      : 0.0
-- 
-- Utilise      : Manipulation de laboratoire du cours CSN
--                 
-- 
--| Modifications |------------------------------------------------------------
-- Version   Auteur Date               Description
-- 
-------------------------------------------------------------------------------

library ieee;
  use ieee.std_logic_1164.ALL;
  use ieee.numeric_std.ALL;

library std;
  use std.textIO.all;

  
entity min_max_top_tester is
Generic (
          Mode_Normal_Optionnel : boolean 
          );

   port( 
      Leds_obs : in     std_logic_vector ( 15 downto 0 );
      Com_sti  : out    Std_Logic_Vector ( 1 downto 0 );
      Max_sti  : out    Std_Logic_Vector ( 3 downto 0 );
      Min_sti  : out    Std_Logic_Vector ( 3 downto 0 );
      Osc_sti  : out    std_logic;
      Val_sti  : out    Std_Logic_Vector ( 3 downto 0 )
   );

-- Declarations

end min_max_top_tester ;

--------------------------------------------------------------------------------
-- Banc de test pour le multiplexeur 2 a 1 
--------------------------------------------------------------------------------
--
-- Principe de fonctionnement du test bench
-- ========================================
--
--    |<-------- Pas_Sim (exemple 250us) -------->|
--    |                                           |
--    |                                           |
--    |<-- Pas_Sim/2 ->|                   		  |
--    î                 î
--   Assignation     Verification
--   Stimuli
--
-- Stimuli : affectes au debut du pas de simulation (_sti)
--           calcul les valeurs de references pour la verification (_ref)
-- Verification : test au milieu du pas de simulation
--                (assert et impulsion sur signal d'Erreurs)
--------------------------------------------------------------------------------

architecture tester of min_max_top_tester is

begin

    --fichier a demander a votre professeur !!
  
    process
    begin
        report "bien essayé, mais le testbench est vide, demandez le vrai testbench à votre professeur";
        wait;  --Attente infinie, stop la simulation
    end process;
  
  
end architecture tester;


