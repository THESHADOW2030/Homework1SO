umask 0000
test -f 1.sh || { echo "Manca il file 1.sh" 1>&2; exit; }
egrep -q 'python|java|perl|gcc' 1.sh && { echo "Il file 1.sh usa qualche comando proibito" 1>&2; exit; }
cd inp.5
cnt=0
for opt in "" "-l" "-h" "-l -h" "-lh"
do
    ((cnt++))
    exec 1> ../out.5/1.$cnt.out
    exec 2> ../out.5/2.$cnt.out
    exec 3> ../out.5/3.$cnt.out
    exec 4> ../out.5/4.$cnt.out
    exec 5> ../out.5/5.$cnt.out
    bash ../1.sh $opt  ./0/altro_1 ./0/dir_2 ./0/altro_1/3 ./0/altro_1/31   ./0/altro_1/dir_101  ./0/dir_2/6/xs8d3ysadaouydaajba40fdk8aj1nuxadoaufa.xagog.SpPKP ./0/dir_2/8/dir_9/ahs4aq37sfaxgararaaaddwga5bwaaaaagaayakadia.aaa ./0/dir_2/6/66addaaaakzkmnqdanaafhakad4afadkyd6ag1zd.ahsau ./0/altro_1/3/aadaajd6aa1n5gxafn.xagog.SpPKP ./0/altro_1/dir_10/11/arj5daxajaa4.rfafaaa2ddfakqagdqrrk0kzaagahuajds.xagog  ./0/dir_2/61  ./0/dir_2/6/7/oa4faaaafndard8f8saxksa.ahsau ./0/altro_1/3/gz9y0akqanaxqaamhya4aaa9aa1a3qqsadu09mfnaba6as.xagog.SpPKP ./0/altro_1/3/o9afa9sg17hhaga5s7jaw9rg5ijadjaahgnaaaawsah.uraaas.aaa ./0/altro_1/dir_10/araamfa7adqywar.aaa.log ./0/dir_2/6/fd2suaahaaayn6aadsy.iu.xagog ./0/altro_1/3/awaaa0adawam4ffaghhai4aahmaxuamaw.n5ka2 ./0/dir_2/8/dir_9/altro_13/jkqx89gsaf.xagog.SpPKP ./0/altro_1/dir_10/11/altro_121  
    echo $? > ../out.5/exit.$cnt.out
    ls -Rl | awk '{if (NF <= 1) print; else if (NF > 2) print $1, $2, $5, ($(NF - 1) == "->"? ($(NF - 2)" "$(NF - 1)" "$(NF)) : $NF)}' | LC_ALL=C sort >  ../out.5/arriving.$cnt.files
    ((cnt++))
    exec 1> ../out.5/1.$cnt.out
    exec 2> ../out.5/2.$cnt.out
    exec 3> ../out.5/3.$cnt.out
    exec 4> ../out.5/4.$cnt.out
    exec 5> ../out.5/5.$cnt.out
    bash ../1.sh $opt -e hENe  ./0/altro_1 ./0/dir_2 ./0/altro_1/3 ./0/altro_1/31   ./0/altro_1/dir_101  ./0/dir_2/6/xs8d3ysadaouydaajba40fdk8aj1nuxadoaufa.xagog.SpPKP ./0/dir_2/8/dir_9/ahs4aq37sfaxgararaaaddwga5bwaaaaagaayakadia.aaa ./0/dir_2/6/66addaaaakzkmnqdanaafhakad4afadkyd6ag1zd.ahsau ./0/altro_1/3/aadaajd6aa1n5gxafn.xagog.SpPKP ./0/altro_1/dir_10/11/arj5daxajaa4.rfafaaa2ddfakqagdqrrk0kzaagahuajds.xagog  ./0/dir_2/61  ./0/dir_2/6/7/oa4faaaafndard8f8saxksa.ahsau ./0/altro_1/3/gz9y0akqanaxqaamhya4aaa9aa1a3qqsadu09mfnaba6as.xagog.SpPKP ./0/altro_1/3/o9afa9sg17hhaga5s7jaw9rg5ijadjaahgnaaaawsah.uraaas.aaa ./0/altro_1/dir_10/araamfa7adqywar.aaa.log ./0/dir_2/6/fd2suaahaaayn6aadsy.iu.xagog ./0/altro_1/3/awaaa0adawam4ffaghhai4aahmaxuamaw.n5ka2 ./0/dir_2/8/dir_9/altro_13/jkqx89gsaf.xagog.SpPKP ./0/altro_1/dir_10/11/altro_121  
    echo $? > ../out.5/exit.$cnt.out
    ls -Rl | awk '{if (NF <= 1) print; else if (NF > 2) print $1, $2, $5, ($(NF - 1) == "->"? ($(NF - 2)" "$(NF - 1)" "$(NF)) : $NF)}' | LC_ALL=C sort >  ../out.5/arriving.$cnt.files
    ((cnt++))
    exec 1> ../out.5/1.$cnt.out
    exec 2> ../out.5/2.$cnt.out
    exec 3> ../out.5/3.$cnt.out
    exec 4> ../out.5/4.$cnt.out
    exec 5> ../out.5/5.$cnt.out
    bash ../1.sh $opt -e hENe -o ../out.5/output.1.$cnt.csv  ./0/altro_1 ./0/dir_2 ./0/altro_1/3 ./0/altro_1/31   ./0/altro_1/dir_101  ./0/dir_2/6/xs8d3ysadaouydaajba40fdk8aj1nuxadoaufa.xagog.SpPKP ./0/dir_2/8/dir_9/ahs4aq37sfaxgararaaaddwga5bwaaaaagaayakadia.aaa ./0/dir_2/6/66addaaaakzkmnqdanaafhakad4afadkyd6ag1zd.ahsau ./0/altro_1/3/aadaajd6aa1n5gxafn.xagog.SpPKP ./0/altro_1/dir_10/11/arj5daxajaa4.rfafaaa2ddfakqagdqrrk0kzaagahuajds.xagog  ./0/dir_2/61  ./0/dir_2/6/7/oa4faaaafndard8f8saxksa.ahsau ./0/altro_1/3/gz9y0akqanaxqaamhya4aaa9aa1a3qqsadu09mfnaba6as.xagog.SpPKP ./0/altro_1/3/o9afa9sg17hhaga5s7jaw9rg5ijadjaahgnaaaawsah.uraaas.aaa ./0/altro_1/dir_10/araamfa7adqywar.aaa.log ./0/dir_2/6/fd2suaahaaayn6aadsy.iu.xagog ./0/altro_1/3/awaaa0adawam4ffaghhai4aahmaxuamaw.n5ka2 ./0/dir_2/8/dir_9/altro_13/jkqx89gsaf.xagog.SpPKP ./0/altro_1/dir_10/11/altro_121  
    echo $? > ../out.5/exit.$cnt.out
    ls -Rl | awk '{if (NF <= 1) print; else if (NF > 2) print $1, $2, $5, ($(NF - 1) == "->"? ($(NF - 2)" "$(NF - 1)" "$(NF)) : $NF)}' | LC_ALL=C sort >  ../out.5/arriving.$cnt.files
    ((cnt++))
    exec 1> ../out.5/1.$cnt.out
    exec 2> ../out.5/2.$cnt.out
    exec 3> ../out.5/3.$cnt.out
    exec 4> ../out.5/4.$cnt.out
    exec 5> ../out.5/5.$cnt.out
    bash ../1.sh $opt -o ../out.5/output.2.$cnt.csv  ./0/altro_1 ./0/dir_2 ./0/altro_1/3 ./0/altro_1/31   ./0/altro_1/dir_101  ./0/dir_2/6/xs8d3ysadaouydaajba40fdk8aj1nuxadoaufa.xagog.SpPKP ./0/dir_2/8/dir_9/ahs4aq37sfaxgararaaaddwga5bwaaaaagaayakadia.aaa ./0/dir_2/6/66addaaaakzkmnqdanaafhakad4afadkyd6ag1zd.ahsau ./0/altro_1/3/aadaajd6aa1n5gxafn.xagog.SpPKP ./0/altro_1/dir_10/11/arj5daxajaa4.rfafaaa2ddfakqagdqrrk0kzaagahuajds.xagog  ./0/dir_2/61  ./0/dir_2/6/7/oa4faaaafndard8f8saxksa.ahsau ./0/altro_1/3/gz9y0akqanaxqaamhya4aaa9aa1a3qqsadu09mfnaba6as.xagog.SpPKP ./0/altro_1/3/o9afa9sg17hhaga5s7jaw9rg5ijadjaahgnaaaawsah.uraaas.aaa ./0/altro_1/dir_10/araamfa7adqywar.aaa.log ./0/dir_2/6/fd2suaahaaayn6aadsy.iu.xagog ./0/altro_1/3/awaaa0adawam4ffaghhai4aahmaxuamaw.n5ka2 ./0/dir_2/8/dir_9/altro_13/jkqx89gsaf.xagog.SpPKP ./0/altro_1/dir_10/11/altro_121  
    echo $? > ../out.5/exit.$cnt.out
    ls -Rl | awk '{if (NF <= 1) print; else if (NF > 2) print $1, $2, $5, ($(NF - 1) == "->"? ($(NF - 2)" "$(NF - 1)" "$(NF)) : $NF)}' | LC_ALL=C sort >  ../out.5/arriving.$cnt.files
done
((cnt++))
exec 1> ../out.5/1.$cnt.out
exec 2> ../out.5/2.$cnt.out
exec 3> ../out.5/3.$cnt.out
exec 4> ../out.5/4.$cnt.out
exec 5> ../out.5/5.$cnt.out
bash ../1.sh $opt -e
echo $? > ../out.5/exit.$cnt.out
    ls -Rl | awk '{if (NF <= 1) print; else if (NF > 2) print $1, $2, $5, ($(NF - 1) == "->"? ($(NF - 2)" "$(NF - 1)" "$(NF)) : $NF)}' | LC_ALL=C sort >  ../out.5/arriving.$cnt.files
((cnt++))
exec 1> ../out.5/1.$cnt.out
exec 2> ../out.5/2.$cnt.out
exec 3> ../out.5/3.$cnt.out
exec 4> ../out.5/4.$cnt.out
exec 5> ../out.5/5.$cnt.out
bash ../1.sh $opt -e logloglog
echo $? > ../out.5/exit.$cnt.out
    ls -Rl | awk '{if (NF <= 1) print; else if (NF > 2) print $1, $2, $5, ($(NF - 1) == "->"? ($(NF - 2)" "$(NF - 1)" "$(NF)) : $NF)}' | LC_ALL=C sort >  ../out.5/arriving.$cnt.files
