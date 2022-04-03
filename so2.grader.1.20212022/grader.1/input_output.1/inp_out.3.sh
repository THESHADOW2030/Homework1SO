umask 0000
test -f 1.sh || { echo "Manca il file 1.sh" 1>&2; exit; }
egrep -q 'python|java|perl|gcc' 1.sh && { echo "Il file 1.sh usa qualche comando proibito" 1>&2; exit; }
cd inp.3
cnt=0
for opt in "" "-l" "-h" "-l -h" "-lh"
do
    ((cnt++))
    exec 1> ../out.3/1.$cnt.out
    exec 2> ../out.3/2.$cnt.out
    exec 3> ../out.3/3.$cnt.out
    exec 4> ../out.3/4.$cnt.out
    exec 5> ../out.3/5.$cnt.out
    bash ../1.sh $opt  ./0/1/ ./0/3 ./0/1/dir_6 ./0/dir_4/5/13  ./0/dir_4/51   ./0/dir_4/5/14/za4nmodwaaxd3.agg.vPI ./0/3/g2ajaqadnan.agg ./0/dir_4/altro_7/dir_11/ajkasaaadaa6aazsgr6.aar.gjN ./0/dir_4/altro_7/2ofkagku3ia7ga1dagxj6a.aah  ./0/dir_4/5/dir_8/2x..r94qfaaggfaa8aakaak.aang4x.jafadng5f9zj7.agg.vPI ./0/dir_4/altro_7/dir_11/saqma.zb13ah77a3as2.au8.ga8 ./0/dir_4/gaaaaa9j9a.aaa ./0/dir_4/5/14/6aak3adwaqdazha0jfaqzaabaafuika0i.ada9jdaifa0.aaa.log 
    echo $? > ../out.3/exit.$cnt.out
    ls -Rl | awk '{if (NF <= 1) print; else if (NF > 2) print $1, $2, $5, ($(NF - 1) == "->"? ($(NF - 2)" "$(NF - 1)" "$(NF)) : $NF)}' | LC_ALL=C sort >  ../out.3/arriving.$cnt.files
    ((cnt++))
    exec 1> ../out.3/1.$cnt.out
    exec 2> ../out.3/2.$cnt.out
    exec 3> ../out.3/3.$cnt.out
    exec 4> ../out.3/4.$cnt.out
    exec 5> ../out.3/5.$cnt.out
    bash ../1.sh $opt -e ga8  ./0/1/ ./0/3 ./0/1/dir_6 ./0/dir_4/5/13  ./0/dir_4/51   ./0/dir_4/5/14/za4nmodwaaxd3.agg.vPI ./0/3/g2ajaqadnan.agg ./0/dir_4/altro_7/dir_11/ajkasaaadaa6aazsgr6.aar.gjN ./0/dir_4/altro_7/2ofkagku3ia7ga1dagxj6a.aah  ./0/dir_4/5/dir_8/2x..r94qfaaggfaa8aakaak.aang4x.jafadng5f9zj7.agg.vPI ./0/dir_4/altro_7/dir_11/saqma.zb13ah77a3as2.au8.ga8 ./0/dir_4/gaaaaa9j9a.aaa ./0/dir_4/5/14/6aak3adwaqdazha0jfaqzaabaafuika0i.ada9jdaifa0.aaa.log 
    echo $? > ../out.3/exit.$cnt.out
    ls -Rl | awk '{if (NF <= 1) print; else if (NF > 2) print $1, $2, $5, ($(NF - 1) == "->"? ($(NF - 2)" "$(NF - 1)" "$(NF)) : $NF)}' | LC_ALL=C sort >  ../out.3/arriving.$cnt.files
    ((cnt++))
    exec 1> ../out.3/1.$cnt.out
    exec 2> ../out.3/2.$cnt.out
    exec 3> ../out.3/3.$cnt.out
    exec 4> ../out.3/4.$cnt.out
    exec 5> ../out.3/5.$cnt.out
    bash ../1.sh $opt -e ga8 -o ../out.3/output.1.$cnt.csv  ./0/1/ ./0/3 ./0/1/dir_6 ./0/dir_4/5/13  ./0/dir_4/51   ./0/dir_4/5/14/za4nmodwaaxd3.agg.vPI ./0/3/g2ajaqadnan.agg ./0/dir_4/altro_7/dir_11/ajkasaaadaa6aazsgr6.aar.gjN ./0/dir_4/altro_7/2ofkagku3ia7ga1dagxj6a.aah  ./0/dir_4/5/dir_8/2x..r94qfaaggfaa8aakaak.aang4x.jafadng5f9zj7.agg.vPI ./0/dir_4/altro_7/dir_11/saqma.zb13ah77a3as2.au8.ga8 ./0/dir_4/gaaaaa9j9a.aaa ./0/dir_4/5/14/6aak3adwaqdazha0jfaqzaabaafuika0i.ada9jdaifa0.aaa.log 
    echo $? > ../out.3/exit.$cnt.out
    ls -Rl | awk '{if (NF <= 1) print; else if (NF > 2) print $1, $2, $5, ($(NF - 1) == "->"? ($(NF - 2)" "$(NF - 1)" "$(NF)) : $NF)}' | LC_ALL=C sort >  ../out.3/arriving.$cnt.files
    ((cnt++))
    exec 1> ../out.3/1.$cnt.out
    exec 2> ../out.3/2.$cnt.out
    exec 3> ../out.3/3.$cnt.out
    exec 4> ../out.3/4.$cnt.out
    exec 5> ../out.3/5.$cnt.out
    bash ../1.sh $opt -o ../out.3/output.2.$cnt.csv  ./0/1/ ./0/3 ./0/1/dir_6 ./0/dir_4/5/13  ./0/dir_4/51   ./0/dir_4/5/14/za4nmodwaaxd3.agg.vPI ./0/3/g2ajaqadnan.agg ./0/dir_4/altro_7/dir_11/ajkasaaadaa6aazsgr6.aar.gjN ./0/dir_4/altro_7/2ofkagku3ia7ga1dagxj6a.aah  ./0/dir_4/5/dir_8/2x..r94qfaaggfaa8aakaak.aang4x.jafadng5f9zj7.agg.vPI ./0/dir_4/altro_7/dir_11/saqma.zb13ah77a3as2.au8.ga8 ./0/dir_4/gaaaaa9j9a.aaa ./0/dir_4/5/14/6aak3adwaqdazha0jfaqzaabaafuika0i.ada9jdaifa0.aaa.log 
    echo $? > ../out.3/exit.$cnt.out
    ls -Rl | awk '{if (NF <= 1) print; else if (NF > 2) print $1, $2, $5, ($(NF - 1) == "->"? ($(NF - 2)" "$(NF - 1)" "$(NF)) : $NF)}' | LC_ALL=C sort >  ../out.3/arriving.$cnt.files
done
((cnt++))
exec 1> ../out.3/1.$cnt.out
exec 2> ../out.3/2.$cnt.out
exec 3> ../out.3/3.$cnt.out
exec 4> ../out.3/4.$cnt.out
exec 5> ../out.3/5.$cnt.out
bash ../1.sh $opt -e
echo $? > ../out.3/exit.$cnt.out
    ls -Rl | awk '{if (NF <= 1) print; else if (NF > 2) print $1, $2, $5, ($(NF - 1) == "->"? ($(NF - 2)" "$(NF - 1)" "$(NF)) : $NF)}' | LC_ALL=C sort >  ../out.3/arriving.$cnt.files
((cnt++))
exec 1> ../out.3/1.$cnt.out
exec 2> ../out.3/2.$cnt.out
exec 3> ../out.3/3.$cnt.out
exec 4> ../out.3/4.$cnt.out
exec 5> ../out.3/5.$cnt.out
bash ../1.sh $opt -e logloglog
echo $? > ../out.3/exit.$cnt.out
    ls -Rl | awk '{if (NF <= 1) print; else if (NF > 2) print $1, $2, $5, ($(NF - 1) == "->"? ($(NF - 2)" "$(NF - 1)" "$(NF)) : $NF)}' | LC_ALL=C sort >  ../out.3/arriving.$cnt.files
