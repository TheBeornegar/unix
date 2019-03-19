#!/bin/bash

if [ "$1" == "--normal" ]; then
  for i; do
     echo $i
  done	
elif [ "$1" == "--reverse" ]; then
    for i; do
	echo $i
    done | tac
elif  [ "$1" == "--subst" ]; then
    for i in `seq 4 $#`;do
        echo ${!i} | sed s/$2/$3/g
    done
elif [ "$1" == "--len" ]; then
    for i in $*; do
    echo -n "${#i} "
    done
    echo
elif [ "$1" == "--help" ]; then
  echo " Pouzitie: uloha02.sh [OPTION] [args]"
  echo "  --normal	vypise vsetky argumenty (i  --normal), kazdy argument na jeden riadok."
  echo "  --reverse	vypíše argumenty v opačnom poradí, ako sú na vstupe, každy na jeden riadok."
  echo "  --subst	druhý je nejaký reťazec A a tretí reťazec B, skript v každom argumente vymení všetky výskyty A na B a vypíše ich, každý na jeden riadok."
  echo "  --len		vypíše na jeden riadok dĺžky všetkých argumentov, oddelený medzerami."
  echo "  --help	vypíše návod na použitie tohto programu"
else
True
fi
