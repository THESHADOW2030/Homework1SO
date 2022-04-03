umask 0000
test -f 1.sh || { echo "Manca il file 1.sh" 1>&2; exit; }
egrep -q 'python|java|perl|gcc' 1.sh && { echo "Il file 1.sh usa qualche comando proibito" 1>&2; exit; }
cd inp.6
cnt=0
for opt in "" "-l" "-h" "-l -h" "-lh"
do
    ((cnt++))
    exec 1> ../out.6/1.$cnt.out
    exec 2> ../out.6/2.$cnt.out
    exec 3> ../out.6/3.$cnt.out
    exec 4> ../out.6/4.$cnt.out
    exec 5> ../out.6/5.$cnt.out
    bash ../1.sh $opt  ./0/altro_1 ./0/dir_2 ./0/dir_2/5 ./0/altro_1/altro_4/7 ./0/altro_6/9 ./0/dir_2/altro_11/dir_12/  ./0/altro_6  ./0/altro_1/14/rkaajasagiaqaawgdgq.k.y524gjaaadadafaafa3aa96auka.aaa.log ./0/altro_1/3/5f3aa0aaga2rsdsjrqdsbkaaoaka5zk7sdkazfaaagahkaon.aaagf ./0/dir_2/5/13/jbiaoa8ahaddada.aaa ./0/altro_6/altro_101   ./0/altro_6/9/add8faa2aj.3jd3g.3EX3I ./0/dir_2/altro_11/dir_12/aufa0gisfa1.hh.aaa.log ./0/dir_2/5/hayn3asquarsdoaa.aaaf..asw.ak.aaa.log ./0/altro_1/14/az37aa18daf9daaaa0iwdd.nwoairoq04.anr ./0/altro_1/arga1d7fxkyaaadsh2wjaxgbfao..aaa.log ./0/dir_2/5/13/28gfd2aj3a4hj2xa2addasagzs.ddw3d ./0/altro_6/altro_10/2saabbkzaakdy4gjd5jayho9d1faqhd5arf0a4aha.aaagf.rioeY 
    echo $? > ../out.6/exit.$cnt.out
    ls -Rl | awk '{if (NF <= 1) print; else if (NF > 2) print $1, $2, $5, ($(NF - 1) == "->"? ($(NF - 2)" "$(NF - 1)" "$(NF)) : $NF)}' | LC_ALL=C sort >  ../out.6/arriving.$cnt.files
    ((cnt++))
    exec 1> ../out.6/1.$cnt.out
    exec 2> ../out.6/2.$cnt.out
    exec 3> ../out.6/3.$cnt.out
    exec 4> ../out.6/4.$cnt.out
    exec 5> ../out.6/5.$cnt.out
    bash ../1.sh $opt -e 3EX3I  ./0/altro_1 ./0/dir_2 ./0/dir_2/5 ./0/altro_1/altro_4/7 ./0/altro_6/9 ./0/dir_2/altro_11/dir_12/  ./0/altro_6  ./0/altro_1/14/rkaajasagiaqaawgdgq.k.y524gjaaadadafaafa3aa96auka.aaa.log ./0/altro_1/3/5f3aa0aaga2rsdsjrqdsbkaaoaka5zk7sdkazfaaagahkaon.aaagf ./0/dir_2/5/13/jbiaoa8ahaddada.aaa ./0/altro_6/altro_101   ./0/altro_6/9/add8faa2aj.3jd3g.3EX3I ./0/dir_2/altro_11/dir_12/aufa0gisfa1.hh.aaa.log ./0/dir_2/5/hayn3asquarsdoaa.aaaf..asw.ak.aaa.log ./0/altro_1/14/az37aa18daf9daaaa0iwdd.nwoairoq04.anr ./0/altro_1/arga1d7fxkyaaadsh2wjaxgbfao..aaa.log ./0/dir_2/5/13/28gfd2aj3a4hj2xa2addasagzs.ddw3d ./0/altro_6/altro_10/2saabbkzaakdy4gjd5jayho9d1faqhd5arf0a4aha.aaagf.rioeY 
    echo $? > ../out.6/exit.$cnt.out
    ls -Rl | awk '{if (NF <= 1) print; else if (NF > 2) print $1, $2, $5, ($(NF - 1) == "->"? ($(NF - 2)" "$(NF - 1)" "$(NF)) : $NF)}' | LC_ALL=C sort >  ../out.6/arriving.$cnt.files
    ((cnt++))
    exec 1> ../out.6/1.$cnt.out
    exec 2> ../out.6/2.$cnt.out
    exec 3> ../out.6/3.$cnt.out
    exec 4> ../out.6/4.$cnt.out
    exec 5> ../out.6/5.$cnt.out
    bash ../1.sh $opt -e 3EX3I -o ../out.6/output.1.$cnt.csv  ./0/altro_1 ./0/dir_2 ./0/dir_2/5 ./0/altro_1/altro_4/7 ./0/altro_6/9 ./0/dir_2/altro_11/dir_12/  ./0/altro_6  ./0/altro_1/14/rkaajasagiaqaawgdgq.k.y524gjaaadadafaafa3aa96auka.aaa.log ./0/altro_1/3/5f3aa0aaga2rsdsjrqdsbkaaoaka5zk7sdkazfaaagahkaon.aaagf ./0/dir_2/5/13/jbiaoa8ahaddada.aaa ./0/altro_6/altro_101   ./0/altro_6/9/add8faa2aj.3jd3g.3EX3I ./0/dir_2/altro_11/dir_12/aufa0gisfa1.hh.aaa.log ./0/dir_2/5/hayn3asquarsdoaa.aaaf..asw.ak.aaa.log ./0/altro_1/14/az37aa18daf9daaaa0iwdd.nwoairoq04.anr ./0/altro_1/arga1d7fxkyaaadsh2wjaxgbfao..aaa.log ./0/dir_2/5/13/28gfd2aj3a4hj2xa2addasagzs.ddw3d ./0/altro_6/altro_10/2saabbkzaakdy4gjd5jayho9d1faqhd5arf0a4aha.aaagf.rioeY 
    echo $? > ../out.6/exit.$cnt.out
    ls -Rl | awk '{if (NF <= 1) print; else if (NF > 2) print $1, $2, $5, ($(NF - 1) == "->"? ($(NF - 2)" "$(NF - 1)" "$(NF)) : $NF)}' | LC_ALL=C sort >  ../out.6/arriving.$cnt.files
    ((cnt++))
    exec 1> ../out.6/1.$cnt.out
    exec 2> ../out.6/2.$cnt.out
    exec 3> ../out.6/3.$cnt.out
    exec 4> ../out.6/4.$cnt.out
    exec 5> ../out.6/5.$cnt.out
    bash ../1.sh $opt -o ../out.6/output.2.$cnt.csv  ./0/altro_1 ./0/dir_2 ./0/dir_2/5 ./0/altro_1/altro_4/7 ./0/altro_6/9 ./0/dir_2/altro_11/dir_12/  ./0/altro_6  ./0/altro_1/14/rkaajasagiaqaawgdgq.k.y524gjaaadadafaafa3aa96auka.aaa.log ./0/altro_1/3/5f3aa0aaga2rsdsjrqdsbkaaoaka5zk7sdkazfaaagahkaon.aaagf ./0/dir_2/5/13/jbiaoa8ahaddada.aaa ./0/altro_6/altro_101   ./0/altro_6/9/add8faa2aj.3jd3g.3EX3I ./0/dir_2/altro_11/dir_12/aufa0gisfa1.hh.aaa.log ./0/dir_2/5/hayn3asquarsdoaa.aaaf..asw.ak.aaa.log ./0/altro_1/14/az37aa18daf9daaaa0iwdd.nwoairoq04.anr ./0/altro_1/arga1d7fxkyaaadsh2wjaxgbfao..aaa.log ./0/dir_2/5/13/28gfd2aj3a4hj2xa2addasagzs.ddw3d ./0/altro_6/altro_10/2saabbkzaakdy4gjd5jayho9d1faqhd5arf0a4aha.aaagf.rioeY 
    echo $? > ../out.6/exit.$cnt.out
    ls -Rl | awk '{if (NF <= 1) print; else if (NF > 2) print $1, $2, $5, ($(NF - 1) == "->"? ($(NF - 2)" "$(NF - 1)" "$(NF)) : $NF)}' | LC_ALL=C sort >  ../out.6/arriving.$cnt.files
done
((cnt++))
exec 1> ../out.6/1.$cnt.out
exec 2> ../out.6/2.$cnt.out
exec 3> ../out.6/3.$cnt.out
exec 4> ../out.6/4.$cnt.out
exec 5> ../out.6/5.$cnt.out
bash ../1.sh $opt -e
echo $? > ../out.6/exit.$cnt.out
    ls -Rl | awk '{if (NF <= 1) print; else if (NF > 2) print $1, $2, $5, ($(NF - 1) == "->"? ($(NF - 2)" "$(NF - 1)" "$(NF)) : $NF)}' | LC_ALL=C sort >  ../out.6/arriving.$cnt.files
((cnt++))
exec 1> ../out.6/1.$cnt.out
exec 2> ../out.6/2.$cnt.out
exec 3> ../out.6/3.$cnt.out
exec 4> ../out.6/4.$cnt.out
exec 5> ../out.6/5.$cnt.out
bash ../1.sh $opt -e logloglog
echo $? > ../out.6/exit.$cnt.out
    ls -Rl | awk '{if (NF <= 1) print; else if (NF > 2) print $1, $2, $5, ($(NF - 1) == "->"? ($(NF - 2)" "$(NF - 1)" "$(NF)) : $NF)}' | LC_ALL=C sort >  ../out.6/arriving.$cnt.files
