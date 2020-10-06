###########################################################################
# HEIG-VD, Haute Ecole d'Ingenierie et de Gestion du canton de Vaud
# Institut REDS, Reconfigurable & Embedded Digital Systems
#
# Fichier      : run_tb_aff_min_max.tcl
# Description  : Script de compilation des fichiers et 
#                de lancement de la simulation automatique
#                (utilisation du test bench)
# 
# Auteur       : Etienne Messerli
# Date         : 30.09.2014
# Version      : 1.0
#
# Utilise      : Compilation bin_lin_2a4.vhd
#
#--| Modifications |--------------------------------------------------------
# Ver  Aut.  Date   Description
#                         
############################################################################


#compile all file
do ../comp_aff_min_max.tcl

#Chargement fichier pour la simulation
vsim -voptargs="+acc" work.min_max_top_tb 

#Ouvre et place les fenetres signal et wave    
#do C:/EDA/Tools_REDS/QuestaSim/QuestaSim.do

#ajout signaux composant simuler dans la fenetre wave
add wave UUT/*
add wave -noupdate -radix unsigned /min_max_top_tb/tst/line__188/Nbr_Err_v

#ouvre le fichier format predefini
#do wave_aff_min_max.do




