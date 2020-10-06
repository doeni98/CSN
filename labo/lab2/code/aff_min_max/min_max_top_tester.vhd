-------------------------------------------------------------------------------
-- HEIG-VD, Haute Ecole d'Ingenierie et de Gestion du canton de Vaud
-- Institut REDS, Reconfigurable & Embedded Digital Systems
--
-- Fichier      : Min_Max_top_tester.vhd
--
-- Description  : Banc de test automatique (test bench) pour 
--                affichage min-max (tester)
-- 
-- Auteur       : Etienne Messerli
-- Date         : 29.09.2014
-- Version      : 0.0
-- 
-- Utilise      : Manipulation de laboratoire du cours CSN
--                 
-- 
--| Modifications |------------------------------------------------------------
-- Version   Auteur Date               Description
-- 
-------------------------------------------------------------------------------

library ieee;
  use ieee.std_logic_1164.ALL;
  use ieee.numeric_std.ALL;

library std;
  use std.textIO.all;

  
entity min_max_top_tester is
Generic (
          Mode_Normal_Optionnel : boolean 
          );

   port( 
      Leds_obs : in     std_logic_vector ( 15 downto 0 );
      Com_sti  : out    Std_Logic_Vector ( 1 downto 0 );
      Max_sti  : out    Std_Logic_Vector ( 3 downto 0 );
      Min_sti  : out    Std_Logic_Vector ( 3 downto 0 );
      Osc_sti  : out    std_logic;
      Val_sti  : out    Std_Logic_Vector ( 3 downto 0 )
   );

-- Declarations

end min_max_top_tester ;

--------------------------------------------------------------------------------
-- Banc de test pour le multiplexeur 2 a 1 
--------------------------------------------------------------------------------
--
-- Principe de fonctionnement du test bench
-- ========================================
--
--    |<-------- Pas_Sim (exemple 250us) -------->|
--    |                                           |
--    |                                           |
--    |<-- Pas_Sim/2 ->|                   		  |
--    î                 î
--   Assignation     Verification
--   Stimuli
--
-- Stimuli : affectes au debut du pas de simulation (_sti)
--           calcul les valeurs de references pour la verification (_ref)
-- Verification : test au milieu du pas de simulation
--                (assert et impulsion sur signal d'Erreurs)
--------------------------------------------------------------------------------

architecture tester of min_max_top_tester is

  -- Copyright (c) 1996, Ben Cohen.   All rights reserved.
  function Image(In_Image : Std_Logic_Vector) return String is
    variable L : Line;  -- access type
    variable W : String(1 to In_Image'length) := (others => ' ');  
  begin
     IEEE.Std_Logic_TextIO.WRITE(L, In_Image);
     W(L.all'range) := L.all;
     Deallocate(L);
     return W;
  end Image;
  
  	-- fonction conversion integer to lineaire
 function incre_to_linear ( Incr : integer )	return std_logic_vector is
 
 variable result : std_logic_vector(15 downto 0);
  begin
	for I in 0 to 15 loop
		if I<=Incr then		
			result(I):='1';
		else
			result(I):='0';
		end if;
	end loop;
	
	return result;
 end incre_to_linear;	
		
  
 function Fonction_Optionnel ( 	Incr 	: integer;
								MAX 	: boolean;
								Osci_s: std_logic	)	return std_logic_vector is
 
 variable result : std_logic_vector(15 downto 0);
  begin
	for I in 0 to 15 loop
		if MAX=FALSE then 
		
			if I<=Incr then		
				result(I):=Osci_s;
			else
				result(I):='0';
			end if;
		else
			if I<Incr then		
				result(I):='0';
			else
				result(I):='1';
			end if;
		end if;
		
	end loop;
	
	return result;
 end Fonction_Optionnel;	  
  
 
 
 function Fonction_Mode_normal (Incr_val 	: integer;
								Incr_MAX 	: integer;
								Incr_MIN 	: integer;
								Osci_s		: std_logic	)	return std_logic_vector is
 
 variable result : std_logic_vector(15 downto 0);
  begin
	for I in 0 to 15 loop
		if I<Incr_MIN then		
				result(I):='0';
		elsif (I>=Incr_MIN) and (I<=Incr_val) then
			result(I):='1';
		elsif I>Incr_val and I<=Incr_MAX then
			result(I):=Osci_s;
		else 
			result(I):='0';		
		end if;
		
	end loop;
	
	return result;
 end Fonction_Mode_normal;	  
  
   
  
  -- Internal constants for the testbench
  constant Pas_Sim_c   : time := 1 ms;
  constant Pulse_c     : time := 4 ns;
  
  -- Internal signals
  signal Erreur_s 	: std_logic := '0';  
  signal Osci_s		: std_logic :='0';
  signal sim_end  :std_logic :='0';

  

begin

---------------------------------------------------------------------------
-- Generateur de rapport cyclique 25% avec une fréquece de base de 1khz
---------------------------------------------------------------------------
process
begin
Osci_s<='0';
wait for 500 us;
Osci_s<='1';
wait for 500 us;
 if sim_end='1' then
  wait;
end if;

end process;
-- affectation en sortie
Osc_sti <= Osci_s;

---------------------------------------------------------------------------
-- Generateur de stimuli
---------------------------------------------------------------------------

process
variable Nbr_Err_v : integer;
  
begin
  Com_sti<=(others=>'0');
  Val_sti<=(others=>'0');
  Max_sti<=(others=>'0');
  Min_sti<=(others=>'0');
  
  Nbr_Err_v := 0; --Initialise compteur d'Erreur_s
  wait until Osci_s='1';
  wait for 1 ns;
	report ">> Debut de la simulation";

    	

	for Incr_COM in 0 to 3 loop
  
		for Incr_MIN in 0 to 15 loop  
      
			for Incr_MAX in 0 to 15 loop 
         
				for Incr_VAL in 0 to 15 loop 
              
					if (Incr_MIN<=Incr_MAX) then -- verification des cas valides
                    
						-- Affectation des stimulis
						  Com_sti <= std_logic_vector (to_unsigned(Incr_COM,2));
						  Val_sti <= std_logic_vector (to_unsigned(Incr_VAL,4)); 
						  Max_sti <= std_logic_vector (to_unsigned(Incr_MAX,4)); 
						  Min_sti <= std_logic_vector (to_unsigned(Incr_MIN,4)); 
                    
                    
						-- verification
						for osci_pas in 0 to 1 loop  -- 2 loop, pour verifier avec les 2 valeurs de Osci_sti							
							wait for Pas_Sim_c/2;
							
						
				--////////////////////////////////
				---------- Mode Normal ---------
				--////////////////////////////////

						
							if Incr_COM=0 then 
							 
								-- condition hors bornes max
								if Incr_VAL>Incr_MAX  then
									if Mode_Normal_Optionnel then
									
										if leds_obs /= Fonction_Optionnel(Incr_VAL,TRUE,Osci_s) then										
											Erreur_s <= '1', '0' after Pulse_c;
											Nbr_Err_v := Nbr_Err_v + 1;
											report ">> Erreur sur LED en 'Mode normal Optionnel' avec valeur hors interval (max), valeur:" & integer'image(Incr_VAL) &
											": Reçu " & image(leds_obs) &
											"; Attendu: " & image(Fonction_Optionnel(Incr_VAL,TRUE,Osci_s))
											severity ERROR;
										end if;									
										
								
									else
										if leds_obs /= "0000000000000000" then
											Erreur_s <= '1', '0' after Pulse_c;
											Nbr_Err_v := Nbr_Err_v + 1;
											report ">> Erreur sur LED en 'Mode Normal' avec valeur hors interval (max)" &
											": Reçu " & image(leds_obs) &
											"; Attendu: 0000000000000000"
											severity ERROR;
										end if;
									end if;
									
								-- condition hors bornes min
								elsif Incr_VAL<Incr_MIN then 
									if Mode_Normal_Optionnel then
									
										if leds_obs /= Fonction_Optionnel(Incr_VAL,FALSE,Osci_s) then										
											Erreur_s <= '1', '0' after Pulse_c;
											Nbr_Err_v := Nbr_Err_v + 1;
											report ">> Erreur sur LED en 'Mode normal Optionnel' avec valeur hors interval (min), valeur:" & integer'image(Incr_VAL) &
											": Reçu " & image(leds_obs) &
											"; Attendu: " & image(Fonction_Optionnel(Incr_VAL,FALSE,Osci_s))
											severity ERROR;
										end if;									
									else
										if leds_obs /= "0000000000000000" then
											Erreur_s <= '1', '0' after Pulse_c;
											Nbr_Err_v := Nbr_Err_v + 1;
											report ">> Erreur sur LED en 'Mode Normal' avec valeur hors interval (min) " &
											": Reçu " & image(leds_obs) &
											"; Attendu: 0000000000000000"
											severity ERROR;
										end if;								
									end if;
											
								
								
								else -- cas normal
									
									if leds_obs /= Fonction_Mode_normal(Incr_VAL,Incr_MAX,Incr_MIN,Osci_s) then										
										Erreur_s <= '1', '0' after Pulse_c;
										Nbr_Err_v := Nbr_Err_v + 1;
										report ">> Erreur sur LED en 'Mode normal' avec valeur:" & integer'image(Incr_VAL) &
										": Reçu " & image(leds_obs) &
										"; Attendu: " & image(Fonction_Mode_normal(Incr_VAL,Incr_MAX,Incr_MIN,Osci_s))
										severity ERROR;
									end if;			
									
									
									
								
								end if;
							
						--////////////////////////////////
						---------- Mode linéaire ---------
						--////////////////////////////////	
						
							elsif Incr_COM=1 then 
								if leds_obs /= incre_to_linear(Incr_VAL) then										
									Erreur_s <= '1', '0' after Pulse_c;
									Nbr_Err_v := Nbr_Err_v + 1;
									report ">> Erreur sur LED en 'Mode Linéaire' avec valeur" & integer'image(Incr_VAL) &
									": Reçu " & image(leds_obs) &
									"; Attendu: " & image(incre_to_linear(Incr_VAL))
									severity ERROR;
								end if;
					  
					  
						--////////////////////////////////
						-------- Mode Test éteint -------
						--////////////////////////////////	
					  
							elsif Incr_COM=2 then 
								if leds_obs /= "0000000000000000" then
									Erreur_s <= '1', '0' after Pulse_c;
									Nbr_Err_v := Nbr_Err_v + 1;
									report ">> Erreur sur LED en 'Mode Test éteint' avec valeur" & integer'image(Incr_VAL) &
									": Reçu " & image(leds_obs) &
									"; Attendu: 0000000000000000"
									severity ERROR;
								end if;
							
						--////////////////////////////////
						-------- Mode Test allumé -------
						--////////////////////////////////
							
							elsif Incr_COM=3 then 
								if leds_obs /= "1111111111111111" then
									Erreur_s <= '1', '0' after Pulse_c;
									Nbr_Err_v := Nbr_Err_v + 1;
									report ">> Erreur sur LED en 'Mode Test allumé' avec valeur" & integer'image(Incr_VAL) &
									": Reçu " & image(leds_obs) &
									"; Attendu: ""1111111111111111"
									severity ERROR;
								end if;
							end if;
						end loop; --osci_pas
              
              
					else
						null; -- pour les cas non valide, on ne fait rien
					end if;
                  
				end loop; -- VAL
			end loop; -- MAX
		end loop; -- MIN
	end loop; -- COM

		
	  report ">> Nombre d'erreur(s) detectee(s): " & integer'image(Nbr_Err_v);  
    if Nbr_Err_v > 0 then
      report ">> Votre composant comporte encore quelques erreurs";
      report ">> Referez-vous au chronogramme pour les trouver";
    else 
      report ">> Bravo, votre composant à passé tous les cas.";
    end if;

    report ">> Fin de la simulation";
    sim_end<='1';
    wait;  --Attente infinie, stop la simulation

  end process;


end architecture tester;


