###########################################################################
# HEIG-VD, Haute Ecole d'Ingenierie et de Gestion du canton de Vaud
# Institut REDS, Reconfigurable & Embedded Digital Systems
#
# Fichier      : run_sim_aff_min_max.do
# Description  : Script de compilation des fichiers et 
#                de lancement de la simulation manuelle
#                (utilisation de la console specifique: Aff_Min_Max.tcl)
# 
# Auteur       : Etienne Messerli
# Date         : 30.09.2014
# Version      : 1.0
#
# Utilise      : lancement de la simulation manuelle de min_max.vhd
#
#--| Modifications |--------------------------------------------------------
# Ver  Aut.  Date   Description
#                         
############################################################################


#compile all file
do ../comp_aff_min_max.tcl

#Chargement fichier pour la simulation
vsim -voptargs="+acc" work.console_sim

#Ouvre et place les fenetres signal et wave    
#do C:/EDA/Tools_REDS/QuestaSim/QuestaSim.do

#ajout signaux composant simuler dans la fenetre wave
add wave UUT/*

#lance la console REDS
do ../console/Aff_Min_Max.tcl

#ouvre le fichier format predefini
#do wave_aff_min_max.do




