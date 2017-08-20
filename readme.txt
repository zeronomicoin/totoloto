
Mon algorithme de randomisation de la complémentaire en image ...

int=2
while true
do 
    nb=$((RANDOM+1)) ; echo Random = $nb
    res=$(($nb*int%$$))
    echo "shell pid = $$"
    echo "Résultat ==> $nb x $int % $$ = $res"
    [[ $res -ge 1 && $res -le 12 ]] && break 
    ((int++))
done

Random = 25026
shell pid = 26289
Résultat ==> 25026 x 2 % 26289 = 23763
Random = 2992
shell pid = 26289
Résultat ==> 2992 x 3 % 26289 = 8976
Random = 16421
shell pid = 26289
Résultat ==> 16421 x 4 % 26289 = 13106
Random = 7413
shell pid = 26289
Résultat ==> 7413 x 5 % 26289 = 10776
Random = 10478
shell pid = 26289
Résultat ==> 10478 x 6 % 26289 = 10290
...
Random = 31456
shell pid = 26289
Résultat ==> 31456 x 142 % 26289 = 23911
Random = 4045
shell pid = 26289
Résultat ==> 4045 x 143 % 26289 = 77
...
Random = 13749
shell pid = 26289
Résultat ==> 13749 x 285 % 26289 = 1404
Random = 4123
shell pid = 26289
Résultat ==> 4123 x 286 % 26289 = 22462
Random = 14732
shell pid = 26289
Résultat ==> 14732 x 287 % 26289 = 21844
Random = 10821
shell pid = 26289
Résultat ==> 10821 x 288 % 26289 = 14346
Random = 11216
shell pid = 26289
Résultat ==> 11216 x 289 % 26289 = 7877
Random = 31951
shell pid = 26289
Résultat ==> 31951 x 290 % 26289 = 12062
Random = 26018
shell pid = 26289
Résultat ==> 26018 x 291 % 26289 = 6

