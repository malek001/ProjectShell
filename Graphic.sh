#!/bin/bash
source Help.sh
source lshw.sh
source lsusb.sh
source save.sh


	if ret=` zenity --entry --title="Projects3" --text="Veuillez Selectionner votre choix" "Carterstiques Hardware" "Informations bus USB" "Carterstiques Hardware Pertinentes" "Help"`
		then
			titre=$ret
      case $titre in
        "Carterstiques Hardware" )
        Lshw > /tmp/lshw.txt
        zenity --text-info \
       --title="Carterstiques Hardware" \
       --filename=/tmp/lshw.txt \

          ;;
        "Informations bus USB" )
        Lsusb  > /tmp/lsusb.txt
        zenity --text-info \
       --title="Informations bus USB" \
       --filename=/tmp/lsusb.txt \
          ;;
        "Carterstiques Hardware Pertinentes")

        if [ -f "Hardware.txt" ]
        then
          zenity --question \
          --text="*Hardware.txt* existe voulez vous le supprimer "
          case $? in
            0) echo "Yes"
            SaveD
            zenity --info \
            --text="Ficher Enrgisiter "
            ;;
            1) echo "No"
            zenity --info \
            --text="Sauvgarde annulee"
            ;;
          esac

        else
          Save
          zenity --info \
          --text="Ficher Enrgisiter "
        fi

          ;;
        "Help")
        texthelp=$(Help)
        zenity --info \
        --text="$texthelp"
            ;;
      esac

		else
			echo "Byeee :') "
			exit
	fi
