#!/bin/bash

source Help.sh
source lshw.sh
source lsusb.sh
source save.sh

echo -e "\n \n \t \t Welcome to Project Scripting :D \n \n"


if [[ $# -eq 1 ]]; then
  case $1 in
    "-lx" )
    Lshw
      ;;
    "-lusb" )
    Lsusb
      ;;
    "-h" | "-help")

    Help
      ;;
    "-s" | "--save")
    Save
        ;;
  esac

else

  while true ; do

    echo -e "\n \n"
    echo -e "\n 1 : Afficher les carterstiques Hardware. "
    echo -e "\n 2 : Afficher des informations relatives aux bus USB.  "
    echo -e "\n 3 : Afficher les carterstiques Hardware pertinentes.  "
    echo -e "\n 4 : Sauvegarder les informations. "
    echo -e "\n 5 : Quit. "
    echo -e "\n \n"
    read choix

    case $choix in
      "1" )
      Lshw
        ;;
      "2" )
      Lsusb
        ;;
      "3" )
      Help
        ;;
      "4" )
      Save
        ;;
      "5" )
      exit
        ;;
      * )
      echo "Error"
      ;;
    esac
  done

fi
