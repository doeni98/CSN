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

entity add4full is
  generic( N_g : Positive range 1 to 16 := 4);
  port (nbr_a_i   : in  std_logic_Vector(N_g downto 0);
        nbr_b_i   : in  std_logic_Vector(N_g downto 0);
        cin_i      : in  std_logic;
        somme_o    : out std_logic_Vector(N_g downto 0);
        cout_o     : out std_Logic;
        ovr_o      : out std_logic  );
end add4full;

architecture flot_don of add4full is
  -- signaux internes
  signal nb_a_low_s : unsigned(nbr_a_i'left downto 0);
  signal nb_b_low_s : unsigned(nbr_b_i'left downto 0);
  
  signal nb_a_high_s : unsigned(1 downto 0);
  signal nb_b_high_s : unsigned(1 downto 0);
  
  
  signal somme_low_s : unsigned((nbr_b_i'left) downto 0);
  signal somme_high_s : unsigned(1 downto 0);
  
  signal somme_unsigned_s : unsigned((nbr_b_i'left) downto 0);
  signal cin_s : unsigned(0 downto 0);
  signal cnm1_s : unsigned(0 downto 0);
begin

  nb_a_low_s <= "0" & unsigned(nbr_a_i(nbr_a_i'left - 1 downto 0)); -- nb_a(n-2 .. 0)
  nb_b_low_s <= "0" & unsigned(nbr_b_i(nbr_b_i'left - 1 downto 0)); -- nb_b(n-2 .. 0)
  
  nb_a_high_s(0) <= nbr_a_i(nbr_a_i'left);
  nb_b_high_s(0) <= nbr_b_i(nbr_b_i'left);
  
  cin_s(0) <= cin_i;
	
	somme_low_s <= nb_a_low_s + nb_b_low_s + cin_s;
	cnm1_s(0) <= somme_low_s(somme_low_s'left);
	
	somme_high_s <= nb_a_high_s + nb_b_high_s + cnm1_s;
	
	somme_unsigned_s <= somme_high_s(0) & somme_low_s(somme_low_s'left - 1 downto 0);
	
	somme_o <= std_logic_Vector(somme_unsigned_s);
	
	cout_o <= somme_high_s(1);
	
	ovr_o <= somme_high_s(1) xor cnm1_s(0);
	

end flot_don;
