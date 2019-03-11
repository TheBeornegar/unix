#!/bin/bash

if [ "$1" == "--typ" ]; then
shift 1
fi

if [ "$1" == "--help" ]; then
echo "Pouziti: uloha01.sh [--typ|--help] [cesta_k_souboru_]"
echo " --typ		vypise typ souboru"
echo " --help		vypise popis tohoto skriptu"
elif [ -f "$1" ]; then
echo "soubor"
elif [ -d "$1" ]; then
echo "adresar"
elif [ -h "$1" ]; then
echo "symbolicky link"
elif [ -b "$1" ]; then
echo "blokove zariadenie"
elif [ -c "$1" ]; then
echo "znakove zariadenie"
elif [ -s "$1" ]; then
echo "soket"
elif [ -p "$1" ]; then
echo "rura"
else
echo "Chyba"
false
fi


