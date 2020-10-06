###########################################################################
# HEIG-VD, Haute Ecole d'Ingenierie et de Gestion du canton de Vaud
# Institut REDS, Reconfigurable & Embedded Digital Systems
#
# Fichier      : comp_aff_min_max.do
# Description  : Script de compilation des fichiers
# 
# Auteur       : Etienne Messerli
# Date         : 12.03.2019
# Version      : 1.0
#
# Utilise      : Compilation projet affichage min_max
#                entity top is: min_max_top
#
#--| Modifications |--------------------------------------------------------
# Ver  Aut.  Date   Description
#                         
############################################################################


#create library work        
vlib work
#map library work to work
vmap work work

 # Aff_min_max file compilation
 ajouter vos fichiers a compiler 
 .....
vcom -reportprogress 300 -work work   ../src/min_max_top.vhd

 # test-bench compilation
vcom -reportprogress 300 -work work   ../src_tb/min_max_top_tester.vhd
vcom -reportprogress 300 -work work   ../src_tb/min_max_top_tb.vhd
vcom -reportprogress 300 -work work   ../src_tb/console_sim.vhd
