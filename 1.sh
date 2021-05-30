#!/usr/bin/env bash
./przygotowanie.sh
#sprawdzenie czy podano prawidłową liczbę argumentów
if test $# -ne 1
then
	exit 1
fi
#sprawdzenie czy istnieje katalog zadany jako argument
if test ! -d $1
then
	echo "Katalog $1 nie istnieje."
	exit 1
fi
#sprawdzenie czy istnieje plik zadany jako argument
if test ! -f $2
then
	echo "Plik $2 nie istnieje."
	exit 1
fi

rm -r plik1

echo "1. Ścieżka względna do pliku file10:" >> plik1 | find $1 -name 'file10' -print >> plik1
echo "2. Liczba plików zwykłych w katalogu $1:" >> plik1 | find $1 -type f | wc -l | tr -s " " >> plik1
