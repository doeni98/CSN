library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity marche_normale is
        port (osc_i: in std_logic;
                min_lin_i: std_logic_vector(15 downto 0);
                max_lin_i: std_logic_vector(15 downto 0);
                val_lin_i: std_logic_vector(15 downto 0);
                val_o : out std_logic_vector(15 downto 0));
end marche_normale;

architecture comport of marche_normale is
    signal osc_extented_s : std_logic_vector(15 downto 0);
    signal shifted_min_s :std_logic_vector(15 downto 0);

begin
    osc_extented_s <= (others => osc_i);
    shifted_min_s <= '0' & min_lin_i(min_lin_i'high downto 1);



    val_o <= x"0000" when val_lin_i < min_lin_i or val_lin_i > max_lin_i else
                ((osc_extented_s and max_lin_i) or val_lin_i) and not shifted_min_s;

end comport;