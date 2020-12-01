-------------------------------------------------------------------------------
-- HEIG-VD, Haute Ecole d'Ingenierie et de Gestion du canton de Vaud
-- Institut REDS, Reconfigurable & Embedded Digital Systems
--
-- Fichier      : timer_top.vhd
--
-- Description  : Realisation d'un timer avec 2 modes de fonctionnement
--                (diviseur ou monostable)
-- 
-- Auteur       : Etienne Messerli
-- Date         : 10.11.2017
-- Version      : 0.0
-- 
-- Utilise      : Manipulation Timer pour cours CSN, 2017
-- 
--| Modifications |------------------------------------------------------------
-- Ver   Auteur Date               Description
-- 1     Denis Bourqui  20.11.2020  Labo 06
--
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;

entity timer_top is
   port( 
      clock_i      : in   std_logic;
      nReset_i     : in   std_logic;
      Mono_nDiv_i  : in   std_logic;
      en_div_i     : in   std_logic;
      run_mono_i   : in   std_logic;
      val_i        : in   std_logic_vector(6 downto 0);
      done_o       : out  std_logic
   );
end timer_top ;

architecture comport of timer_top is
   signal cpt_fut_s, cpt_pres_s : unsigned (6 downto 0);
   signal load_s, decremente_s, equal_s : std_logic;
   
begin

   -- Decodage d'état future
   
   equal_s <=  '1' when (Mono_nDiv_i = '1' and cpt_pres_s = "0") else
               '1' when (Mono_nDiv_i = '0' and cpt_pres_s = "1") else
               '0';

   -- load = !Mono_nDiv * !en_div_i + Mono_nDiv * !run_mono_i  + !Mono_nDiv * equal_s
   load_s <=   '1' when (Mono_nDiv_i  = '0' and en_div_i = '0')
               or (Mono_nDiv_i = '1' and run_mono_i = '0')
               or (Mono_nDiv_i = '0' and equal_s = '1')
					else '0';

   -- Décrémente = run_mono_i * !equal_s + !Mono_nDiv * en_div_i
   decremente_s <=   '1' when (en_div_i = '1' and Mono_nDiv_i = '0') 
                     or (run_mono_i = '1' and equal_s = '0')
							else '0';

   cpt_fut_s <=   unsigned(val_i) when load_s = '1' else -- Etat Load
                  cpt_pres_s - 1 when decremente_s = '1' else -- Etat decremente
                  cpt_pres_s; -- Etat maintien
   

   -- Registre
   process(clock_i, nReset_i)
   begin
      if(nReset_i = '0') then
         cpt_pres_s <= 0;
      elsif Rising_Edge(clock_i) then
         cpt_pres_s <= cpt_fut_s;
      end if;
   end process;

   -- Decodeur de sortie
   done_o <= equal_s;

end comport;
