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
# -- File                 : REDS_console.tcl
# -- Author               : Jean-Pierre Miceli
# -- Date                 : 7 octobre 2005
# --
# -- Context              : Laboratoires de numerique
# --
# ----------------------------------------------------------------------------------------
# -- Description :
# --   Console virtuelle similaire aux consoles physique de laboratoire.
# --   Cette console est utilisee avec QuestaSim a partir des signaux definis dans TopSim.
# --
# --   Voici la liste des elements graphiques utilisables dans la console:
# --     - Led
# --     - Switch
# --     - Afficheur 7 segments
# --     - Afficheur de niveaux
# --     - Entree de valeurs numeriques
# --     - Sortie de valeurs numeriques
# --     - Scale
# --
# --   L'utilisation des elements graphiques se fait au moyen de fonctions:
# --     - create    pour la creation
# --     - set       pour activer une valeur
# --     - read      pour la lecture de la valeur
# --
# --   Tous les elements graphiques ne sont pas utilises dans cette version.
# --
# ----------------------------------------------------------------------------------------
# -- Modifications :
# -- Ver   Date        Engineer   Comments
# -- 1.1d  See header  JP Miceli  Initial version
# --                              version totalement nouvelle utilisant les nouveaux
# --                              composants graphiques. Le but est de mettre en route la
# --                              nouvelle methodologie pour pouvoir 'facilement' creer
# --                              une nouvelle interface --> base pour la creation de la
# --                              version avec USB et ModelSim.
# --                              - N'affiche plus le numero de version dans le titre.
# --                                Probleme lorsqu'un script appel cette console.
# -- 1.2a  26.10.2010  GCD        Remise en forme des headers.
# --                              Ajout de destruction d'objet a la fermeture
# --                              permettant la reouverture et evite de charger
# --                              la memoire d'anciens objets.
# -- 1.2b  27.10.2010  GCD        Suppression des elements graphiques et ajout de la
# --                              Dependence a "Graphical_Elements.tcl" moyennant les
# --                              adaptations suivantes:
# --                              - "createSwitch" devient "createButton"
# --                              - "readSwitch" devient "readButton"
# --                              - "initSwitch" devient "initButton"
# -- 2.0   16.12.2010  GCD        Fonctions pour l'utilisation avec la console USB2
# --                              Utilise le fichier "Top_EPM.vhd" pour l'integration de
# --                              composants.
# --                              Detail des operations:
# --                              - Ajout de la fonction "CheckRunningMode"
# --                              - Ajout de la fonction "SetVariables"
# --       06.01.2011  GCD        - Ajout de la configuration des E/S et des fonctions
# --                                pour la lecture et l'ecriture des E/S.
# --                                (i) Tests possibles en connectant un connecteur
# --                                    a l'autre.
# --                              - Ajout du mode continu (activable avec checkbutton)
# --                              - Ajout d'informations pour le debug
# -- 2.1   18.01.2011  GCD        Ajout du menu d'aide:
# --                              - a propos
# --                              - Designation des signaux:
# --                                => Si l'image "REDS_console_sigImg.gif" existe, elle
# --                                   est affichee dans une nouvelles fenetre. L'image
# --                                   doit etre au format "gif" et de dimensions 479x259.
# --                                   Le fichier "REDS_console_sigImg.vsd" permet de
# --                                   creer cette image.
# -- 3.0   08.09.2014  GHR        Console modifie precedemment pour fonctionner sous linux  
# --                              avec Questasim et Logisim. Attention dans modelsim.init
# --                              la variable DefaultRadix doit valoir 2 pour binaire!
# --                              Ajoute le connecteur 80 poles en mode target.
# -- 3.1   28.11.2014  GHR        Modifier la procedure bin2dec_v2 pour qu'elle ne traite
# --                              les caracteres speciaux lors du lancement de la console
# --                              dans different environnement (Questasim, Logisim)
# -- 3.2   28.11.2014  GHR	      Nom des signaux _i et _o remplaces par _sti et _obs
# --
# -- 3.2.1 17.02.2014  GHR        Nom des signaux _sti et _obs inverses.
# -- 3.2.2 23.03.2015  KGS        Modification commentaires assignation pins ValA et ValB
# --                              (poids fort et faible étaient inversés).
# -- 3.2.3 20.04.2015  GHR        Test de redsToolsPath pour pouvoir executer la console 
# --                              depuis Linux ou Windows.
# -- 3.3   20.04.2015  GHR        Retirer les anciennes procedures dec2bin et bin2dec.
# -- 4.0   26.06.2015  YSR        Modifier les appels de logisim a la console: 
# --                              - proc enableLogisim:
# --                                  => Elle est appelee depuis logisim et sert de switch
# --                                     pour savoir si la console est utilisee avec 
# --                                     logisim.
# --                              - proc logisimForce: 
# --                                  => Appelee lorsqu'il y a un "tick" dans logisim. 
# --                                     Les sorties de la console sont recuperer dans
# --                                     logisim.
# --                              - proc logisimExamine: 
# --                                  => Lorsqu'une entree de la console change d'etat,
# --                                     logisim appelle cette procedure et la console
# --                                     lit les valeurs d'entrees.
# -- 4.0.1 26.06.2015  GHR        Retire la procedure refresh qui n'est plus utilise
# --                              par logisim et ajout de commentaires.
# -- 4.0.2 26.06.2016  GAA        MàJ pour support de la nouvelle libraire Graphical_Elements
# ----------------------------------------------------------------------------------------

package require Tk

# Set global variables
set consoleInfo(version) 4.0.2
set consoleInfo(title) "REDS Console"; # Title that will be display in title bar
set consoleInfo(filename) "REDS_console"; # Filename without the filetype

set redsToolsPath /opt/tools_reds
set Env linux
set debugMode FALSE; # Display debug info
set sigImgFile "./REDS_console_sigImg.gif"

set nbrOfLeds 16
set nbrOfSwitches 16

# Load resources
if { [catch {source $redsToolsPath/TCL_TK/Graphical_Elements.tcl} msg1] } {
  puts "Set path for Windows environment"
  set redsToolsPath c:/EDA/tools_reds
  set Env windows
  if { [catch {source $redsToolsPath/TCL_TK/Graphical_Elements.tcl} msg2] } {   
    puts "Cannot load Graphical Elements!"
    }
}

source $redsToolsPath/TCL_TK/StdProc.tcl

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

# ----------------------------------------------------------------------------------------
# -- Fonctions de gestion de la console //////////////////////////////////////////////////
# ----------------------------------------------------------------------------------------

# --| SETVARIABLES |----------------------------------------------------------------------
# --  Set fonts and addresses
# ----------------------------------------------------------------------------------------
proc SetVariables {} {
  # Global variables, see below
  global fnt speed runningMode \
         dataPin adrConfPin adrDataPin \
         adrVersion adrSUBD25OE adrReset \
         strResourcePath images windowOpen adr80pCONNOE logisimEnabled

  set logisimEnabled FALSE

  # Redirect StdOut to nowhere (prevent polution in logs)
  StdOut off

  # Fonts
  font create fnt{3} -family {MS Sans Serif} -weight bold -size 8; puts ""
  font create fnt{4} -family {MS Sans Serif} -weight normal -size 8; puts ""
  font create fnt{5} -family {Courier New} -weight normal -size 8; puts ""

  # Speeds
  if {$runningMode == "Simulation"} {
    set speed(Refresh) 300; # Time [ms] between run steps (target mode)
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
  set dataPin(D01_08) 0; # Val_A
  set dataPin(D09_16) 0; # Val_B
  set dataPin(D17_24) 0; # Switches
  set dataPin(D25_27) 0; # N/A
  set dataPin(G01_08) 0; # Result_A
  set dataPin(G09_16) 0; # Result_B
  set dataPin(G17_24) 0; # Leds
  set dataPin(G25_27) 0; # N/A

  # Images
  #set images(labels) [image create photo -file "$strResourcePath/img/REDS_console_labels.gif"]; puts ""

  # To check if windows are open
  set windowOpen(SignalLabels) FALSE
  set windowOpen(About) FALSE

  # Reactivate StdOut
  StdOut on
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


# --| CHECKRUNNINGMODE |-------------------------------------------------------------------------
# --  Check if the console was started from simulation (Simulation running mode) or
# --  in standalone (Target running mode).
# ----------------------------------------------------------------------------------------
proc CheckRunningMode {} {
  # Global variables:
  #   - Path to the resources
  #   - Current running mode
  global strResourcePath runningMode redsToolsPath consoleInfo Env

  # Directory where the USB2 drivers are installed
  set InstallDir "$redsToolsPath/lib/usb2/"
  if {$Env == "linux" } {
    set libName "libredsusb.so"
  } else {
    set libName "GestionUSB2.dll"
  }

  # No error by default
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
  
  #set message [info script]
  #tk_messageBox -icon info -type ok -title Info -message $message
  #set message [info nameofexecutable]
  #tk_messageBox -icon info -type ok -title Info -message $message

  # Display error message if necessary
  # if {$isErr == 1} {
      # tk_messageBox -icon error -type ok -title Erreur -message $msgErr
      # exit; # Quit the script
  # }
# }


# --| CREATEMAINWINDOW |------------------------------------------------------------------
# --  Creation de la fenetre principale comprenand:
# --    - 16 Leds
# --    - 16 Interrupteurs
# --    - 3 Affichages 7 segments
# --    - 2 Entrees numeriques
# --    - 2 Sorties numeriques ('Result')
# ----------------------------------------------------------------------------------------
proc CreateMainWindow {} {
  global consoleInfo fnt{3} runningMode images debugLabel runText
  global continuMode sigImgFile
  global nbrOfLeds nbrOfSwitches

  # creation de la fenetre principale
  toplevel .top -class toplevel

  # Call "CloseConsole" when Top is closed
  wm protocol .top WM_DELETE_WINDOW CloseConsole

  set Win_Width  780
  set Win_Height 260

  # Center to screen
  #set x0 [expr {([winfo screenwidth  .top] - $Win_Width)/2 - [winfo vrootx .top]}]
  #set y0 [expr {([winfo screenheight .top] - $Win_Height)/2 - [winfo vrooty .top]}]
  # Finally... do not center
  set x0 200
  set y0 200

  wm geometry .top $Win_Width\x$Win_Height+$x0+$y0

  wm resizable  .top 0 0
  wm title .top "$consoleInfo(title) $consoleInfo(version) - $runningMode mode"

  # Creation des 'frame' entree et sortie
  canvas .top.main
  place .top.main -x 0 -y 0 -height $Win_Height -width $Win_Width

  # Debug labels
  label .top.debug0 -textvariable debugLabel(0)
  place .top.debug0 -x 350 -y 25
  label .top.debug1 -textvariable debugLabel(1)
  place .top.debug1 -x 350 -y 40

  frame .top.main.outputFrame
  frame .top.main.inputFrame
  place .top.main.outputFrame -x 5 -y   5 -height $Win_Height -width $Win_Width
  place .top.main.inputFrame  -x 5 -y 155 -height $Win_Height -width $Win_Width

  # Create menu
  menu .top.menu -tearoff 0
  set file .top.menu.file
  set run .top.menu.run
  set help .top.menu.help
  menu $file -tearoff 0
  menu $run -tearoff 0
  menu $help -tearoff 0
  .top.menu add cascade -label "Fichier" -menu $file -underline 0
  .top.menu add cascade -label "Run" -menu $run -underline 0
  .top.menu add cascade -label "?" -menu $help -underline 0
  set helpElementNbr 0


  # "Run" menu
  $run add command -label "Run" -command StartStopManager -accelerator "Ctrl-R" \
                   -underline 0
  $run add command -label "Stop" -command StartStopManager -accelerator "Ctrl-S" \
                   -underline 0 -state disabled
  $run add separator
  $run add checkbutton -label "Run continu" -variable continuMode

  # Some bindings for menu accelerator
  bind .top <Control-r> {RunStep}
  bind .top <Control-R> {RunStep}


  # "File" menu
  $file add command -label "Fermer" -command CloseConsole -accelerator "Ctrl-W" \
                    -underline 0
  $file add separator
  $file add command -label "Quitter" -command QuitConsole -accelerator "Ctrl-Q" \
                    -underline 0

  # Some bindings for menu accelerator
  bind .top <Control-w> {CloseConsole}
  bind .top <Control-W> {CloseConsole}
  bind .top <Control-q> {QuitConsole}
  bind .top <Control-Q> {QuitConsole}


  # "Help" menu
  set fexist [file exists $sigImgFile]
  if {$fexist == 1} {
    $help add command -label "Designation des signaux" \
                      -command ShowSignalLabels \
                      -accelerator "Ctrl-H" \
                      -underline 0
    bind .top <Control-h> {ShowSignalLabels}
    bind .top <Control-H> {ShowSignalLabels}
    incr helpElementNbr
  }
  if {$helpElementNbr > 0} {
    $help add separator
  }
  $help add command -label "A propos" \
                    -command ShowAbout \
                    -underline 0

  set column1 10
  set column2 50
  set column3 450
  set column4 570
  set column5 710


  # Configure menubar
  .top configure -menu .top.menu

  # Creation des elements graphiques
  #                                               x                     y  label
  createLed       .top.main.outputFrame.led       $column1              90 1              horizontal  $nbrOfLeds      ;# creation des leds
  createButton    .top.main.inputFrame.switch     $column1               5 1    ""        horizontal  $nbrOfSwitches  ;# creation des switchs
  createResult    .top.main.outputFrame.result    $column2               1                                            ;# creation des sorties 'Result'
  createValue     .top.main.inputFrame.value      $column4              10                                            ;# creation des entrees 'Value'
  createSevenSeg  .top.main.outputFrame.hex1      $column3              20 "Hex. 1"                                   ;# afficheur Hex 1
  createSevenSeg  .top.main.outputFrame.hex0      [expr $column3+70]    20 "Hex. 0"                                   ;# afficheur Hex 0

  #   Only available in Simulation mode
  if {$runningMode == "Simulation"} {
    createSevenSeg .top.main.outputFrame.sevenSeg [expr $column3+170]   20 "7 seg."                                   ;# afficheur 7 seg.
  }


  # Creation de bouton pour la gestion du temps
  #--| Creation de bouton pour la gestion du temps en mode simulation |-----------

  set column3 710

  # Create spinbox for "Continu" mode
  checkbutton .top.continuMode -text "Continu" -font fnt{3} -variable continuMode
  place .top.continuMode -x $column5 -y 150

  button .top.run -text "Run" -command {StartStopManager} -font fnt{3} -textvariable runText
  place .top.run -x $column5 -y 170 -height 22 -width 70

  button .top.restart -text "Restart" -command {RestartSim} -font fnt{3}
  place .top.restart -x $column5 -y 195 -height 22 -width 70

  # Creation du bouton "Quitter"
  button .top.exit -text Quitter -command QuitConsole -font fnt{3}
  place .top.exit  -x $column5 -y 220 -height 22 -width 70

  # Creation d'une ligne de demarquation
  canvas .top.main.inputFrame.line -height 70  -width 2
  .top.main.inputFrame.line create line 1 1 1 69 -width 1 -fill black -capstyle round
  place .top.main.inputFrame.line -x $column4 -y 3
}


# --| ShowSignalLabels |------------------------------------------------------------------
# --  Show a side window with the image $images(sigImgLabels)"
# ----------------------------------------------------------------------------------------
proc ShowSignalLabels {} {
  global images sigImgFile windowOpen

  proc CloseSignalLabels {} {
    global windowOpen
    set windowOpen(SignalLabels) FALSE;
    wm withdraw .info;
    destroy .info
  }

  if {$windowOpen(SignalLabels) == FALSE} {
    # Create and arrange the dialog contents.
    toplevel .info

    set windowOpen(SignalLabels) TRUE
    wm protocol .info WM_DELETE_WINDOW {CloseSignalLabels}

    set screenx [winfo screenwidth .top]
    set screeny [winfo screenheight .top]
    set x [expr [winfo x .top] + [winfo width .top] + 10]
    set y [expr [winfo y .top]]
    set width 478
    set height 259

    if {[expr $x + $width] > [expr $screenx]} {
      set x [expr $x - [winfo width .top] - $width - 10]
    }

    # Canvas for the boat image
    canvas .info.cimg -height $height -width $width
    place .info.cimg -x 0 -y 0

    set images(sigImgLabels) [image create photo -file "$sigImgFile"]; puts ""
    .info.cimg create image [expr $width/2] [expr $height/2] -image $images(sigImgLabels)

    wm geometry  .info [expr $width]x[expr $height]+$x+$y
    wm resizable  .info 0 0
    wm title     .info "D\E9signation des signaux"
    wm deiconify .info
  }
}


# --| ShowAbout |-------------------------------------------------------------------------
# --  Show the "About" window
# ----------------------------------------------------------------------------------------
proc ShowAbout {} {
    global infoLabel windowOpen consoleInfo

  proc CloseAbout {} {
    global windowOpen
    set windowOpen(About) FALSE;
    wm withdraw .about;
    destroy .about

    wm attributes .top -disabled FALSE
    wm attributes .top -alpha 1.0
  }

  if {$windowOpen(About) == FALSE} {
    # Create and arrange the dialog contents.
    toplevel .about

    set windowOpen(About) TRUE
    wm protocol .about WM_DELETE_WINDOW {CloseAbout}

    # Disable top
    wm attributes .top -disabled TRUE
    wm attributes .top -alpha 0.8

    set width 250
    set height 200

    set x [expr [winfo x .top]+[winfo width .top]/2-$width/2]
    set y [expr [winfo y .top]+[winfo height .top]/2-$height/2]

    button .about.ok -text OK -command {CloseAbout}
    place .about.ok -x [expr $width/2] -y [expr $height-20] -width 70 -height 30 -anchor s

    set infoLabel "$consoleInfo(title) version $consoleInfo(version) \
                   \n\nAuteurs:\nJean-Pierre Miceli\nGilles Curchod \
                   \n\nREDS (c) 2005 - [clock format [clock seconds] -format %Y]"
    label .about.label -textvariable infoLabel -font fnt{5} -justify center
    place .about.label -x [expr $width/2] -y 20 -anchor n

    wm geometry  .about [expr $width]x[expr $height]+$x+$y
    wm title     .about "a propos"
    wm transient .about .top
    wm attributes .about -topmost; # On top fo all
    wm resizable  .about 0 0; # Cannot resize
    wm frame .about

  }
}

# --| ShowSignalList |--------------------------------------------------------------------
# --  Show a side window with the content of file "SignalList.txt"
# ----------------------------------------------------------------------------------------
proc ShowSignalList {} {
  global infoLabel

  # Create and arrange the dialog contents.
  toplevel .info

  set x [expr [winfo x .top] + [winfo width .top] + 10]
  set y [expr [winfo y .top]]

  #button .info.ok -text OK -command {wm withdraw .info;   destroy .info}
  #place .info.ok -x 275  -y 190 -width 65 -height 20
  text .info.text -yscrollcommand ".info.scroll set"
  scrollbar .info.scroll -command ".info.text yview"

  set infoLabel ""
  label .info.label -textvariable infoLabel -font fnt{5} -justify left
  place .info.label -x 5 -x 5

  set firstLine TRUE

  set fileId [open ./SignalList.txt r]
  while {![eof $fileId]} {
    set line [gets $fileId]
    if {$firstLine == TRUE} {
      set infoLabel "$line"
      set firstLine FALSE
    } else {
      set infoLabel "$infoLabel\n$line"
    }
  }

  close $fileId

  wm geometry  .info 350x287+$x+$y
  wm resizable  .info 0 0
  wm title     .info "D\E9signation des signaux"
  wm deiconify .info

}

# --| dec2bin |---------------------------------------------------------------------------
# --  Transform a decimal value to a binary string. (Max 32-bits)
# --    - value:   The value to be converted
# --    - NbrBits: Number of bit of "value"
# ----------------------------------------------------------------------------------------
proc dec2bin {value {NbrBits 16}} {
    binary scan [binary format I $value] B32 str
    return [string range $str [expr 32-$NbrBits] 31]
}

# --| bin2dec |---------------------------------------------------------------------------
# --  Tranform a binary string to an integer
# --    - NbrBits: Number of bits in the binary string
# ----------------------------------------------------------------------------------------
proc bin2dec {binString {NbrBits 16}} {
  set result 0
  set max [string length $binString]
  set min [expr $max - $NbrBits]
  for {set j $min} {$j < $max} {incr j} {
    set bit [string range $binString $j $j]
    if {$bit != "0" && $bit != "1"} {
      set bit 0
    }
    set result [expr $result << 1]
    set result [expr $result | $bit]
  }
  return $result
}

proc bin2int {binString} {

  set result 0

  set lastBit [expr [string length $binString]-1]
  #set signBit [string range $binString $lastBit $lastBit]

  set ttl "Controle des valeurs"
  set msg "$lastBit / $signBit"

  tk_messageBox -parent .top -icon warning -type ok -title $ttl -message $msg

  for {set j 0} {$j < [string length $binString]} {incr j} {
      set bit [string range $binString $j $j]
      set result [expr $result << 1]
      set result [expr $result | $bit]
  }
  return $result
}



# --| SetOutputs |------------------------------------------------------------------------
# --  Affectation des signaux
# ----------------------------------------------------------------------------------------
proc SetOutputs {} {
  global runningMode adrDataPin debugLabel debugMode nbrOfSwitches

  # Affectation des valeurs des interrupteurs
  set switchesStates [format %d 0x00]
  for {set i 0} {$i < $nbrOfSwitches} {incr i} {
    set singleSwitchState($i) [readButton .top.main.inputFrame.switch $i]
    if {$singleSwitchState($i) == 1} {
      set switchesStates [expr int($switchesStates + pow(2,$i))]
    }
  }

  # Lecture des valeurs de Val_A et Val_B
  set valAEntry [readValue .top.main.inputFrame.value A]
  set valBEntry [readValue .top.main.inputFrame.value B]


  # Affectation des valeurs aux signaux respectifs
  if {$runningMode == "Simulation"} {
    for {set i 0} {$i < $nbrOfSwitches} {incr i} {
      force -freeze /console_sim/S$i\_sti $singleSwitchState($i)
    }
    force -freeze /console_sim/Val_A_sti [dec2bin $valAEntry]
    force -freeze /console_sim/Val_B_sti [dec2bin $valBEntry]
  } else {
    set valAentry_7_0  [bin2dec [string range [dec2bin $valAEntry] 8  15]]
    set valAentry_15_8 [bin2dec [string range [dec2bin $valAEntry] 0   7]]
    set valBentry_7_0  [bin2dec [string range [dec2bin $valBEntry] 8  15]]
    set valBentry_15_8 [bin2dec [string range [dec2bin $valBEntry] 0   7]]
  
    EcrireUSB $adrDataPin(80pConnPort6) $valAentry_7_0
    EcrireUSB $adrDataPin(80pConnPort7) $valAentry_15_8
    EcrireUSB $adrDataPin(80pConnPort8) $valBentry_7_0
    EcrireUSB $adrDataPin(80pConnPort9) $valBentry_15_8
    # EcrireUSB $adrDataPin(D17_24) $switchesStates
  }

  if {$debugMode == TRUE} {
    set debugLabel(1) "VA:$valAEntry|VB:$valBEntry|S:$switchesStates"
  }
}


# --| ReadInputs |------------------------------------------------------------------------
# --  Lecture des entrees
# ----------------------------------------------------------------------------------------
proc ReadInputs {} {
  global runningMode adrDataPin debugLabel debugMode nbrOfLeds

  # --------------------------------------------------------------------------------------
  # Lecture des valeurs des entrees
  # --------------------------------------------------------------------------------------
  array set singleLedState {
    0 0
    1 0
    2 0
    3 0
    4 0
    5 0
    6 0
    7 0
    8 0
    9 0
    10 0
    11 0
    12 0
    13 0
    14 0
    15 0
  }

  if {$runningMode == "Simulation"} {
    set Hex0 [bin2dec [examine /console_sim/Hex0_obs] 4]      
    set Hex1 [bin2dec [examine /console_sim/Hex1_obs] 4]
    set Result_A [bin2dec [examine /console_sim/Result_A_obs]]
    set Result_B [bin2dec [examine /console_sim/Result_B_obs]]

    for {set i 0} {$i < $nbrOfLeds} {incr i} {
      set singleLedState($i) [examine /console_sim/L$i\_obs]
    }

  } else {
    ## /!\ ECRITURE SUR CONSOLE USB2 /!\ ##
    set Result_A_7_0  [LireUSB $adrDataPin(80pConnPort2)]
    set Result_A_15_8 [LireUSB $adrDataPin(80pConnPort3)]
    set Result_A [expr ($Result_A_15_8 * 256) + $Result_A_7_0]
    set Result_B_7_0  [LireUSB $adrDataPin(80pConnPort4)]
    set Result_B_15_8 [LireUSB $adrDataPin(80pConnPort5)]
    set Result_B [expr ($Result_B_15_8 * 256) + $Result_B_7_0]
    set Hex0 [expr $Result_A % 16]
    set Hex1 [expr $Result_A / 16]
    set ledsState [LireUSB $adrDataPin(80pConnPort1)]

    for {set i 0} {$i < $nbrOfLeds} {incr i} {
      set j [expr $i+1]
      if {[expr $ledsState % int(pow(2,$j))] == int(pow(2,$i))} {
        set singleLedState($i) 1
        set ledsState [expr $ledsState - int(pow(2,$i))];
      } else {
        set singleLedState($i) 0
      }
    }
  }

  if {$debugMode == TRUE} {
    set debugLabel(0) "RA:$Result_A|RB:$Result_B|L:$ledsState"
  }

  # --------------------------------------------------------------------------------------
  # Mise a jour des affichages
  # --------------------------------------------------------------------------------------

  if {$runningMode == "Simulation"} {
    # Lecture de l'etat de l'afficher 7 segments
    set listSeg {a b c d e f g}
    
    set tmpAllSeg [examine  /console_sim/seg7_obs]
    set max [string length $tmpAllSeg]
    set min [expr $max - 8]
    
    set tmpAllSg [string range $tmpAllSeg $min $max]

    set i 0
    foreach Seg $listSeg {
      
      set tmpSeg [string index $tmpAllSg $i]
      incr i

      if {$tmpSeg == "U" || $tmpSeg == "u"  || $tmpSeg == "X" || $tmpSeg == "x" || $tmpSeg == "'" || $tmpSeg == "b" || $tmpSeg == ""} {
        set tmpSeg 0
      }

      if {$tmpSeg} {
        setSevenSeg .top.main.outputFrame.sevenSeg $Seg ON
      } else {
        setSevenSeg .top.main.outputFrame.sevenSeg $Seg OFF
      }
    }
  }

  for {set i 0} {$i < $nbrOfLeds} {incr i} {
    if {$singleLedState($i) == "1"} {
      setLed .top.main.outputFrame.led $i ON
    } else {
      setLed .top.main.outputFrame.led $i OFF
    }
  }

  # Lecture de l'etat de l'afficheur HEX0
  # Si la valeur n'est pas numerique (par ex. 'UUUU') -> Val = F
  if {($Hex0 >= 0)  && ($Hex0 <= 15)} {
      setHex .top.main.outputFrame.hex0 $Hex0
  } else {
      setHex .top.main.outputFrame.hex0 15
  }

  # Lecture de l'etat de l'afficheur HEX1
  # Si la valeur n'est pas numerique (par ex. 'UUUU') -> Val = F
  if {($Hex1 >= 0)  && ($Hex1 <= 15)} {
      setHex .top.main.outputFrame.hex1 $Hex1
  } else {
      setHex .top.main.outputFrame.hex1 15
  }


  # Mise a jour de l'affichage de Result_A
  if {($Result_A >= 0)  && ($Result_A <= 65536)} {
      setResult .top.main.outputFrame.result A $Result_A
  } else {
      setResult .top.main.outputFrame.result A ""
  }

  # Mise a jour de l'affichage de Result_B
  if {($Result_B >= 0)  && ($Result_B <= 65536)} {
      setResult .top.main.outputFrame.result B $Result_B
  } else {
      setResult .top.main.outputFrame.result B ""
  }
}


# --| RunDisplay |------------------------------------------------------------------------
# --  Son role est determiner lorsque le bouton "Run" est presse ou en continu si
# --  la console est utilise avec Logisim, Questasim ou en standalone.
# --  La commande "run" permet de declencher un "tick" dans Logisim.
# ----------------------------------------------------------------------------------------
proc RunDisplay {} {
  global logisimEnabled
  if {$logisimEnabled == TRUE} {
    echo "Console running through Logisim..."
    run
  } else {
    runQuestaTarget
  }
}

# --| runQuestaTarget |-------------------------------------------------------------------
# --  Son role est de forcer les valeurs des entrees, de faire avancer le temps
# --  et enfin d'affecter les valeurs obtenues.
# --  Elle est appelee seulement si la console est utilise avec Questasim ou en
# --  standalone.
# ----------------------------------------------------------------------------------------
proc runQuestaTarget {} {
  global runningMode runText

  # Affectation des sorties
  SetOutputs

  # Avancement du temps
  if {$runningMode == "Simulation"} {
    run 100 ns
  } else {
    ## Target mode...
    after 1 {
        set continue 1
    }
    vwait continue
    update
    set continue 0
  }

  # Lecture des entrees
  ReadInputs
}

proc StartStopManager {} {
  global runText continuMode

  if {$runText == "Stop"} {
    set runText Run
    .top.menu.run entryconfigure 0 -state normal
    .top.menu.run entryconfigure 1 -state disabled
  } else {
    if {$continuMode == 1} {
      set runText Stop
      .top.menu.run entryconfigure 0 -state disabled
      .top.menu.run entryconfigure 1 -state normal
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


# --| RestartSim |------------------------------------------------------------------------
# --  Gestion du redemarage d'une simulation
# ----------------------------------------------------------------------------------------
proc RestartSim {} {
  global runningMode

  # Redemarrage de la simulation
  if {$runningMode == "Simulation"} {
    restart -f
  }

  # Lecture des entrees
  ReadInputs

  # initialisatin des variables d'entrees
  initButton  .top.main.inputFrame.switch
  setResult .top.main.outputFrame.result A ""
  setResult .top.main.outputFrame.result B ""

  if {$runningMode == "Target"} {
    RunDisplay
  }
}


# --| CONFIGWAVES |-----------------------------------------------------------------------
# --  Add signals to the wave view in QuestaSim
# ----------------------------------------------------------------------------------------
proc ConfigWaves {} {
  # Delete all remaining signals in the wave view
  delete wave *

  array set signalList {
    S0_sti        out
    S1_sti        out
    S2_sti        out
    S3_sti        out
    S4_sti        out
    S5_sti        out
    S6_sti        out
    S7_sti        out
    Val_A_sti     out
    Val_B_sti     out
    L0_obs        in
    L1_obs        in
    L2_obs        in
    L3_obs        in
    L4_obs        in
    L5_obs        in
    L6_obs        in
    L7_obs        in
    Result_A_obs  in
    Result_B_obs  in
    Hex0_obs      in
    Hex1_obs      in
    seg7_obs      in
    Horloge_s     internal
  }

  add wave -group Internes
  add wave -group Entrees
  add wave -group Sorties
  add wave -group Internes

  # Add a the waves for each signal in the list
  foreach sigName [lsort -dictionary [array names signalList]] {

    #echo $sigName

    set sigType $signalList($sigName)
    if {[string match "in" $sigType]} {
      set groupName Entrees
    } elseif {[string match "out" $sigType]} {
      set groupName Sorties
    } elseif {[string match "inout" $sigType]} {
      set groupName Bidirs
    } elseif {[string match "internal" $sigType]} {
      set groupName Internes
    }
    add wave -expand -group $groupName -noupdate -format Logic -label $sigName /console_sim/$sigName
  }

  add wave -group UUT -divider Inputs
  add wave -group UUT -in "uut/*"
  add wave -group UUT -divider Outputs
  add wave -group UUT -out "uut/*"
  add wave -group UUT -divider Internals
  add wave -group UUT -internal "uut/*"
  add wave -expand -group UUT

  # Configure the wave view
  configure wave -namecolwidth 140
  configure wave -valuecolwidth 80
  WaveRestoreZoom {0 ns} {2600 ns}

  # Restart the simulation (to refresh the wave view)
  restart -f
  wave refresh
}


# --| CONFIGBOARD |-----------------------------------------------------------------------
# --  Configure the board pins and enable the SUBD25 IOs.
# ----------------------------------------------------------------------------------------
proc ConfigBoard {} {
  # Global variables:
  #   - Addresses to configure pins 1 to 16
  #   - Address to enable the SUBD25 IOs
  #   - Address to read the version of the FPGA
  global adrConfPin adrSUBD25OE adrVersion adr80pCONNOE

  #                     +-----------------+
  #              ===0==>|                 |===0==> 
  #              ===0==>|     Console     |===0==> 
  #              ===0==>|       USB2      |===0==> 
  #                     |                 |
  #                     +-----------------+
  #                       /80p connector\
  #          Result_A, Result_B, Val_A, Val_B, 8xLeds 

  # Configuration for the left SUB25 connector
  #   - Pin(s) 01 to 08 as inputs  # 
  #   - Pin(s) 09 to 16 as inputs  # 
  #   - Pin(s) 17 to 24 as inputs  # 
  #   - Pins left (25 to 27) as inputs
  set ConfigPinG01_08 [format %d 0x00]; # 0000 0000
  set ConfigPinG09_16 [format %d 0x00]; # 0000 0000
  set ConfigPinG17_24 [format %d 0x00]; # 0000 0000
  set ConfigPinG25_27 [format %d 0x00]; # 0000 0000

  EcrireUSB $adrConfPin(G01_08) $ConfigPinG01_08
  EcrireUSB $adrConfPin(G09_16) $ConfigPinG09_16
  EcrireUSB $adrConfPin(G17_24) $ConfigPinG17_24
  EcrireUSB $adrConfPin(G25_27) $ConfigPinG25_27

  # Configuration for the right SUB25 connector
  #   - Pin(s) 01 to 08 as inputs  # 
  #   - Pin(s) 09 to 16 as inputs  # 
  #   - Pin(s) 17 to 24 as inputs  # 
  #   - Pins left (25 to 27) as inputs
  set ConfigPinD01_08 [format %d 0xff]; # 0000 0000
  set ConfigPinD09_16 [format %d 0xff]; # 0000 0000
  set ConfigPinD17_24 [format %d 0xff]; # 0000 0000
  set ConfigPinD25_27 [format %d 0x00]; # 0000 0000

  EcrireUSB $adrConfPin(D01_08) $ConfigPinD01_08
  EcrireUSB $adrConfPin(D09_16) $ConfigPinD09_16
  EcrireUSB $adrConfPin(D17_24) $ConfigPinD17_24
  EcrireUSB $adrConfPin(D25_27) $ConfigPinD25_27
  
   # Configuration for the 80p connector
   # - Pin(s) 01           as input  # gnd            | 80pConnPort1
   # - Pin(s) 08 downto 02 as inputs # Leds           | 80pConnPort1
   # - Pin(s) 16 downto 09 as inputs # Result_A( 7:0) | 80pConnPort2
   # - Pin(s) 24 downto 17 as inputs # Result_A(15:8) | 80pConnPort3
   # - Pin(s) 32 downto 25 as inputs # Result_B( 7:0) | 80pConnPort4
   # - Pin(s) 40 downto 33 as inputs # Result_B(15:8) | 80pConnPort5
   # - Pin(s) 48 downto 41 as outputs # Val_A(7:0)    | 80pConnPort6
   # - Pin(s) 56 downto 49 as outputs # Val_A(15:8)   | 80pConnPort7
   # - Pin(s) 64 downto 57 as outputs # Val_B(7:0)    | 80pConnPort8
   # - Pin(s) 72 downto 65 as outputs # Val_B(15:8)   | 80pConnPort9
   # - Pin(s) 80 downto 73 as inputs  #               | 80pConnPort10
   # - Pins left as inputs
  set ConfPin80pConnPort1  [format %d 0x00]; # 0000 0000 
  set ConfPin80pConnPort2  [format %d 0x00]; # 0000 0000
  set ConfPin80pConnPort3  [format %d 0x00]; # 0000 0000
  set ConfPin80pConnPort4  [format %d 0x00]; # 0000 0000
  set ConfPin80pConnPort5  [format %d 0x00]; # 0000 0000
  set ConfPin80pConnPort6  [format %d 0xFF]; # 1111 1111
  set ConfPin80pConnPort7  [format %d 0xFF]; # 1111 1111
  set ConfPin80pConnPort8  [format %d 0xFF]; # 1111 1111
  set ConfPin80pConnPort9  [format %d 0xFF]; # 1111 1111
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
  # Enable the IOs for 80pCONN
  EcrireUSB $adr80pCONNOE 0
}

# ----------------------------------------------------------------------------------------
# -- Programme principal /////////////////////////////////////////////////////////////////
# ----------------------------------------------------------------------------------------
CheckRunningMode
SetVariables
CreateMainWindow
if {$runningMode == "Simulation"} {
  #ConfigWaves
} else {
  ConfigBoard
}
SetOutputs
