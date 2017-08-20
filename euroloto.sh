#!/bin/bash
# euroloto.sh

touch toto loto

Suspense () {	
# si identique à une déjà sortie, on recommence
	grep -q $res $1 && continue
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
		[[ $res -le 50 && $res -ge 1 ]] && break
		((int++))
	done
	Suspense toto
	echo -e " Boule $chance :\t$res"
	sleep 1
	((chance++))
done
sleep 1
cpl=1
int=2

while [ $cpl -le 2 ]
do
	while true
	do
		nb=$((RANDOM+1))
		res=`echo $(($nb*$int%$$))`
		[[ $res -le 12 && $res -ge 1 ]] && break
# aujourd'hui $res -le 12
		((int++))	
	done
	Suspense loto
	echo "Complémentaire : $res"
	sleep 1
	((cpl++))
done
rm toto loto
echo

exit 0



# Écrit par cerulean  <ceruleanfirm@gmail.com>  0x71F86DC1B12845E9
# Mars 2016
# Free For All
