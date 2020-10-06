#!/sw/bin/wish
# ----------------------------------------------------------------------------------------
# -- HEIG-VD /////////////////////////////////////////////////////////////////////////////
# -- Haute Ecole d'Ingenerie et de Gestion du Canton de Vaud
# -- School of Business and Engineering in Canton de Vaud
# ----------------------------------------------------------------------------------------
# -- REDS Institute //////////////////////////////////////////////////////////////////////
# -- Reconfigurable Embedded Digital Systems
# ----------------------------------------------------------------------------------------
# --
# -- File                 : Aff_Min_Max.tcl
# -- Author               : Gilles Habegger
# -- Date                 : 24 octobre 2012
# --
# -- Context              : Laboratoires de numerique
# --
# ----------------------------------------------------------------------------------------
# -- Description :
# --   Console pour le laboratoire de BSL Affichage d'une valeur lineaire entre
# --   deux bornes Min et Max
# ----------------------------------------------------------------------------------------
# -- Modifications :
# -- Ver   Date        Engineer         Comments
# -- 1.0   See header  Gilles Habegger  Initial version
# -- 2.0   ?           C.Muller         Modified for Logisim (Add refresh and removed run)
# -- 2.1   30.09.14    Gilles Habegger  Adapted to work with Questasim (run 10ns for led state)
# --                                    with a global variable called simulation_mode.
# --                                    Now run in target mode with 80p connector.
# -- 2.2   02.10.17    Mike Meury       Modify the target to console_sim and add procedure
#                                       to respect new graphical_element library
# ----------------------------------------------------------------------------------------
set Version 1.0

package require Tk

set redsToolsPath /opt/tools_reds
set consoleInfo(version) 1.0
set consoleInfo(title) "Affichage lineaire d'une valeur entre deux bornes Min et Max"; # Title that will be display in title bar
set consoleInfo(filename) "Aff_Min_Max"; # Filename without the filetype
set debugMode FALSE; # Display debug info
# set debugMode TRUE; # Display debug info
# Change this variable name depends where the console run
set simulation_mode "Questasim"
# set simulation_mode "Logisim"


# --| SETVARIABLES |----------------------------------------------------------------------
# --  Set fonts and addresses
# ----------------------------------------------------------------------------------------
proc SetVariables {} {
  # Global variables, see below
  global fnt speed runningMode \
         dataPin adrConfPin adrDataPin \
         adrVersion adrSUBD25OE adr80pCONNOE adrReset \
         strResourcePath images windowOpen Osc \
         Comp_Osc_LedA Comp_Osc_LedB Incr_LedA Incr_LedB

  # Redirect StdOut to nowhere (prevent polution in logs)
  #StdOut off

  set Osc 0
  for {set I 0} {$I<8} {incr I} {
    set Comp_Osc_LedA($I) 0
    set Comp_Osc_LedB($I) 0
    set Incr_LedA($I) 0
    set Incr_LedB($I) 0
  }

  # Fonts
  font create fnt{3} -family {MS Sans Serif} -weight bold -size 8; puts ""
  font create fnt{4} -family {MS Sans Serif} -weight normal -size 8; puts ""
  font create fnt{5} -family {Courier New} -weight normal -size 8; puts ""

  # Speeds
  if {$runningMode == "Simulation"} {
    set speed(Refresh) 300; # Time [ms] between run steps (target runningMode)
  } else {
    set speed(Refresh) 10;
  }

  # Addresses to configuration pins of the SUB25s of the board
  set adrConfPin(D01_08) [format %d 0x4000]; # Right connector, pins 1  to 8
  set adrConfPin(D09_16) [format %d 0x4001]; # Right connector, pins 9  to 16
  set adrConfPin(D17_24) [format %d 0x4002]; # Right connector, pins 17 to 24
  set adrConfPin(D25_27) [format %d 0x4003]; # Right connector, pins 25 to 27
  set adrConfPin(G01_08) [format %d 0x4004]; # Left connector,  pins 1  to 8
  set adrConfPin(G09_16) [format %d 0x4005]; # Left connector,  pins 9  to 16
  set adrConfPin(G17_24) [format %d 0x4006]; # Left connector,  pins 17 to 24
  set adrConfPin(G25_27) [format %d 0x4007]; # Left connector,  pins 25 to 27

  # Addresses to set the value of pins of the SUB25s of the board
  set adrDataPin(D01_08) [format %d 0x5000]; # Right connector, pins 1  to 8
  set adrDataPin(D09_16) [format %d 0x5001]; # Right connector, pins 9  to 16
  set adrDataPin(D17_24) [format %d 0x5002]; # Right connector, pins 17 to 24
  set adrDataPin(D25_27) [format %d 0x5003]; # Right connector, pins 25 to 27
  set adrDataPin(G01_08) [format %d 0x5004]; # Left connector,  pins 1  to 8
  set adrDataPin(G09_16) [format %d 0x5005]; # Left connector,  pins 9  to 16
  set adrDataPin(G17_24) [format %d 0x5006]; # Left connector,  pins 17 to 24
  set adrDataPin(G25_27) [format %d 0x5007]; # Left connector,  pins 25 to 27

  # Addresses for configuration pins of the 80pCONN of the board
  set adrConfPin(80pConnPort1) [format %d 0x4008]; # 80p connector, pins 1  to 8
  set adrConfPin(80pConnPort2) [format %d 0x4009]; # 80p connector, pins 9  to 16
  set adrConfPin(80pConnPort3) [format %d 0x400a]; # 80p connector, pins 17  to 24
  set adrConfPin(80pConnPort4) [format %d 0x400b]; # 80p connector, pins 25  to 32
  set adrConfPin(80pConnPort5) [format %d 0x400c]; # 80p connector, pins 33  to 40
  set adrConfPin(80pConnPort6) [format %d 0x400d]; # 80p connector, pins 41  to 48
  set adrConfPin(80pConnPort7) [format %d 0x400e]; # 80p connector, pins 49  to 56
  set adrConfPin(80pConnPort8) [format %d 0x400f]; # 80p connector, pins 57  to 64
  set adrConfPin(80pConnPort9) [format %d 0x4010]; # 80p connector, pins 65  to 72
  set adrConfPin(80pConnPort10) [format %d 0x4011]; # 80p connector, pins 73  to 80
  
   # Addresses to set the value of pins of the 80pCONN of the board
  set adrDataPin(80pConnPort1) [format %d 0x5008]; # 80p connector, pins 1  to 8
  set adrDataPin(80pConnPort2) [format %d 0x5009]; # 80p connector, pins 9  to 16
  set adrDataPin(80pConnPort3) [format %d 0x500a]; # 80p connector, pins 17  to 24
  set adrDataPin(80pConnPort4) [format %d 0x500b]; # 80p connector, pins 25  to 32
  set adrDataPin(80pConnPort5) [format %d 0x500c]; # 80p connector, pins 33  to 40
  set adrDataPin(80pConnPort6) [format %d 0x500d]; # 80p connector, pins 41  to 48
  set adrDataPin(80pConnPort7) [format %d 0x500e]; # 80p connector, pins 49  to 56
  set adrDataPin(80pConnPort8) [format %d 0x500f]; # 80p connector, pins 57  to 64
  set adrDataPin(80pConnPort9) [format %d 0x5010]; # 80p connector, pins 65  to 72
  set adrDataPin(80pConnPort10) [format %d 0x5011]; # 80p connector, pins 73  to 80

  # Address for the version of the FPGA
  set adrVersion [format %d 0x6000]

  # Address to reset the IOs of the board
  set adrReset [format %d 0x4fff]

  # Address to activate the IOs of the SUBD25 pins
  set adrSUBD25OE [format %d 0x4ffe]

  # Address to activate the IOs of the 80pCONN pins
  set adr80pCONNOE [format %d 0x4ffd]

  # Data variables for inputs/outputs
  # set dataPin(D01_08) 0; # Switches
  # set dataPin(D09_16) 0; # Leds

  # To check if windows are open
  set windowOpen(SignalLabels) FALSE
  set windowOpen(About) FALSE

  # Reactivate StdOut
  #StdOut on
}

# ----------------------------------------------------------------------------------------
# -- Fonctions appelees par Logisim  /////////////////////////////////////////////////////
# ----------------------------------------------------------------------------------------

# --| ENABLELOGISIM |---------------------------------------------------------------------
# --   Set fonts and addresses
# ----------------------------------------------------------------------------------------
proc enableLogisim {enabled} {
  global logisimEnabled
  #TRUE or FALSE
  set logisimEnabled $enabled
  echo "Logisim enabled: $logisimEnabled"
}

# --| LOGISIMFORCE |----------------------------------------------------------------------
# --   Dans Logisim, Lorsqu'un "tick" est genere, cette fonction est appele
# ----------------------------------------------------------------------------------------
proc logisimForce {} {
  SetOutputs
}

# --| LOGISIMEXAMINE |--------------------------------------------------------------------
# --   Dans Logisim, Lorsqu'une valeur change d'etat a l'entree de la console, 
# --   cette fonction est appelee.
# ----------------------------------------------------------------------------------------
proc logisimExamine {} {
  ReadInputs
}

# --| Check_Mode |---------------------------------------------------------------
#
#   Test du mode de fonctionnement: Simulation ou Target
#      Dans le cas du mode Target --> test si la dll est presente
# -------------------------------------------------------------------------------
proc Check_Mode {} {
  global InstallDir runningMode consoleInfo redsToolsPath

  # repertoire de la dll
  set InstallDir "$redsToolsPath/lib/usb2/"
  set libName "libredsusb.so"

  # par defaut pas d'erreur
  set isErr 0

  # Check for standalone run (meaning it has not been launched from QuestaSim)
  if {[wm title .] == $consoleInfo(filename)} {
    wm withdraw .
  }

  # Check the running mode -> Simulation or Target
  catch {restart -f} err1
  if {$err1 != "invalid command name \"restart\""} {
    set runningMode "Simulation"
  } else {
    set runningMode "Target"
    # Test if the DLL "GestionUSB2" is installed
    catch {load $InstallDir$libName} err2
    if {$err2 != "" } {
      # Error --> try in local folder
      catch {load $libName} err3
      if {$err3 != "" } {
        # Installation error
        set msgErr "$libName n'est pas installee : $err2 - $err3"
        set isErr  1
      } else {
        set InstallDir .
      }
    }
    if {$isErr == 0} {
      UsbSetDevice 08ee 4002
    }
  }

  # affichage de l'erreur s'il a lieu
  if {$isErr == 1} {
      tk_messageBox -icon error -type ok -title error -message $msgErr
      exit  ; # quitte l'application
  }
}

# --| Maj_Stimuli |--------------------------------------------------------------
# Lit la valeur des boutons puis met a jour le registre de sortie de la boite
# de commande (adr 0x2000). Lit ensuite la valeur du registre d'entree (0x2004)
# pour mettre a jour l'etat des leds.
# -------------------------------------------------------------------------------

proc Maj_Stimuli {} {
    global adrDataPin Val_Affichage

    set S0 [readButton .top.s 0]
    set S1 [readButton .top.s 1]

    set Val_S [format %d [expr $S0 + $S1 * 2 + $S2 * 4]]

    EcrireUSB $adrDataPin(D01_08) $Val_S

    set Val_Affichage [LireUSB $adrDataPin(D09_16)]

    set Valeur $Val_Affichage

    for {set I 0} {$I<8} {incr I} {
        set Bit_Courant [expr $Valeur % 2]

        if {$Bit_Courant == 1} {
            setLed .top.l$I 0 ON
        } else {
            setLed .top.l$I 0 OFF
        }

        set Valeur [expr $Valeur / 2]
    }

}

# --| Dec2Bin |---------------------------------------------------------------------------
# --  Transform a decimal value to a binary string. (Max 32-bits)
# --    - Value:   The value to be converted
# --    - NbrBits: Number of bit of "Value"
# --    - Dest
# ----------------------------------------------------------------------------------------
proc Dec2Bin {Value {NbrBits 8} {DestBits 8} {Signed true}} {
  global lblTestVal

  set BitList []
  set Index [expr $NbrBits -1]
  set SignedValMin [expr -(pow(2,$NbrBits-1))]
  set SignedValMax [expr pow(2,$NbrBits-1)-1]
  set UnsignedValMin 0
  set UnsignedValMax [expr pow(2,$NbrBits-1)-1]
  set Negative false

  # Prevent shorter destination... subjective choice
  if {$DestBits < $NbrBits} {
    set DestBits $NbrBits
  }

  # Calculate the limits according to the mode (signed/unsigned)
  if {$Signed} {
    set ValMin $SignedValMin
    set ValMax $SignedValMax
  } else {
    set ValMin $UnsignedValMin
    set ValMax $UnsignedValMax
  }

  # Warn if $Value overflow the capacity according to $NbrBits
  # if {($Value < $ValMin) || ($Value > $ValMax)} {
  #   set ttl "D�passement de capacit�"
  #   if {$Signed} {set Sign "sign�"} else {set Sign "non-sign�"}
  #   set msg "Le nombre $Value ($Sign) d�passe la capacit� ($NbrBits-bits) du vecteur."
  #   tk_messageBox -parent .top -icon warning -type ok -title $ttl -message $msg
  # }

  # Convert $Value to a 32-bits binary number BinRep
  set BinRep [binary format I $Value]

  # Convert $BinRep to a binary string
  binary scan $BinRep B* BinStr

  # Return result, cut it according to $NbrBits
  set LastBit [string length $BinStr]

  # Propagate MSB for signed values
  if {$Signed} {
    set MSB [string range $BinStr [expr $LastBit-$NbrBits] [expr $LastBit-$NbrBits]]
    set ZeroStr [string repeat $MSB [expr $LastBit-$NbrBits]]
    set BinStr [string replace $BinStr 0 [expr $LastBit-$NbrBits-1] $ZeroStr]
    #set lblTestVal "$BinStr\n$ZeroStr"
  }

  return [string range $BinStr [expr $LastBit-$DestBits] $LastBit]
}

# | RunDisplay |--------------------------------------------------------------
# Lit la valeur des boutons puis met a jour les stimulis. Fait avancer la simu-
# lation de 100 ns et lit les valeurs des signaux observes pour mettre a jour
# l'etat des leds.
# ----------------------------------------------------------------------------

proc RunDisplay {} {
    global runText inLblVal Max Val Min runningMode
    #Disable the "Run" button while running
    if {$runText == "Run"} {
      .top.run configure -state disabled
    }
    set inLblVal(Max) "[format 0x%01x $Max]"
    set inLblVal(Val) "[format 0x%01x $Val]"
    set inLblVal(Min) "[format 0x%01x $Min]"

    SetOutputs

    if {$runningMode == "Simulation"} {
      run
    }

    ReadInputs

    #Finished, re-enable it
  if {$runText == "Run"} {
    .top.run configure -state normal
  }

}


# | ReadInputs |--------------------------------------------------------------
# Lit la valeur des 16 Leds pendant 10x 10ns et assigne la bonne couleur
# a chaque Led
# ----------------------------------------------------------------------------
proc ReadInputs {} {
    global runningMode adrDataPin debugLabel debugMode Osc Comp_Osc_LedA Comp_Osc_LedB Incr_LedA Incr_LedB simulation_mode

  for {set I 0} {$I<8} {incr I} {
    set Led_A($I) 0
    set Led_B($I) 0
  }
# Lecture de l'�tat des leds
  if {$runningMode == "Simulation"} {
    for {set i 0} {$i<5} {incr i} {
    # avancement du temps si la console est utilisee avec Questasim et non Logisim
      if {$simulation_mode == "Questasim"} {
        run 10 ns
      }

      set Val_Led [examine  /console_sim/Result_A_obs]
      for {set I 0} {$I<8} {incr I} {
        if {[string index $Val_Led end-$I] == 1} {
          incr Led_A($I)
        }
      }

      set Val_Led [examine  /console_sim/Result_B_obs]
      for {set I 0} {$I<8} {incr I} {
        if {[string index $Val_Led end-$I] == 1} {
          incr Led_B($I)
        }
      }
    }
  } else {
      set ledsState [LireUSB $adrDataPin(80pConnPort6)]
      for {set i 0} {$i<8} {incr i} {
        set j [expr $i+1]
        if {[expr $ledsState % int(pow(2,$j))] == int(pow(2,$i))} {
          set Led_A($i) 1
          set ledsState [expr $ledsState - int(pow(2,$i))];
        } else {
          set Led_A($i) 0
        }
      }
      set ledsState [LireUSB $adrDataPin(80pConnPort7)]
      for {set i 0} {$i<8} {incr i} {
        set j [expr $i+1]
        if {[expr $ledsState % int(pow(2,$j))] == int(pow(2,$i))} {
          set Led_B($i) 1
          set ledsState [expr $ledsState - int(pow(2,$i))];
        } else {
          set Led_B($i) 0
        }
      }
    }

# Mise a jour de l'etat des Leds

  if {$runningMode == "Simulation"} {
    for {set I 0} {$I<8} {incr I} {
      set J [expr $I]
      if {$Led_A($I) == 5} {
        setLed .top.l$J 0 ON
      } elseif { $Led_A($I) == 0} {
        setLed .top.l$J 0 OFF
      } else {
        setLedCyan .top.l$J 0 ON
      }
    }
    for {set I 0} {$I<8} {incr I} {
      set J [expr $I+8]
      if {$Led_B($I) == 5} {
        setLed .top.l$J 0 ON
      } elseif { $Led_B($I) == 0} {
        setLed .top.l$J 0 OFF
      } else {
        setLedCyan .top.l$J 0 ON
      }
    }
  } else {
    for {set I 0} {$I<8} {incr I} {
      if {$debugMode == TRUE} {
        set debugLabel(0) "Led_A(0):$Led_A(0)|Comp_Osc_LedA:$Comp_Osc_LedA(0)|Incr_LedA:$Incr_LedA(0)"
      }
      if {$Led_A($I) != $Comp_Osc_LedA($I)} {
        incr Incr_LedA($I)
      } else {
        set Incr_LedA($I) 0
      }
      if {$Incr_LedA($I) > 3} {
        setLedCyan .top.l$I 0 ON
      } elseif { $Led_A($I) == 0} {
        setLed .top.l$I 0 OFF
      } elseif {$Led_A($I) == 1} {
        setLed .top.l$I 0 ON
      }
    }
    for {set I 0} {$I<8} {incr I} {
      if {$Led_B($I) != $Comp_Osc_LedB($I)} {
        incr Incr_LedB($I)
      } else {
        set Incr_LedB($I) 0
      }
      set J [expr $I+8]
      if {$Incr_LedB($I) > 3} {
        setLedCyan .top.l$J 0 ON
      } elseif { $Led_B($I) == 0} {
        setLed .top.l$J 0 OFF
      } elseif {$Led_B($I) == 1} {
        setLed .top.l$J 0 ON
      }
    }

    # M�morise �tat pr�cedent
    for {set I 0} {$I<8} {incr I} {
      set Comp_Osc_LedA($I) $Led_A($I)
      set Comp_Osc_LedB($I) $Led_B($I)
    }
  }
}

# | SetInputs |--------------------------------------------------------------
# Assigne les valeurs des switchs et entries sur les entr�es du syst�me
# ----------------------------------------------------------------------------
proc SetOutputs {} {
  global Max Min Val runText runningMode debugLabel debugMode adrDataPin Osc

  # Affectation des valeurs des interrupteurs
  set switchesStates [format %d 0x00]
  for {set i 0} {$i < 2} {incr i} {
    set singleSwitchState($i) [readButton .top.s $i]
    if {$singleSwitchState($i) == 1} {
      set switchesStates [expr int($switchesStates + pow(2,$i))]
    }
  }

  # affectation de Min et Max concatenation
	set Min_Max [expr $Max * 16 + $Min]
	set Min_Max_Bin [Dec2Bin $Min_Max 8]

  set Val_Bin [Dec2Bin $Val 8]

  # affectation des valeurs en simulation ou en target
  if {$runningMode == "Simulation"} {
    force -freeze /console_sim/S0_sti [readButton .top.s 0]
    force -freeze /console_sim/S1_sti [readButton .top.s 1]
    force -freeze /console_sim/Val_A_sti $Min_Max_Bin
    force -freeze /console_sim/Val_B_sti $Val_Bin
  } else {
  # Entries
    EcrireUSB $adrDataPin(80pConnPort2) $Min_Max; # n'accepte que les entiers
    EcrireUSB $adrDataPin(80pConnPort3) $Val
  # Switches
    EcrireUSB $adrDataPin(80pConnPort4) $switchesStates; # cmd


    ## Target mode...
    ## Wait speed ms
    set Osc [expr ~$Osc]
    EcrireUSB $adrDataPin(80pConnPort5) $Osc
  }


  # if {$debugMode == TRUE} {
    # set debugLabel(0) "VA:$Min_Max\($Min_Max\)|VB:$Val|S:$switchesStates"
  # }
}

proc StartStopManager {} {
  global runText continuMode

  if {$runText == "Stop"} {
    set runText Run
  } else {
    if {$continuMode == 1} {
      set runText Stop
      RunContinu
    } else {
      RunDisplay
    }
  }
}

proc RunContinu {} {
  global runText speed

  while {$runText=="Stop"} {
    after $speed(Refresh) {
      RunDisplay
      set continue 1
    }
    vwait continue
    update
    set continue 0
  }
}

# restartSim |---------------------------------------------------------------
# Redemarre la simulation et lit les valeurs des signaux observes pour mettre a
# jour l'etat des leds.
# ---------------------------------------------------------------------------
proc restartSim {} {
    # redemarage de la simulation
    restart

    # lecture de l'etat des Leds
    for {set I 0} {$I<7} {incr I} {
        set Val_Led [examine  /console_sim/L$I\_obs]

        if {$Val_Led == 1} {
            setLed .top.l$I 0 ON
        } else {
            setLed .top.l$I 0 OFF
        }
    }
}

proc refresh {} {

  global runText inLblVal Max Val Min
  #Disable the "Run" button while running
  if {$runText == "Run"} {
    .top.run configure -state disabled
  }
  set inLblVal(Max) "[format 0x%01x $Max]"
  set inLblVal(Val) "[format 0x%01x $Val]"
  set inLblVal(Min) "[format 0x%01x $Min]"

  ReadInputs

  SetOutputs

  .top.run configure -state active
}

# --| Null_Cmd |-----------------------------------------------------------------
# N'execute aucune operation.
# -------------------------------------------------------------------------------

proc Null_Cmd {} {
}

# --| Create_Elements |----------------------------------------------------------
# Cree les 3 interrupteurs, les 7 leds et les boutons "Run" et "Restart" en mode
# simulation.
# -------------------------------------------------------------------------------
proc Create_Elements {} {
  global Max Min Val runText debugLabel inLblVal

# Default values for entities and labels
  set Max "0"
  set Min "0"
  set Val "0"

  set inLblVal(Max) "-"
  set inLblVal(Val) "-"
  set inLblVal(Min) "-"

  createLed .top.l15 30 20 0 horizontal 1 blue
  createLed .top.l14 60 20 0 horizontal 1 blue
  createLed .top.l13 90 20 0 horizontal 1 blue
  createLed .top.l12 120 20 0 horizontal 1 blue
  createLed .top.l11 150 20 0 horizontal 1 blue
  createLed .top.l10 180 20 0 horizontal 1 blue
  createLed .top.l9 210 20 0 horizontal 1 blue
  createLed .top.l8 240 20 0 horizontal 1 blue
  createLed .top.l7 270 20 0 horizontal 1 blue
  createLed .top.l6 300 20 0 horizontal 1 blue
  createLed .top.l5 330 20 0 horizontal 1 blue
  createLed .top.l4 360 20 0 horizontal 1 blue
  createLed .top.l3 390 20 0 horizontal 1 blue
  createLed .top.l2 420 20 0 horizontal 1 blue
  createLed .top.l1 450 20 0 horizontal 1 blue
  createLed .top.l0 480 20 0 horizontal 1 blue

  label .top.labell15 -text L15
  place .top.labell15 -x 35 -y 5
  label .top.labell14 -text L14
  place .top.labell14 -x 65 -y 5
  label .top.labell13 -text L13
  place .top.labell13 -x 95 -y 5
  label .top.labell12 -text L12
  place .top.labell12 -x 125 -y 5
  label .top.labell11 -text L11
  place .top.labell11 -x 155 -y 5
  label .top.labell10 -text L10
  place .top.labell10 -x 185 -y 5
  label .top.labell9 -text L9
  place .top.labell9 -x 217 -y 5
  label .top.labell8 -text L8
  place .top.labell8 -x 247 -y 5
  label .top.labell7 -text L7
  place .top.labell7 -x 277 -y 5
  label .top.labell6 -text L6
  place .top.labell6 -x 307 -y 5
  label .top.labell5 -text L5
  place .top.labell5 -x 337 -y 5
  label .top.labell4 -text L4
  place .top.labell4 -x 367 -y 5
  label .top.labell3 -text L3
  place .top.labell3 -x 397 -y 5
  label .top.labell2 -text L2
  place .top.labell2 -x 427 -y 5
  label .top.labell1 -text L1
  place .top.labell1 -x 457 -y 5
  label .top.labell0 -text L0
  place .top.labell0 -x 487 -y 5

# Debug labels
  label .top.debug0 -textvariable debugLabel(0)
  place .top.debug0 -x 220 -y 140

# Create and place button
  createButton .top.s 440 56 0 "" horizontal 2
  # createButton .top.s1 500 126 0 "" horizontal 1
  label .top.labelcmd1 -text cmd(1)
  place .top.labelcmd1 -x 435 -y 110
  label .top.labelcmd0 -text cmd(0)
  place .top.labelcmd0 -x 480 -y 110

# Create and place the scale for Max
  scale .top.sclMax  -font fnt1 -orient h -length 100 -width 10 \
  -from 15 -to 0 -variable Max -tickinterval 0 -bigincrement 1 \
  -showvalue 0
  place .top.sclMax -x 50 -y 80
  label .top.labelMax -text "Max ="
  place .top.labelMax -x 50 -y 100

  # Create and place the scale for Val
  scale .top.sclVal  -font fnt1 -orient h -length 100 -width 10 \
  -from 15 -to 0 -variable Val -tickinterval 0 -bigincrement 1 \
  -showvalue 0
  place .top.sclVal -x 170 -y 80
  label .top.labelVal -text "Val ="
  place .top.labelVal -x 170 -y 100

# Create and place the scale for Min
  scale .top.sclMin  -font fnt1 -orient h -length 100 -width 10 \
  -from 15 -to 0 -variable Min -tickinterval 0 -bigincrement 1 \
  -showvalue 0
  place .top.sclMin -x 290 -y 80
  label .top.labelMin -text "Min ="
  place .top.labelMin -x 290 -y 100

# Create "Labels" for the input vectors
  label .top.lblInput(Max) -textvariable inLblVal(Max)
  place .top.lblInput(Max) -x 90 -y 100
  label .top.lblInput(Val) -textvariable inLblVal(Val)
  place .top.lblInput(Val) -x 210 -y 100
  label .top.lblInput(Min) -textvariable inLblVal(Min)
  place .top.lblInput(Min) -x 330 -y 100

# Creation de bouton pour la gestion du temps en mode simulation |-----------

  button .top.run     -text "Run"     -command {StartStopManager} -font fnt3 -textvariable runText
  button .top.restart -text "Restart" -command {restartSim} -font fnt3
  place  .top.run     -x 550 -y 45 -height 22 -width 70
  place  .top.restart -x 550 -y 75 -height 22 -width 70
# Creation du bouton "Quitter" |---------------------------------------------
  button .top.exit -text Quitter -command QuitConsole -font fnt3
  place .top.exit  -x 550 -y 105 -height 22 -width 70

# Create spinbox for "Continu" mode
  checkbutton .top.continuMode -text "Continu" -font fnt{3} -variable continuMode
  place .top.continuMode -x 545 -y 20
}

# ------------------------------------------------------------------------------#
#  Fonction :  createMainWindow ()                                              #
#                                                                               #
#    Creation de la fenetre principale. Creation d'une config. de base          #
#    possibilite de modifier la config. dynamiquement                           #
# ------------------------------------------------------------------------------#
proc createMainWindow {} {
    global  Version runningMode

# --| creation de la fenetre principale |----------------------------------------
    toplevel .top -class toplevel

    set Win_Width  630

    set Win_Height 160

    # center to screen
    set x0 [expr {([winfo screenwidth  .top] - $Win_Width)/2 - [winfo vrootx .top]}]
    set y0 [expr {([winfo screenheight .top] - $Win_Height)/2 - [winfo vrooty .top]}]

    wm geometry .top $Win_Width\x$Win_Height+$x0+$y0

    wm resizable  .top 0 0
    wm title .top "Affichage lineaire d'une valeur entre deux bornes Min et Max: $Version"

# --| Creation des elements graphiques  |----------------------------------------

    Create_Elements

# --| Creation des menus |-------------------------------------------------------

    # creation du menu principal
    menu .top.menu -tearoff 0

    #creation du menu file
    set file .top.menu.file
    menu $file  -tearoff 0
    .top.menu add cascade -label "File" -menu $file -underline 0

   # $file add separator
    $file add command -label "Quitter" -command exit


    # ajout du menu a la fenetre principale
    .top configure -menu .top.menu



}


# --| CONFIGWAVES |-----------------------------------------------------------------------
# --  Add signals to the wave view in QuestaSim
# ----------------------------------------------------------------------------------------
proc ConfigWaves {} {
  # Delete all remaining signals in the wave view
  delete wave *

  add wave -noupdate -format Logic /console_sim/uut/osc_i
  add wave -noupdate -format Literal /console_sim/uut/com_i
  add wave -noupdate -format Literal /console_sim/uut/max_i
  add wave -noupdate -format Literal /console_sim/uut/min_i
  add wave -noupdate -format Literal /console_sim/uut/val_i
  add wave -noupdate -format Literal /console_sim/uut/leds_o

  # Configure the wave view
  configure wave -namecolwidth 150
  configure wave -valuecolwidth 100
  configure wave -justifyvalue left
  configure wave -signalnamewidth 0
  configure wave -snapdistance 10
  configure wave -datasetprefix 0
  configure wave -rowmargin 4
  configure wave -childrowmargin 2
  configure wave -gridoffset 0
  configure wave -gridperiod 1
  configure wave -griddelta 40
  configure wave -timeline 0
  configure wave -timelineunits ns
  WaveRestoreZoom {0 ns} {2 us}

  # Restart the simulation (to refresh the wave view)
  restart -f
}

# --| CLOSECONSOLE |----------------------------------------------------------------------
# --  Prepare la fermeture de la console en detruisant certains des objets crees. Ceci
# --  permet la reouverture de la console, mais evite egalement la polution de la memoire
# --  en detruisant les objets inutilises.
# --  Cette procedure est appelee a la fermeture de la fenetre ainsi que par la
# --  procedure "QuitConsole{}".
# ----------------------------------------------------------------------------------------
proc CloseConsole {} {
  global fnt runningMode adrReset adrConfPin runText

  # Stop simulation if it is running
  if {$runText == "Stop"} {
    set runText Run
  }

  # Destruction des objets du top
  foreach w [winfo children .top] {
    destroy $w
  }

  # Desctruction du top
  destroy .top

  # Suppression des polices
  font delete fnt{3}
  font delete fnt{4}
  font delete fnt{5}

  if {$runningMode == "Simulation"} {
    # Delete all signal on wave view
    #delete wave *

  } else {
    # Reset the line driver OE of the board
    EcrireUSB $adrReset 0

    # Set all pins of both SUB25 as Inputs
    foreach element [array names adrConfPin] {
      EcrireUSB $adrConfPin($element) [format %d 0x00]
    }

    # Exit application
    exit
  }

  # Free variable
  unset runText
  unset runningMode
}


# --| QuitConsole |-----------------------------------------------------------------------
# --  Appel la fonction de fermeture de la console, puis quitte.
# ----------------------------------------------------------------------------------------
proc QuitConsole {} {
  CloseConsole; # Clean before closing
  exit
}
# --| CONFIGBOARD |-----------------------------------------------------------------------
# --  Configure the board pins and enable the SUBD25 IOs.
# ----------------------------------------------------------------------------------------
proc ConfigBoard {} {
  # Global variables:
  #   - Addresses to configure pins 1 to 16
  #   - Address to enable the SUBD25 IOs
  #   - Address to read the version of the FPGA
  global adrConfPin adrSUBD25OE adr80pCONNOE adrVersion

  #                     +-----------------+
  #              ===0==>|                 |===0==> 
  #              ===0==>|     Console     |===0==> 
  #              ===0==>|       USB2      |===0==> 
  #                     |                 |
  #                     +-----------------+
  #                       /80p connector\
  #          Com_i, Max_i, Min_i, Val_i, Osc_i, Leds 

  # Configuration for the left SUB25 connector
  # - Pins left as inputs
  set ConfigPinG01_08 [format %d 0x00]; # 0000 0000
  set ConfigPinG09_16 [format %d 0x00]; # 0000 0000
  set ConfigPinG17_24 [format %d 0x00]; # 0000 0000
  set ConfigPinG25_27 [format %d 0x00]; # 0000 0000

  EcrireUSB $adrConfPin(G01_08) $ConfigPinG01_08
  EcrireUSB $adrConfPin(G09_16) $ConfigPinG09_16
  EcrireUSB $adrConfPin(G17_24) $ConfigPinG17_24
  EcrireUSB $adrConfPin(G25_27) $ConfigPinG25_27

  # Configuration for the right SUB25 connector
  # - Pins left as inputs
  set ConfigPinD01_08 [format %d 0x00]; # 0000 0000  
  set ConfigPinD09_16 [format %d 0x00]; # 0000 0000  
  set ConfigPinD17_24 [format %d 0x00]; # 0000 0000  
  set ConfigPinD25_27 [format %d 0x00]; # 0000 0000  

  EcrireUSB $adrConfPin(D01_08) $ConfigPinD01_08
  EcrireUSB $adrConfPin(D09_16) $ConfigPinD09_16
  EcrireUSB $adrConfPin(D17_24) $ConfigPinD17_24
  EcrireUSB $adrConfPin(D25_27) $ConfigPinD25_27

  # Configuration for the 80p connector
  # - Pin(s) 01           as input   # gnd            | 80pConnPort1
  # - Pin(s) 08 downto 02 as inputs  # n.c            | 80pConnPort1
  # - Pin(s) 16 downto 09 as outputs # Max, Min       | 80pConnPort2
  # - Pin(s) 20 downto 17 as outputs # Val            | 80pConnPort3
  # - Pin(s) 24 downto 21 as inputs  # n.c            | 80pConnPort3
  # - Pin(s) 26 downto 25 as outputs # cmd            | 80pConnPort4
  # - Pin(s) 32 downto 27 as inputs  # n.c            | 80pConnPort4
  # - Pin(s) 33           as outputs # osc            | 80pConnPort5
  # - Pin(s) 40 downto 34 as inputs  # n.c            | 80pConnPort5
  # - Pin(s) 48 downto 41 as inputs  # LEDs           | 80pConnPort6
  # - Pin(s) 56 downto 49 as inputs  # LEDs           | 80pConnPort7
  # - Pin(s) 64 downto 57 as inputs  # n.c            | 80pConnPort8
  # - Pin(s) 72 downto 65 as inputs  # n.c            | 80pConnPort9
  # - Pin(s) 79 downto 73 as inputs  # n.c            | 80pConnPort10
  # - Pin(s) 80           as inputs  # gnd            | 80pConnPort10

  set ConfPin80pConnPort1  [format %d 0x00]; # 0000 0000 ,pin  1 connectee au gnd!
  set ConfPin80pConnPort2  [format %d 0xFF]; # 1111 1111
  set ConfPin80pConnPort3  [format %d 0x0F]; # 0000 1111
  set ConfPin80pConnPort4  [format %d 0x03]; # 0000 0011
  set ConfPin80pConnPort5  [format %d 0x01]; # 0000 0001
  set ConfPin80pConnPort6  [format %d 0x00]; # 0000 0000
  set ConfPin80pConnPort7  [format %d 0x00]; # 0000 0000
  set ConfPin80pConnPort8  [format %d 0x00]; # 0000 0000
  set ConfPin80pConnPort9  [format %d 0x00]; # 0000 0000
  set ConfPin80pConnPort10 [format %d 0x00]; # 0000 0000 ,pin 80 connectee au gnd!
  
  EcrireUSB $adrConfPin(80pConnPort1) $ConfPin80pConnPort1
  EcrireUSB $adrConfPin(80pConnPort2) $ConfPin80pConnPort2
  EcrireUSB $adrConfPin(80pConnPort3) $ConfPin80pConnPort3
  EcrireUSB $adrConfPin(80pConnPort4) $ConfPin80pConnPort4
  EcrireUSB $adrConfPin(80pConnPort5) $ConfPin80pConnPort5
  EcrireUSB $adrConfPin(80pConnPort6) $ConfPin80pConnPort6
  EcrireUSB $adrConfPin(80pConnPort7) $ConfPin80pConnPort7
  EcrireUSB $adrConfPin(80pConnPort8) $ConfPin80pConnPort8
  EcrireUSB $adrConfPin(80pConnPort9) $ConfPin80pConnPort9
  EcrireUSB $adrConfPin(80pConnPort10) $ConfPin80pConnPort10

  # Read and display the version of the FPGA. Also warn the user to configure the
  # board EMP7128S correctly.
  set FPGAVERSION [LireUSB $adrVersion]
  set ttl "! ATTENTION, RISQUE DE COURT-CIRCUIT !"
  set msg "! ATTENTION, RISQUE DE COURT-CIRCUIT !\n\n\
           Veuillez controler que les contraintes des pins de la CPLD aient ete faites \
           correctement.\n Une fois ce controle effectue, cliquez sur \"OK\".\n\n\
           Console USB2, FPGA Version $FPGAVERSION"
  set answer [tk_messageBox -type okcancel -default cancel -icon warning -title $ttl -message $msg]
  switch -- $answer {
    cancel QuitConsole
  }

  # Enable the IOs for SUBD25
  # EcrireUSB $adrSUBD25OE 0

  # Enable the IOs for 80p
  EcrireUSB $adr80pCONNOE 0
}

#--| Program Principal |--------------------------------------------------------
Check_Mode
SetVariables

# Description des elements graphique. Suivant la cible le chemin d'acces
# change.
if {$runningMode == "Target"} {
    #old source "../console/Graphical_Elements_Led_Level.tcl"
    source "/opt/tools_reds/TCL_TK/Graphical_Elements.tcl"
} else {
    #old source "../console/Graphical_Elements_Led_Level.tcl"
    source "/opt/tools_reds/TCL_TK/Graphical_Elements.tcl"
}
createMainWindow
# Pour faire disparaitre la fenetre de l'interpreteur en mode cible.

if {$runningMode == "Simulation"} {
  ConfigWaves
} else {
  ConfigBoard
  wm withdraw .
}


#Ajout de procédure pour adapter à la nouvelle librairie graphical elements
proc setLedCyan  {Name Led State} {

    set Color "[$Name itemcget 1 -tags]"

    # Prevent error from "current" tag
    set Color [string map -nocase {current \ } $Color]
    set Color [string trim $Color]

    if {$State == "ON"} {
        $Name itemconfigure [expr ($Led * 2) + 1] -fill Cyan
        $Name itemconfigure [expr ($Led * 2) + 2] -fill Cyan
    } elseif {$State == "OFF"} {
        $Name itemconfigure [expr ($Led * 2) + 1] -fill gray
        $Name itemconfigure [expr ($Led * 2) + 2] -fill gray
    } else {
        puts "Error, 'State' doit etre egale a ON ou OFF !"
    }
}
