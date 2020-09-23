-------------------------------------------------------------------------------
-- HEIG-VD, Haute Ecole d'Ingenierie et de Gestion du canton de Vaud
-- Institut REDS, Reconfigurable & Embedded Digital Systems
--
-- File         : bin_lin_3to8.vhd
-- Description  : decodeur 3 bits en lineaire
--                Description par flot de donnée avec 
--                l'instruction when .. else
--
-- Author       : Mike Meury
-- Date         : 28.09.17
-- Version      : 0.0
--
-- Dependencies : 
--
--| Modifications |------------------------------------------------------------
-- Version   Author Date               Description
-- 0.0       MIM    28.09.17           Creation
-------------------------------------------------------------------------------

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity bin_lin_3to8 is
      port( bin_i  : in std_logic_vector(2 downto 0);
                       -- valeur binaire en entree
            lin_o  : out std_logic_vector(7 downto 0)
                      -- valeur lineaire en sortie
           );
end bin_lin_3to8;

architecture flot_don of bin_lin_3to8 is

begin

    lin_o(0) <= '1' when  true  else
                '0';
    lin_o(1) <= '1' when bin_i > "001"  else
                '0';
    lin_o(2) <= '1' when  bin_i > "010" else
                '0';
    lin_o(3) <= '1' when  bin_i > "011" else
                '0';
    lin_o(4) <= '1' when  bin_i > "100" else
                '0';
    lin_o(5) <= '1' when  bin_i > "101" else
                '0';
    lin_o(6) <= '1' when  bin_i > "110" else
                '0';
    lin_o(7) <= '1' when  bin_i > "111" else
                '0';

end flot_don;
