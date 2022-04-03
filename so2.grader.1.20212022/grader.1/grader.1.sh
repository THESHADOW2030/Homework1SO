#! /bin/bash

if [ ! \( -f all.tgz \) ]
then
    echo Manca il file all.tgz, impossibile proseguire
    exit
fi
res=`ls -1 so2.????.????.?.*.tgz 2> /dev/null | awk -F. '$2 == "2021" && $3 == "2022" && $4 == "1" && $5 ~ /[0-9]{5,}/ {print}' | wc -l | awk '{print $1}'`
if [ $res -eq 0 ]
then
    echo Manca il file con le soluzioni, impossibile proseguire
    #exit
fi
if [ $res -gt 1 ]
then
    echo Troppi file con le soluzioni, impossibile proseguire
    exit
fi
if [ "`ls -1d input_output.* 2> /dev/null`" != "" ]
then
    chmod -R 777 input_output.*
    rm -rf input_output.*
fi

max_hw=6.3
max_minutes=10

rm -f [0-9].*
if [ $# -eq 1 ]
then
    dirs=input_output.$1
    dirs_all=`tar tzf all.tgz | awk -F/ 'NF == 2 && $2 == ""{print}'`
    max_punteggio=`echo $max_hw $dirs_all | awk '{printf("%lf", $1/(NF - 1));}'`
    tar xfzp all.tgz input_output.$1
    tar --wildcards -xz --file=`ls so2*.tgz` $1.*
    cp $1.* input_output.$1/ || { echo "La soluzione all'esercizio "$1" non e' presente nel file "so2*.tgz; exit; }
else
    tar xfzp all.tgz 
    sols=`tar xfzv so2*.tgz`
    for i in $sols
    do
	test -d input_output.`echo $i | awk -F. '{print $1}'` || { echo "La soluzione "so2*.tgz" contiene anche file o directory non richiesti, come ad esempio "$i; exit; }
	cp $i input_output.`echo $i | awk -F. '{print $1}'`/
    done
    max_punteggio=`echo $max_hw input_output.* | awk '{printf("%lf", $1/(NF - 1))}'`
    dirs=`ls -1d input_output.* | sort -t . -k 2 -n`
fi

tot=0
for dir in $dirs
do
    if [ ! \( -d $dir \) ]
    then
	echo La directory $dir non esiste"!"
	continue
    fi
    if [ ! \( -d $dir/check \) ]
    then
	echo La directory $dir/check non esiste"!"
	continue
    fi
    how_many=`ls -1 $dir/inp_out*.sh | wc -l`
    if [ $how_many -eq 0 ]
    then
	echo Nessun test presente in $dir, impossibile correggere
	continue
    fi
    pushd . > /dev/null
    cd $dir
    num_dir=`echo $dir | awk -F. '{print $2}'`
    check_file=`ls -1 $num_dir.* 2> /dev/null | wc -l | awk '{print $1}'`
    echo Correzione esercizio $num_dir
    if [ $check_file -ne 1 ]
    then
	#cosi' facendo, se c'e' un unico studente con un unico esercizio presentato, va in confusione lo script che genera la tabella finale
	# echo -e "\t"$num_dir" non presente!"
	# echo Risultato per esercizio $num_dir: 0"/"$max_punteggio
	# popd > /dev/null
	# continue
	touch $num_dir.qualcosa
    fi
    #grep -Eq 'gcc|perl|python|java' $num_dir.* && { echo "La soluzione "$num_dir.*" usa un comando non consentito"; echo Risultato per esercizio $num_dir: 0"/"$max_punteggio; popd > /dev/null; continue; }
    ok=0
    #onde evitare furbate
    permutation=`python3 <<EOF | sed -e 's/[^0-9 ]//g'
from random import *
ok = False
while not(ok):
    seq = list(range(1, $how_many + 1))
    shuffle(seq)
    ok = True
    for i in range(len(seq)):
        if seq[i] == i + 1:
            ok = False
            break
print(seq)
EOF`
    mkdir tmp
    mv check/* tmp
    i_old=1
    for i in $permutation
    do
	mv tmp/out.$i_old check/out.$i
	mv tmp/inp_out.$i_old.sh.err check/inp_out.$i.sh.err
	mv tmp/inp_out.$i_old.sh.out check/inp_out.$i.sh.out
	echo -e "\tPer eventuali controlli successivi, fare la differenza tra out.$i_old e check/out.$i"
	((i_old++))
    done
    rm -r tmp
    for ((i = 1; i <= how_many; i++))
    do
	timeout $((max_minutes*60)) bash inp_out.$i.sh > inp_out.$i.sh.out 2> inp_out.$i.sh.err
	exit_status=$?
	if [ $exit_status -eq 124 ]
	then
	    echo -e "\ttest $i fallito per timeout!"
	    continue
	fi
	i_old=`echo $permutation | awk -v i=$i '{print $i}'`
	(diff -rq out.$i check/out.$i_old && diff -q inp_out.$i.sh.out check/inp_out.$i_old.sh.out && diff -q inp_out.$i.sh.err check/inp_out.$i_old.sh.err) && { ((ok++)); echo -e "\ttest $i ok!"; } || echo -e "\ttest $i fallito!"
    done
    res=`echo $ok $how_many $max_punteggio | awk '{printf("%lf", ($1/$2)*$3)}'`
    echo Risultato per esercizio $num_dir: $res"/"$max_punteggio
    tot=`echo $res $tot | awk '{printf("%lf", $1 + $2)}'`
    popd > /dev/null
done
if [ $# -ne 1 ]
then
    echo -e "\n\nRISULTATO INTERO HOMEWORK: $tot/$max_hw\n\n"
fi
