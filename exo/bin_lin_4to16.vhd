-- -----------------
-- Labo 2 CSN 2020
-- Auteur : Denis Bourqui
-- -----------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bin_lin_4to16 is
        port (bin_i: in std_logic_vector(3 downto 0);
            lin_o : out std_logic_vector(15 downto 0));
end bin_lin_4to16;

architecture flot_don of bin_lin_4to16 is

begin

        lin_o(0) <= '1' when  true  else
                    '0';
        lin_o(1) <= '1' when  bin_i >= "0001"  else
                    '0';
        lin_o(2) <= '1' when  bin_i >= "0010" else
                    '0';
        lin_o(3) <= '1' when  bin_i >= "0011" else
                    '0';
        lin_o(4) <= '1' when  bin_i >= "0100" else
                    '0';
        lin_o(5) <= '1' when  bin_i >= "0101" else
                    '0';
        lin_o(6) <= '1' when  bin_i >= "0110" else
                    '0';
        lin_o(7) <= '1' when  bin_i >= "0111" else
                    '0';
        lin_o(8) <= '1' when  bin_i >= "1000"  else
                    '0';
        lin_o(9) <= '1' when  bin_i >= "1001"  else
                    '0';
        lin_o(10) <= '1' when  bin_i >= "1010" else
                    '0';
        lin_o(11) <= '1' when  bin_i >= "1011" else
                    '0';
        lin_o(12) <= '1' when  bin_i >= "1100" else
                    '0';
        lin_o(13) <= '1' when  bin_i >= "1101" else
                    '0';
        lin_o(14) <= '1' when  bin_i >= "1110" else
                    '0';
        lin_o(15) <= '1' when  bin_i = "1111" else
                    '0';

end flot_don;