#!/bin/bash
# loto.sh
# randomisation d'une grille

touch loto

Suspense () {	
# si identique à une déjà sortie, on recommence
	grep -q $res $1 && return 1 
	echo $res >> $1
}

chance=1
int=2
echo
sleep 1

while [ $chance -le 5 ]
do
	while true
	do
		nb=$((RANDOM-1))
		res=$(($nb/$int))
		[[ $res -le 49 && $res -ge 1 ]] && break
		((int++))
	done
	Suspense loto || continue
	echo -e " Boule $chance :\t$res"
	sleep 1
	((chance++))
done
sleep 1
cpl=1
int=2

while true
do
	nb=$((RANDOM+1))
	res=$(($nb*$int%$$))
	[[ $res -le 10 && $res -ge 1 ]] && break
	((int++))
done
echo "Complémentaire : $res"
sleep 1
rm loto
echo

exit 0



# Écrit par cerulean  <ceruleanfirm@gmail.com>  0x71F86DC1B12845E9
# Mars 2016
# Free For All

