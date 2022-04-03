umask 0000
test -f 1.sh || { echo "Manca il file 1.sh" 1>&2; exit; }
egrep -q 'python|java|perl|gcc' 1.sh && { echo "Il file 1.sh usa qualche comando proibito" 1>&2; exit; }
cd inp.4
cnt=0
for opt in "" "-l" "-h" "-l -h" "-lh"
do
    ((cnt++))
    exec 1> ../out.4/1.$cnt.out
    exec 2> ../out.4/2.$cnt.out
    exec 3> ../out.4/3.$cnt.out
    exec 4> ../out.4/4.$cnt.out
    exec 5> ../out.4/5.$cnt.out
    bash ../1.sh $opt  ./0/11 ./0/1/altro_2/4/ ./0/1/altro_2/dir_5/ ./0/1/dir_7 ./0/1/dir_7/8 ./0/1/dir_7/9/ ./0/altro_11/ ./0/altro_11/14/  ./0/1/altro_2/4/altro_12  ./0/1/altro_2/41  ./0/1/altro_2/4/au3makdhs.2a2gg6h.d.jfsaf ./0/1/altro_2/6/yanhb4afojodaaag0bu66aazn7oaanaardja.adas  ./0/1/dir_71  ./0/1/dir_7/.ahay8hxaakj8yfaaayda2jh0ggjakzaasaaxaaaakbjf95a.adas.gGyW ./0/1/altro_2/6/.axarafaa.5.z2z.R2R ./0/1/altro_2/dir_5/ayh.f6wgajafaagaaaaabxa4daaaaaxja1a50aaaxarganb.aaa ./0/altro_11/sraw8ygafaaaa7z.adkx8ksdh.aaa.log ./0/1/altro_2/6/nbq9raax00ouddj4z0gar7agiaasj3asr8onagaxgjg7au.iuk.JaF 
    echo $? > ../out.4/exit.$cnt.out
    ls -Rl | awk '{if (NF <= 1) print; else if (NF > 2) print $1, $2, $5, ($(NF - 1) == "->"? ($(NF - 2)" "$(NF - 1)" "$(NF)) : $NF)}' | LC_ALL=C sort >  ../out.4/arriving.$cnt.files
    ((cnt++))
    exec 1> ../out.4/1.$cnt.out
    exec 2> ../out.4/2.$cnt.out
    exec 3> ../out.4/3.$cnt.out
    exec 4> ../out.4/4.$cnt.out
    exec 5> ../out.4/5.$cnt.out
    bash ../1.sh $opt -e gGyW  ./0/11 ./0/1/altro_2/4/ ./0/1/altro_2/dir_5/ ./0/1/dir_7 ./0/1/dir_7/8 ./0/1/dir_7/9/ ./0/altro_11/ ./0/altro_11/14/  ./0/1/altro_2/4/altro_12  ./0/1/altro_2/41  ./0/1/altro_2/4/au3makdhs.2a2gg6h.d.jfsaf ./0/1/altro_2/6/yanhb4afojodaaag0bu66aazn7oaanaardja.adas  ./0/1/dir_71  ./0/1/dir_7/.ahay8hxaakj8yfaaayda2jh0ggjakzaasaaxaaaakbjf95a.adas.gGyW ./0/1/altro_2/6/.axarafaa.5.z2z.R2R ./0/1/altro_2/dir_5/ayh.f6wgajafaagaaaaabxa4daaaaaxja1a50aaaxarganb.aaa ./0/altro_11/sraw8ygafaaaa7z.adkx8ksdh.aaa.log ./0/1/altro_2/6/nbq9raax00ouddj4z0gar7agiaasj3asr8onagaxgjg7au.iuk.JaF 
    echo $? > ../out.4/exit.$cnt.out
    ls -Rl | awk '{if (NF <= 1) print; else if (NF > 2) print $1, $2, $5, ($(NF - 1) == "->"? ($(NF - 2)" "$(NF - 1)" "$(NF)) : $NF)}' | LC_ALL=C sort >  ../out.4/arriving.$cnt.files
    ((cnt++))
    exec 1> ../out.4/1.$cnt.out
    exec 2> ../out.4/2.$cnt.out
    exec 3> ../out.4/3.$cnt.out
    exec 4> ../out.4/4.$cnt.out
    exec 5> ../out.4/5.$cnt.out
    bash ../1.sh $opt -e gGyW -o ../out.4/output.1.$cnt.csv  ./0/11 ./0/1/altro_2/4/ ./0/1/altro_2/dir_5/ ./0/1/dir_7 ./0/1/dir_7/8 ./0/1/dir_7/9/ ./0/altro_11/ ./0/altro_11/14/  ./0/1/altro_2/4/altro_12  ./0/1/altro_2/41  ./0/1/altro_2/4/au3makdhs.2a2gg6h.d.jfsaf ./0/1/altro_2/6/yanhb4afojodaaag0bu66aazn7oaanaardja.adas  ./0/1/dir_71  ./0/1/dir_7/.ahay8hxaakj8yfaaayda2jh0ggjakzaasaaxaaaakbjf95a.adas.gGyW ./0/1/altro_2/6/.axarafaa.5.z2z.R2R ./0/1/altro_2/dir_5/ayh.f6wgajafaagaaaaabxa4daaaaaxja1a50aaaxarganb.aaa ./0/altro_11/sraw8ygafaaaa7z.adkx8ksdh.aaa.log ./0/1/altro_2/6/nbq9raax00ouddj4z0gar7agiaasj3asr8onagaxgjg7au.iuk.JaF 
    echo $? > ../out.4/exit.$cnt.out
    ls -Rl | awk '{if (NF <= 1) print; else if (NF > 2) print $1, $2, $5, ($(NF - 1) == "->"? ($(NF - 2)" "$(NF - 1)" "$(NF)) : $NF)}' | LC_ALL=C sort >  ../out.4/arriving.$cnt.files
    ((cnt++))
    exec 1> ../out.4/1.$cnt.out
    exec 2> ../out.4/2.$cnt.out
    exec 3> ../out.4/3.$cnt.out
    exec 4> ../out.4/4.$cnt.out
    exec 5> ../out.4/5.$cnt.out
    bash ../1.sh $opt -o ../out.4/output.2.$cnt.csv  ./0/11 ./0/1/altro_2/4/ ./0/1/altro_2/dir_5/ ./0/1/dir_7 ./0/1/dir_7/8 ./0/1/dir_7/9/ ./0/altro_11/ ./0/altro_11/14/  ./0/1/altro_2/4/altro_12  ./0/1/altro_2/41  ./0/1/altro_2/4/au3makdhs.2a2gg6h.d.jfsaf ./0/1/altro_2/6/yanhb4afojodaaag0bu66aazn7oaanaardja.adas  ./0/1/dir_71  ./0/1/dir_7/.ahay8hxaakj8yfaaayda2jh0ggjakzaasaaxaaaakbjf95a.adas.gGyW ./0/1/altro_2/6/.axarafaa.5.z2z.R2R ./0/1/altro_2/dir_5/ayh.f6wgajafaagaaaaabxa4daaaaaxja1a50aaaxarganb.aaa ./0/altro_11/sraw8ygafaaaa7z.adkx8ksdh.aaa.log ./0/1/altro_2/6/nbq9raax00ouddj4z0gar7agiaasj3asr8onagaxgjg7au.iuk.JaF 
    echo $? > ../out.4/exit.$cnt.out
    ls -Rl | awk '{if (NF <= 1) print; else if (NF > 2) print $1, $2, $5, ($(NF - 1) == "->"? ($(NF - 2)" "$(NF - 1)" "$(NF)) : $NF)}' | LC_ALL=C sort >  ../out.4/arriving.$cnt.files
done
((cnt++))
exec 1> ../out.4/1.$cnt.out
exec 2> ../out.4/2.$cnt.out
exec 3> ../out.4/3.$cnt.out
exec 4> ../out.4/4.$cnt.out
exec 5> ../out.4/5.$cnt.out
bash ../1.sh $opt -e
echo $? > ../out.4/exit.$cnt.out
    ls -Rl | awk '{if (NF <= 1) print; else if (NF > 2) print $1, $2, $5, ($(NF - 1) == "->"? ($(NF - 2)" "$(NF - 1)" "$(NF)) : $NF)}' | LC_ALL=C sort >  ../out.4/arriving.$cnt.files
((cnt++))
exec 1> ../out.4/1.$cnt.out
exec 2> ../out.4/2.$cnt.out
exec 3> ../out.4/3.$cnt.out
exec 4> ../out.4/4.$cnt.out
exec 5> ../out.4/5.$cnt.out
bash ../1.sh $opt -e logloglog
echo $? > ../out.4/exit.$cnt.out
    ls -Rl | awk '{if (NF <= 1) print; else if (NF > 2) print $1, $2, $5, ($(NF - 1) == "->"? ($(NF - 2)" "$(NF - 1)" "$(NF)) : $NF)}' | LC_ALL=C sort >  ../out.4/arriving.$cnt.files
