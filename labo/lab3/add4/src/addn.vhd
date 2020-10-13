-----------------------------------------------------------------------
-- HEIG-VD, Haute Ecole d'Ingenierie et de Gestion du canton de Vaud
-- Institut REDS, Reconfigurable & Embedded Digital Systems
--
-- Fichier      : add4_c_o.vhd
-- Description  : Additionneur 4 bits avec carry in,
--                carry out et overflow out
--
-- Auteur       : E. Messerli
-- Date         : 10.10.2014
-- Version      : 1.0
--
-- Utilise      : Exercice cours VHDL
--
--| Modifications |-----------------------------------------------------------
-- Ver   Auteur Date         Description
-- 2.0    EMI   03-03-2016   Version additionneur avec c_in, c_out et ovr_out
--
------------------------------------------------------------------------------

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity addn is
  generic( N_g : Positive range 1 to 16 := 11);
  port (nbr_a_i   : in  std_logic_Vector(N_g downto 0);
        nbr_b_i   : in  std_logic_Vector(N_g downto 0);
        cin_i      : in  std_logic;
        somme_o    : out std_logic_Vector(N_g downto 0);
        cout_o     : out std_Logic;
        ovr_o      : out std_logic  );
end addn;

architecture flot_don of addn is

  -- signaux internes
  signal nb_a_s : unsigned(nbr_a_i'left+1 downto 0);
  signal nb_b_s : unsigned(nbr_b_i'left+1 downto 0);
  signal somme_unsigned_s : unsigned((nbr_b_i'left+1) downto 0);
  signal somme_vec_s : std_logic_Vector((nbr_b_i'left+1) downto 0);
  signal cin_s : unsigned(0 downto 0);
  
begin

  nb_a_s <= "0" & unsigned(nbr_a_i);
  nb_b_s <= "0" & unsigned(nbr_b_i);
  cin_s(0) <= cin_i;
	
  somme_unsigned_s <= nb_a_s + nb_b_s + cin_s; 
  somme_vec_s <= std_logic_vector(somme_unsigned_s);
  

  somme_o <= somme_vec_s(somme_vec_s'left - 1 downto 0);
	cout_o <= somme_vec_s(somme_vec_s'left);

end flot_don;
