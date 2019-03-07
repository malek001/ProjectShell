function Save() {

if [ -f "Hardware.txt" ]
then
echo " *Hardware.txt* existe voulez vous le supprimer ! \n [1:oui] [2:non]"
read choix

if [[ "$choix" -eq "1" ]]
 then
 rm -rf Hardware.txt
 lshw -short > Hardware.txt
  else
  echo "Sauvgarde annulee :p"
fi

else
  lshw -short > Hardware.txt
fi

}

function SaveD() {
  rm -rf Hardware.txt
 lshw -short > Hardware.txt
}
