-- -----------------
-- ex55 CSN 2020
-- Auteur : Denis Bourqui
-- -----------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ex55 is
        port (  va_i: std_logic_vector(3 downto 0);
                vc_i: std_logic_vector(3 downto 0);
                un_i: std_logic;
                deux_i: std_logic;
                cinq_i: std_logic;
                dix_i: std_logic;
                add_i: std_logic;
                decr_i: std_logic;
                init_i: std_logic;
                vs_o : out std_logic_vector(3 downto 0);
                pp_o : out std_logic;
                eg_o : out std_logic);
end ex55;

architecture comport of ex55 is
     signal added_s : std_logic_vector(3 downto 0);

begin
    added_s <= "0001" when un_i = "1" else
                    "0010" when deux_i  = "1" else
                    "0101" when cinq_i = "1" else
                    "1010" when dix_i = "1" else
                    "0000";
                        
    vs_o <= (va_i - 1) when decr_i = "1" else
            (va_i + added_s) when add_i = "1" else
            va_i when add_i = "0" and decr_i = "0" and init_i = "0" else
                "0000";

    eg_o <= "1" when va_i = vc_i else "0";
    pp_o <= "1" when va_i < vc_i else "0";

end comport;