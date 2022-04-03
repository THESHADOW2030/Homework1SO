umask 0000
test -f 1.sh || { echo "Manca il file 1.sh" 1>&2; exit; }
egrep -q 'python|java|perl|gcc' 1.sh && { echo "Il file 1.sh usa qualche comando proibito" 1>&2; exit; }
cd inp.1
cnt=0
for opt in "" "-l" "-h" "-l -h" "-lh"
do
    ((cnt++))
    exec 1> ../out.1/1.$cnt.out
    exec 2> ../out.1/2.$cnt.out
    exec 3> ../out.1/3.$cnt.out
    exec 4> ../out.1/4.$cnt.out
    exec 5> ../out.1/5.$cnt.out
    bash ../1.sh $opt  ./0/dir_2 ./0/1/4 ./0/altro_5/ ./0/dir_2/altro_6 ./0/dir_2/altro_8/ ./0/altro_11/  ./0/3  ./0/altro_5/9/h274rx0adaa7fqa7iamaard.idago.JBhIK ./0/3/ka8.agaauawfxdj.f7fafu3aaaaaajfna4y2aaz7.aaa ./0/3/altro_10/aadkaag1agia1yz2ahnga7adyahfr9.aaa.log ./0/3/altro_10/afaa75.aag4awg0fhkfjnga0asab7bdobaaauaojjbaks3.aza ./0/altro_5/daad6afaoxdsd7as12fhdzf.azaad ./0/3/13  ./0/3/11hjfaiqaqugjaas72.xsa3aaduf4ba.idago.JBhIK ./0/dir_2/altro_8/ydaa1da.ha80ss6dd962xk6y8.aaa.log ./0/3/altro_10/gkdaasa91aan0.7g4hdaagjnuaajaa.azaad.pRxwd 
    echo $? > ../out.1/exit.$cnt.out
    ls -Rl | awk '{if (NF <= 1) print; else if (NF > 2) print $1, $2, $5, ($(NF - 1) == "->"? ($(NF - 2)" "$(NF - 1)" "$(NF)) : $NF)}' | LC_ALL=C sort >  ../out.1/arriving.$cnt.files
    ((cnt++))
    exec 1> ../out.1/1.$cnt.out
    exec 2> ../out.1/2.$cnt.out
    exec 3> ../out.1/3.$cnt.out
    exec 4> ../out.1/4.$cnt.out
    exec 5> ../out.1/5.$cnt.out
    bash ../1.sh $opt -e JBhIK  ./0/dir_2 ./0/1/4 ./0/altro_5/ ./0/dir_2/altro_6 ./0/dir_2/altro_8/ ./0/altro_11/  ./0/3  ./0/altro_5/9/h274rx0adaa7fqa7iamaard.idago.JBhIK ./0/3/ka8.agaauawfxdj.f7fafu3aaaaaajfna4y2aaz7.aaa ./0/3/altro_10/aadkaag1agia1yz2ahnga7adyahfr9.aaa.log ./0/3/altro_10/afaa75.aag4awg0fhkfjnga0asab7bdobaaauaojjbaks3.aza ./0/altro_5/daad6afaoxdsd7as12fhdzf.azaad ./0/3/13  ./0/3/11hjfaiqaqugjaas72.xsa3aaduf4ba.idago.JBhIK ./0/dir_2/altro_8/ydaa1da.ha80ss6dd962xk6y8.aaa.log ./0/3/altro_10/gkdaasa91aan0.7g4hdaagjnuaajaa.azaad.pRxwd 
    echo $? > ../out.1/exit.$cnt.out
    ls -Rl | awk '{if (NF <= 1) print; else if (NF > 2) print $1, $2, $5, ($(NF - 1) == "->"? ($(NF - 2)" "$(NF - 1)" "$(NF)) : $NF)}' | LC_ALL=C sort >  ../out.1/arriving.$cnt.files
    ((cnt++))
    exec 1> ../out.1/1.$cnt.out
    exec 2> ../out.1/2.$cnt.out
    exec 3> ../out.1/3.$cnt.out
    exec 4> ../out.1/4.$cnt.out
    exec 5> ../out.1/5.$cnt.out
    bash ../1.sh $opt -e JBhIK -o ../out.1/output.1.$cnt.csv  ./0/dir_2 ./0/1/4 ./0/altro_5/ ./0/dir_2/altro_6 ./0/dir_2/altro_8/ ./0/altro_11/  ./0/3  ./0/altro_5/9/h274rx0adaa7fqa7iamaard.idago.JBhIK ./0/3/ka8.agaauawfxdj.f7fafu3aaaaaajfna4y2aaz7.aaa ./0/3/altro_10/aadkaag1agia1yz2ahnga7adyahfr9.aaa.log ./0/3/altro_10/afaa75.aag4awg0fhkfjnga0asab7bdobaaauaojjbaks3.aza ./0/altro_5/daad6afaoxdsd7as12fhdzf.azaad ./0/3/13  ./0/3/11hjfaiqaqugjaas72.xsa3aaduf4ba.idago.JBhIK ./0/dir_2/altro_8/ydaa1da.ha80ss6dd962xk6y8.aaa.log ./0/3/altro_10/gkdaasa91aan0.7g4hdaagjnuaajaa.azaad.pRxwd 
    echo $? > ../out.1/exit.$cnt.out
    ls -Rl | awk '{if (NF <= 1) print; else if (NF > 2) print $1, $2, $5, ($(NF - 1) == "->"? ($(NF - 2)" "$(NF - 1)" "$(NF)) : $NF)}' | LC_ALL=C sort >  ../out.1/arriving.$cnt.files
    ((cnt++))
    exec 1> ../out.1/1.$cnt.out
    exec 2> ../out.1/2.$cnt.out
    exec 3> ../out.1/3.$cnt.out
    exec 4> ../out.1/4.$cnt.out
    exec 5> ../out.1/5.$cnt.out
    bash ../1.sh $opt -o ../out.1/output.2.$cnt.csv  ./0/dir_2 ./0/1/4 ./0/altro_5/ ./0/dir_2/altro_6 ./0/dir_2/altro_8/ ./0/altro_11/  ./0/3  ./0/altro_5/9/h274rx0adaa7fqa7iamaard.idago.JBhIK ./0/3/ka8.agaauawfxdj.f7fafu3aaaaaajfna4y2aaz7.aaa ./0/3/altro_10/aadkaag1agia1yz2ahnga7adyahfr9.aaa.log ./0/3/altro_10/afaa75.aag4awg0fhkfjnga0asab7bdobaaauaojjbaks3.aza ./0/altro_5/daad6afaoxdsd7as12fhdzf.azaad ./0/3/13  ./0/3/11hjfaiqaqugjaas72.xsa3aaduf4ba.idago.JBhIK ./0/dir_2/altro_8/ydaa1da.ha80ss6dd962xk6y8.aaa.log ./0/3/altro_10/gkdaasa91aan0.7g4hdaagjnuaajaa.azaad.pRxwd 
    echo $? > ../out.1/exit.$cnt.out
    ls -Rl | awk '{if (NF <= 1) print; else if (NF > 2) print $1, $2, $5, ($(NF - 1) == "->"? ($(NF - 2)" "$(NF - 1)" "$(NF)) : $NF)}' | LC_ALL=C sort >  ../out.1/arriving.$cnt.files
done
((cnt++))
exec 1> ../out.1/1.$cnt.out
exec 2> ../out.1/2.$cnt.out
exec 3> ../out.1/3.$cnt.out
exec 4> ../out.1/4.$cnt.out
exec 5> ../out.1/5.$cnt.out
bash ../1.sh $opt -e
echo $? > ../out.1/exit.$cnt.out
    ls -Rl | awk '{if (NF <= 1) print; else if (NF > 2) print $1, $2, $5, ($(NF - 1) == "->"? ($(NF - 2)" "$(NF - 1)" "$(NF)) : $NF)}' | LC_ALL=C sort >  ../out.1/arriving.$cnt.files
((cnt++))
exec 1> ../out.1/1.$cnt.out
exec 2> ../out.1/2.$cnt.out
exec 3> ../out.1/3.$cnt.out
exec 4> ../out.1/4.$cnt.out
exec 5> ../out.1/5.$cnt.out
bash ../1.sh $opt -e logloglog
echo $? > ../out.1/exit.$cnt.out
    ls -Rl | awk '{if (NF <= 1) print; else if (NF > 2) print $1, $2, $5, ($(NF - 1) == "->"? ($(NF - 2)" "$(NF - 1)" "$(NF)) : $NF)}' | LC_ALL=C sort >  ../out.1/arriving.$cnt.files
