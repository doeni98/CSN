-------------------------------------------------------------------------------
-- HEIG-VD, Haute Ecole d'Ingenierie et de Gestion du canton de Vaud
-- Institut REDS, Reconfigurable & Embedded Digital Systems
--
-- Fichier      : dff_en_ok_a.vhd
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
-- Vers.  Qui   Date         Description
-- 1     Denis Bourqui 04.11.20 -
-- 
-------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

entity dff_en is
   port( 
      clk_i    : in     std_logic;
      D_i      : in     std_logic;
      en_i     : in     std_logic;
      nReset_i : in     std_logic;
      Q_o      : out    std_logic
   );
end dff_en ;


architecture comport of dff_en is
   signal Qplus_s : std_logic;


begin

  process(nReset_i, clk_i)
  begin
    if (nReset_i = '0') then
     Qplus_s <= '0';
    elsif Rising_Edge(clk_i) and (en_i = '1')  then
     Qplus_s <= D_i;
    end if;
    
  end process;
  Q_o <= Qplus_s;

end comport;
