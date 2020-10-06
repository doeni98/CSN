-------------------------------------------------------------------------------
-- HEIG-VD, Haute Ecole d'Ingenierie et de Gestion du canton de Vaud
-- Institut REDS, Reconfigurable & Embedded Digital Systems
--
-- Fichier      : min_max_top.vhd
--
-- Description  :
--
-- Auteur       : Etienne Messerli
-- Date         : 29.09.2014
-- Version      : 0.0
--
-- Utilise      : Manipulation Min_Max pour cours CSN/ SysLog2
--
--| Modifications |------------------------------------------------------------
-- Version   Auteur Date               Description
-- 1.0       EMI    29.09.2014    Mise à jour avec new coding style
--
-------------------------------------------------------------------------------

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

-- Ne pas modifier cette entity
entity min_max_top is
    port(
        com_i  : in  std_logic_vector(1 downto 0);
        max_i  : in  std_logic_vector(3 downto 0);
        min_i  : in  std_logic_vector(3 downto 0);
        osc_i  : in  std_logic;
        val_i  : in  std_logic_vector(3 downto 0);
        leds_o : out std_logic_vector(15 downto 0)
        );
end min_max_top;

architecture struct of min_max_top is

    ----------------------------------
    -- Internal signal declarations --
    ----------------------------------
    -- TODO
    signal lin_max_s : std_logic_vector(15 downto 0);
    signal lin_min_s : std_logic_vector(15 downto 0);
    signal lin_val_s : std_logic_vector(15 downto 0);
    signal val_normale_s : std_logic_vector(15 downto 0);


    ----------------------------
    -- Component Declarations --
    ----------------------------
    -- TODO
    component bin_lin_4to16 is
        port (bin_i: in std_logic_vector(3 downto 0);
            lin_o : out std_logic_vector(15 downto 0));
    end component;



    component marche_normale is
        port (osc_i: in std_logic;
                min_lin_i : std_logic_vector(15 downto 0);
                max_lin_i : std_logic_vector(15 downto 0);
                val_lin_i : std_logic_vector(15 downto 0);
                val_o : out std_logic_vector(15 downto 0));
    end component;


    --------------------------------------
    -- Embedded configurations --
    --------------------------------------
    --for all : componentX use entity work.componentX;
    for all : bin_lin_4to16 use entity work.bin_lin_4to16(flot_don);
    for all : marche_normale use entity work.marche_normale(comport);

begin

    ----------------------------
    -- Instance port mappings --
    ----------------------------

    bin_lin_max : bin_lin_4to16 port map (bin_i => max_i,
                                            lin_o => lin_max_s);

    bin_lin_min : bin_lin_4to16 port map (bin_i => min_i,
                                            lin_o => lin_min_s);

    bin_lin_val : bin_lin_4to16 port map (bin_i => val_i,
                                            lin_o => lin_val_s);

    marche_normale_comp : marche_normale port map(osc_i => osc_i,
                                            min_lin_i => lin_min_s,
                                            max_lin_i => lin_max_s,
                                            val_lin_i => lin_val_s,
                                            val_o => val_normale_s);

    -- Affectation de sortie
    leds_o <= val_normale_s when com_i = "00" else
                lin_val_s  when com_i = "01" else
                x"0000" when com_i = "10" else
                x"ffff";


end struct;
