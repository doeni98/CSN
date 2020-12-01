-------------------------------------------------------------------------------
-- HEIG-VD, Haute Ecole d'Ingenierie et de Gestion du canton de Vaud
-- Institut REDS, Reconfigurable & Embedded Digital Systems
--
-- Fichier      : Timer_top_tester_Test_Bench.vhd
--
-- Description  : 
-- 
-- Auteur       : Messerli
-- Date         : 07.12.2010
-- Version      : 0.0
-- 
-- Utilise      : Ce fichier est genere automatiquement par le logiciel 
--              : \"HDL Designer Series HDL Designer\".
-- 
--| Modifications |------------------------------------------------------------
-- Ver   Auteur   Date      Description
-- 1.0   GAA    03.12.2015  Correction de la partie monostable :
--                             for J in 1 to Val_v-2 loop ==> 
--                                    for J in 1 to Val_v-1 loop.
-- 1.1   FCC    22.11.2016   Adapter au nouvel énoncé 2016.  
-- 1.2   EMI    02.12.2016   Modifier modulo Val_v a 128
-- 1.3   MIM    13.11.2017   Adapter au nouvel énoncé 2017 (fonctionnement div)
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Timer_top_tester is
    port(
        Done_obs      : in  std_logic;
        Clock_sti     : out std_logic;
        En_Div_sti    : out std_logic;
        Mono_nDiv_sti : out std_logic;
        run_mono_sti  : out std_logic;
        Val_sti       : out std_logic_vector (6 downto 0);
        nReset_sti    : out std_logic
        );

-- Declarations

end Timer_top_tester;

architecture Test_Bench of Timer_top_tester is

    constant Periode_c : time := 100 ns;
    constant Pulse_c   : time := 4 ns;  --duree impulsion sur erreur, ..  
    constant Tp_c      : time := 5 ns;  --temps de propagation

    --signaux de base pour la simulation sequentiel (HORLOGE)
    signal Sim_End_s : boolean := false;
    signal Horloge_s : std_logic;       -- signal d'horloge
    --signal Debut_Cycle : Std_Logic;   -- indique debut cycle horloge

    --signaux de detection des erreurs (check), propre a l'application
    signal Erreur_s           : std_logic := '0';
    shared variable Nbr_Err_v : integer;

    --signaux intermediares pour la simulation, propre a l'application
    signal Reset_sti                  : std_logic;
    signal Done_ref                   : std_logic;
---------------------------------------------------------------------------
-- Procedure permettant plusieurs cycles d'horloge
-- Le premier appel de la procedure termine le cycle precedent si celui-ci
-- n'etait pas complet (par exemple : si on a fait quelques pas de 
-- simulation non synchronises avant, reset asynchrone, combinatoire, ...)
---------------------------------------------------------------------------
    procedure cycle (nombre_de_cycles : integer := 1) is
    begin
        for i in 1 to nombre_de_cycles loop
            wait until Falling_Edge(Horloge_s);
            wait for 2 ns;  --assigne stimuli 2ns apres flanc montant 
        end loop;
    end cycle;

begin
------------------------------------------------------------------
--Connexion signaux description a verifier
------------------------------------------------------------------
    Clock_sti  <= Horloge_s;
    nReset_sti <= not Reset_sti;
------------------------------------------------------------------
--Process de generation de l'horloge
------------------------------------------------------------------

    process
    begin
        while not Sim_End_s loop
            Horloge_s <= '1', '0' after Periode_c/2;
            wait for Periode_c;
        end loop;
        wait;
    end process;

---------------------------------------------------------------------------
-- Debut des pas de simulation
---------------------------------------------------------------------------

    process is

        variable Attente_v, Val_v : natural;

        procedure test_reset_asynch is
        begin
            -- Test de la remise a zero asynchrone
            Reset_sti     <= '1';
            Mono_nDiv_sti <= 'X';
            En_Div_sti    <= 'X';
            run_mono_sti  <= 'X';
            --Val_sti       <= (others => '0'); -- 0 is out of specs
            Val_sti       <= "0000010";  -- 2 (min value from specs)
            Done_ref      <= '-';        --depend valeur initialisation cpt !
            cycle(2);
            Mono_nDiv_sti <= '1';
            En_Div_sti    <= '1';
            run_mono_sti  <= '1';
            cycle(2);
            Reset_sti     <= '0';
            En_Div_sti    <= '0';
            run_mono_sti  <= '0';
        end test_reset_asynch;

    begin

        Nbr_Err_v := -2;                -- initialise compteur d'erreur
        -- le tester genere deux erreurs volontaires
        -- total final = 0

        report"Debut simulation";

        test_reset_asynch;

        -- Test du fonctionnement en diviseur
        Mono_nDiv_sti <= '0';
        wait until Rising_Edge(Horloge_s);
        -- MIM : Le nouvel énoncé défini done au repos à 0
        Done_ref      <= '0';           -- Done est à '0' au repos
        Val_v         := 2;             -- Start value
        -- Début de 10 tests avec des valeurs pseudo random
        for I in 1 to 10 loop
            Val_sti    <= std_logic_vector(To_Unsigned(Val_v, Val_sti'length));
            cycle;
            --active le mode diviseur
            En_Div_sti <= '1';
            -- On ne sait pas quand nous aurons le premier flanc sur la sortie
            -- on attend donc ce dernier afin de compter à partir de ce moment
            -- là si le suivant est bien val_i coup d'horloge plus tard
            wait until Rising_Edge(done_obs);
            Done_ref   <= '1';
            wait until Rising_Edge(Horloge_s);
            Done_ref   <= '0';          --Done doit etre desactive
            for J in 1 to Val_v-1 loop  --attente Done inactif
                wait until Rising_Edge(Horloge_s);
            end loop;
            Done_ref <= '1';            --Done actif pendant une periode
            wait until Rising_Edge(Horloge_s);     --attente d'une periode 
            Done_ref <= '0';            --Done doit etre desactive
            for J in 1 to Val_v-1 loop  --attente Done inactif
                wait until Rising_Edge(Horloge_s);
            end loop;
            Done_ref   <= '1';          --Done actif pendant une periode
            wait until Rising_Edge(Horloge_s);     --attente d'une periode
            Done_ref   <= '0';          --Done doit etre desactive
            cycle;
            --desactive le mode diviseur
            En_Div_sti <= '0';
            wait until Rising_Edge(Horloge_s);
            Done_ref   <= '0';          --Done est a '0' au repos
            --calcul prochaine valeur pour Val, pseudo aleatoire
            Val_v      := ((7 * Val_v)/3)mod 128;  -- mod EMI: modulo 128 pour 7 bits
            cycle(3);
        end loop;



        -- Test du fonctionnement en monostable
        Mono_nDiv_sti <= '1';
        Done_ref      <= '-';  --etat de Done pas changer lors changement de mode
        wait until Rising_Edge(Horloge_s);
        Val_v         := 2;
        for I in 1 to 10 loop
            Val_sti <= std_logic_vector(To_Unsigned(Val_v, Val_sti'length));

            cycle(2);

            --test monostable sans rearmement
            run_mono_sti <= '1';        --arme le monostable
            wait until Rising_Edge(Horloge_s);
            Done_ref     <= '0';        --Done doit etre desactive
            for J in 1 to Val_v-1 loop  --attente delai monostable
                wait until Rising_Edge(Horloge_s);
            end loop;
            Done_ref     <= '1';        --Done doit s'activer
            cycle(3);
            run_mono_sti <= '0';
            wait until Rising_Edge(Horloge_s);
            Done_ref     <= '0';

            --test monostable avec rearmement
            Attente_v    := Val_v/3 + 1;  --calcul d'une attente pour le rearmement 
            cycle(2);
            run_mono_sti <= '1';        --demarrage delai du monostable
            wait until Rising_Edge(Horloge_s);
            Done_ref     <= '0';        --Done doit etre desactive
            cycle(Attente_v);           --attendre un delai
            run_mono_sti <= '0';        --rearme le monostable
            cycle;
            run_mono_sti <= '1';        --demarrage delai du monostable
            wait until Rising_Edge(Horloge_s);
            for J in 1 to Val_v-1 loop  --attente delai monostable
                wait until Rising_Edge(Horloge_s);
            end loop;
            Done_ref     <= '1';        --Done doit s'activer
            cycle(3);                   --Done reste actif
            run_mono_sti <= '0';
            wait until Rising_Edge(Horloge_s);
            Done_ref     <= '0';

            --calcul prochaine valeur pour Val
            Val_v := (((7 * Val_v)/3)mod 31)+1;
            cycle(3);
        end loop;



        --2 erreurs provoquees: verification envoi message d'erreur et activation signal Erreur
        cycle(10);
        Done_ref <= '1';
        cycle;
        Done_ref <= '0';

        report ">>----------------------------------------" & LF &
            "         >>  Nombre d'erreurs detectees = " & integer'image(Nbr_Err_v) & LF &
            "         >>----------------------------------------";
        if Nbr_Err_v = 0 then
            report ">>--------------------------------------->>" & LF &
                "         >>                                       >>" & LF &
                "         >>    Bravo votre systeme fonctionne     >>" & LF &
                "         >>                                       >>" & LF &
                "         >>--------------------------------------->>";
        elsif Nbr_Err_v < 0 then
            report ">>---------------------------------------------------------------------->>" & LF &
                "         >> Tres bizzarre, vous n'avez pas les deux erreurs volontaire du TB!!!  >>" & LF &
                "         >>---------------------------------------------------------------------->>";
        else
            report ">>------------------------------------------------------------>>" & LF &
                "         >> Courage, vous avez encore quelques erreurs a corriger      >>" & LF &
                "         >>------------------------------------------------------------>>";
        end if;
        report ">>Fin de la simulation";

        Sim_End_s <= true;
        wait;                           --Attente infinie, stop la simulation

    end process;

---------------------------------------------------------------------------
-- Process de verification
---------------------------------------------------------------------------
    process
    begin
        while not Sim_End_s loop
            wait until Falling_Edge(Horloge_s);
            wait for (Periode_c/2)- 2 ns;
            --Verification asynchrone
            if Done_ref = '-' then
                report"Done pas verifie";
            elsif Done_ref /= Done_obs then
                Erreur_s  <= '1', '0' after Pulse_c;
                Nbr_Err_v := Nbr_Err_v + 1;
                report"Lors verif Sortie, asynch"
                    severity error;
            end if;
            wait until Rising_Edge(Horloge_s);
            wait for (Periode_c/2)- 2 ns;
            --Verification synchrone
            if Done_ref = '-' then
                report"Done pas verifie";
            elsif Done_obs /= Done_ref then
                Erreur_s  <= '1', '0' after Pulse_c;
                Nbr_Err_v := Nbr_Err_v + 1;
                report"Lors verif Sortie, synch"
                    severity error;
            end if;
        end loop;
        wait;
    end process;

end architecture Test_Bench;

