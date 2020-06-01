
Mon algorithme de randomisation de la complémentaire en image ...

int=2
seed=$$
while true ; do
	nb=$((RANDOM+1))
	echo "RANDOM = $nb"
	echo "seed = $seed"
	res=$(( $nb*$int%$seed))
	echo "Result ==> $nb x $int % $seed = $res"
	[[ $res -ge 1 && $res -lt 13 ]] && break
	((int++))
	((seed++))
done


RANDOM = 28765
seed = 13215
Result ==> 28765 x 2 % 13215 = 4670
RANDOM = 12129
seed = 13216
Result ==> 12129 x 3 % 13216 = 9955
RANDOM = 29304

...

RANDOM = 29653
seed = 14300
Result ==> 29653 x 1087 % 14300 = 611
RANDOM = 3245
seed = 14301
Result ==> 3245 x 1088 % 14301 = 12514
RANDOM = 9863
seed = 14302
Result ==> 9863 x 1089 % 14302 = 5

