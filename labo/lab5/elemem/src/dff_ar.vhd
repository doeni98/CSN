-------------------------------------------------------------------------------
-- HEIG-VD, Haute Ecole d'Ingenierie et de Gestion du canton de Vaud
-- Institut REDS, Reconfigurable & Embedded Digital Systems
--
-- Fichier      : dff_ar.vhd
--
-- Description  : 
-- 
-- Auteur       : Etienne Messerli
-- Date         : 22.10.2014
-- Version      : 0.0
-- 
-- Utilise      : Exercice de description d'elements memoire
--                en VHDL synthetisable
-- 
--| Modifications |------------------------------------------------------------
-- Version   Auteur Date               Description
--  1       Denis Bourqui 04.11.20
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity dff_ar is
   port( 
      clk_i   : in     std_logic;
      reset_i : in     std_logic;
      D_i     : in     std_logic;
      Q_o     : out    std_logic;
      nQ_o    : out    std_logic
   );
end dff_ar ;

architecture comport of dff_ar is
   signal Qplus_s : std_logic;

begin

   process(reset_i, clk_i)
   begin
     if (reset_i = '1') then
      Qplus_s <= '0';
     elsif Rising_Edge(clk_i) then
      Qplus_s <= D_i;
     end if;
     
   end process;
   Q_o <= Qplus_s;
   nQ_o <= not Qplus_s;
  
end comport;

