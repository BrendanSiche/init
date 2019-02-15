#!/bin/sh
i=0

echo "trop d'arguments"
./fillit asdf sadf
echo "--------------------------------------------------------------------------"
echo "pas assez"
./fillit
echo "--------------------------------------------------------------------------"
echo "fichier non existant"
./fillit kljsdkjg
echo "--------------------------------------------------------------------------"


echo "test de fichiers non valides"
./fillit ./maps/invalid/bad1 >> ./result/invalide.txt
./fillit ./maps/invalid/bad2 >> ./result/invalide.txt
./fillit ./maps/invalid/bad3 >> ./result/invalide.txt
./fillit ./maps/invalid/bad4 >> ./result/invalide.txt
./fillit ./maps/invalid/bad5 >> ./result/invalide.txt
./fillit ./maps/invalid/bad6 >> ./result/invalide.txt
./fillit ./maps/invalid/bad7 >> ./result/invalide.txt
./fillit ./maps/invalid/bad8 >> ./result/invalide.txt
./fillit ./maps/invalid/bad9 >> ./result/invalide.txt

DIFF=$(diff ./result/invalide.txt ./cmp/bad.txt) 
if [ "$DIFF" != "" ]
then
    echo "Oh noes : ("
else
    echo ": D"
fi
echo "--------------------------------------------------------------------------"


echo "test fichiers valides"
./fillit ./maps/pieces/B1 >> ./result/valide.txt
./fillit ./maps/pieces/B2 >> ./result/valide.txt
./fillit ./maps/pieces/Z1 >> ./result/valide.txt
./fillit ./maps/pieces/Z2 >> ./result/valide.txt
./fillit ./maps/pieces/Z3 >> ./result/valide.txt
./fillit ./maps/pieces/Z4 >> ./result/valide.txt
./fillit ./maps/pieces/L1 >> ./result/valide.txt
./fillit ./maps/pieces/L2 >> ./result/valide.txt
./fillit ./maps/pieces/L3 >> ./result/valide.txt
./fillit ./maps/pieces/L4 >> ./result/valide.txt
./fillit ./maps/pieces/L8 >> ./result/valide.txt
./fillit ./maps/pieces/l5 >> ./result/valide.txt
./fillit ./maps/pieces/l6 >> ./result/valide.txt
./fillit ./maps/pieces/l7 >> ./result/valide.txt
./fillit ./maps/pieces/T1 >> ./result/valide.txt
./fillit ./maps/pieces/T2 >> ./result/valide.txt
./fillit ./maps/pieces/T3 >> ./result/valide.txt
./fillit ./maps/pieces/T4 >> ./result/valide.txt
./fillit ./maps/pieces/square >> ./result/valide.txt

DIFF=$(diff ./result/valide.txt ./cmp/tetromino.txt) 
if [ "$DIFF" != "" ]
then
    echo "Oh noes : ("
else
    echo ": D"
fi
echo "--------------------------------------------------------------------------"

echo "test d'algo"
./fillit ./maps/mouli > ./result/test.txt
DIFF=$(diff ./cmp/yeah.txt ./result/test.txt) 
if [ "$DIFF" != "" ] 
then
    echo "Oh noes : ("
else
    echo ": D"
fi
echo "--------------------------------------------------------------------------"
time ./fillit ./maps/test7.prm > ./result/test7.txt
time ./fillit ./maps/test1.prm >./result/test1.txt

echo "c'est parti"
while [ $i -le 100 ] 
do ./fillit ./maps//valid_0
./fillit ./maps//valid_1
./fillit ./maps//valid_10
./fillit ./maps//valid_11
./fillit ./maps//valid_12
./fillit ./maps//valid_13
./fillit ./maps//valid_14
./fillit ./maps//valid_15
./fillit ./maps//valid_16
./fillit ./maps//valid_17
./fillit ./maps//valid_18
./fillit ./maps//valid_19
./fillit ./maps//valid_2
./fillit ./maps//valid_20
./fillit ./maps//valid_21
./fillit ./maps//valid_3
./fillit ./maps//valid_4
./fillit ./maps//valid_5
./fillit ./maps//valid_6
./fillit ./maps//valid_7
./fillit ./maps//valid_9
(( i++ )) 
echo done
sleep 0 
done > ./result/osef.txt
GREP=$(grep "error" ./result/osef.txt)
if [ "$GREP" != "" ] 
then
    echo "Oh noes : ("
else
    echo ": D"
fi

echo "la souris c'est sur votre ecran"
./fillit /dev/random