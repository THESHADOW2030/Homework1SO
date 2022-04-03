#!/bin/bash
pids_prec=`ps | awk 'FNR > 1{printf("%s_", $1)}'`
function kill_all () { tbk=$(ps -opid=,ppid=,cmd= | awk -v pids_prec=$pids_prec 'BEGIN{num = split(pids_prec, a, "_"); for (i = 1; i < num; i++) pids_prec_ar[a[i]] = 1}{if (!($1 in pids_prec_ar)) print $1}'); kill -9 $tbk  > /dev/null 2>&1; }
bash ../2.sh 5 commands.txt  > ../out_tmp.1/res.out.txt 2> ../out.1/res.err.txt 3> ../out_tmp.1/res.3.txt 4> ../out.1/res.4.txt &
sleep 3
declar=`head -1 ../out_tmp.1/res.3.txt 2> /dev/null | awk -F_ '{print NF}'`
if [ "$declar" != "5" ]
then
    echo Non sono stati lanciati tutti i processi dopo 3 secondi
    kill_all
    exit 1
fi
all_procs="`ps -h -opid,ppid,cmd`"
declar=`cat ../out_tmp.1/res.3.txt | tr "_" "\n" | sort -n`
for d in $declar
do
    (echo "$all_procs" | awk '$1 == '$d'{print}' | wc -l | awk '$1 != 1{exit 1}') || { echo Il processo $d, pur essendo in ../out_tmp.1/res.3.txt, non risulta in esecuzione";" ecco la lista dei processi: ; echo "$all_procs"; kill_all; exit; }
    (echo "$all_procs" | awk '$1 == '$d'{print}' | awk '$2 != '$!'{exit 1}') || { echo Il processo $d, pur essendo in ../out_tmp.1/res.3.txt,  non risulta essere stato lanciato da 2.sh "(PID $!);" ecco la lista dei processi; echo "$all_procs"; kill_all; exit; }
    (echo "$all_procs" | awk '$1 == '$d'{print}' | awk '$3 != "./2" {exit 1}') || { echo Il processo $d non risulta essere stato lanciato dall"'"eseguibile dato 2";" ecco la lista dei processi; echo "$all_procs"; kill_all; exit; }
done
touch done.txt
wait %1
(head -1 ../out_tmp.1/res.3.txt; cat  ../out_tmp.1/res.out.txt)  | awk '{printf("%s|", $0)}END{printf("\n");}' | ./appoggio
kill_all
rm done.txt
