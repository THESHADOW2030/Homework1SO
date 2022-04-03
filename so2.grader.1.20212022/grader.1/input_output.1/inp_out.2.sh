umask 0000
test -f 1.sh || { echo "Manca il file 1.sh" 1>&2; exit; }
egrep -q 'python|java|perl|gcc' 1.sh && { echo "Il file 1.sh usa qualche comando proibito" 1>&2; exit; }
cd inp.2
cnt=0
for opt in "" "-l" "-h" "-l -h" "-lh"
do
    ((cnt++))
    exec 1> ../out.2/1.$cnt.out
    exec 2> ../out.2/2.$cnt.out
    exec 3> ../out.2/3.$cnt.out
    exec 4> ../out.2/4.$cnt.out
    exec 5> ../out.2/5.$cnt.out
    bash ../1.sh $opt  ./0/dir_5 ./0/2/dir_7 ./0/dir_1/8/ ./0/21 ./0/12 ./0/2/13  ./0/dir_1/3/dir_10  ./0/2/dir_9/7hayhdda8g0ad4ayok.1ixa.1JSu ./0/2/dir_7/o2j7sg8shyahm1a9azayaaaza1aagar4.qqid.LLJB ./0/2/adddayfn9aydaiga9auagdrh.aaa.log ./0/dir_1/5amafsaaa9gddhukfgw6agr7jwhhoaqfdazadaqn.aaa.log ./0/dir_1/aaada2a9ak8ka9fakaak.aadkfo4gh5.aaa.log ./0/dir_1/3/dir_10/9agyay5aa1g5a.aa8zaa2suajs.qqid ./0/dir_1/3/dir_10/uaaraxj9w9araa5af8d2kaabamgaoaajau12midj6kjyfa.qqid.LLJB ./0/2/6/a54jdgsfd93a.ya32 ./0/dir_1/dir_4/qz2afayfdb.qqid.LLJB ./0/2/13/mayg6agasaa.qqid  ./0/2/dir_9/raadbaoaaaaag4ajkakbaasas8ajrsaaaaawksznsaqagay.aaa.log ./0/2/13/wiwk0n94aafuaq.aaa 
    echo $? > ../out.2/exit.$cnt.out
    ls -Rl | awk '{if (NF <= 1) print; else if (NF > 2) print $1, $2, $5, ($(NF - 1) == "->"? ($(NF - 2)" "$(NF - 1)" "$(NF)) : $NF)}' | LC_ALL=C sort >  ../out.2/arriving.$cnt.files
    ((cnt++))
    exec 1> ../out.2/1.$cnt.out
    exec 2> ../out.2/2.$cnt.out
    exec 3> ../out.2/3.$cnt.out
    exec 4> ../out.2/4.$cnt.out
    exec 5> ../out.2/5.$cnt.out
    bash ../1.sh $opt -e 1JSu  ./0/dir_5 ./0/2/dir_7 ./0/dir_1/8/ ./0/21 ./0/12 ./0/2/13  ./0/dir_1/3/dir_10  ./0/2/dir_9/7hayhdda8g0ad4ayok.1ixa.1JSu ./0/2/dir_7/o2j7sg8shyahm1a9azayaaaza1aagar4.qqid.LLJB ./0/2/adddayfn9aydaiga9auagdrh.aaa.log ./0/dir_1/5amafsaaa9gddhukfgw6agr7jwhhoaqfdazadaqn.aaa.log ./0/dir_1/aaada2a9ak8ka9fakaak.aadkfo4gh5.aaa.log ./0/dir_1/3/dir_10/9agyay5aa1g5a.aa8zaa2suajs.qqid ./0/dir_1/3/dir_10/uaaraxj9w9araa5af8d2kaabamgaoaajau12midj6kjyfa.qqid.LLJB ./0/2/6/a54jdgsfd93a.ya32 ./0/dir_1/dir_4/qz2afayfdb.qqid.LLJB ./0/2/13/mayg6agasaa.qqid  ./0/2/dir_9/raadbaoaaaaag4ajkakbaasas8ajrsaaaaawksznsaqagay.aaa.log ./0/2/13/wiwk0n94aafuaq.aaa 
    echo $? > ../out.2/exit.$cnt.out
    ls -Rl | awk '{if (NF <= 1) print; else if (NF > 2) print $1, $2, $5, ($(NF - 1) == "->"? ($(NF - 2)" "$(NF - 1)" "$(NF)) : $NF)}' | LC_ALL=C sort >  ../out.2/arriving.$cnt.files
    ((cnt++))
    exec 1> ../out.2/1.$cnt.out
    exec 2> ../out.2/2.$cnt.out
    exec 3> ../out.2/3.$cnt.out
    exec 4> ../out.2/4.$cnt.out
    exec 5> ../out.2/5.$cnt.out
    bash ../1.sh $opt -e 1JSu -o ../out.2/output.1.$cnt.csv  ./0/dir_5 ./0/2/dir_7 ./0/dir_1/8/ ./0/21 ./0/12 ./0/2/13  ./0/dir_1/3/dir_10  ./0/2/dir_9/7hayhdda8g0ad4ayok.1ixa.1JSu ./0/2/dir_7/o2j7sg8shyahm1a9azayaaaza1aagar4.qqid.LLJB ./0/2/adddayfn9aydaiga9auagdrh.aaa.log ./0/dir_1/5amafsaaa9gddhukfgw6agr7jwhhoaqfdazadaqn.aaa.log ./0/dir_1/aaada2a9ak8ka9fakaak.aadkfo4gh5.aaa.log ./0/dir_1/3/dir_10/9agyay5aa1g5a.aa8zaa2suajs.qqid ./0/dir_1/3/dir_10/uaaraxj9w9araa5af8d2kaabamgaoaajau12midj6kjyfa.qqid.LLJB ./0/2/6/a54jdgsfd93a.ya32 ./0/dir_1/dir_4/qz2afayfdb.qqid.LLJB ./0/2/13/mayg6agasaa.qqid  ./0/2/dir_9/raadbaoaaaaag4ajkakbaasas8ajrsaaaaawksznsaqagay.aaa.log ./0/2/13/wiwk0n94aafuaq.aaa 
    echo $? > ../out.2/exit.$cnt.out
    ls -Rl | awk '{if (NF <= 1) print; else if (NF > 2) print $1, $2, $5, ($(NF - 1) == "->"? ($(NF - 2)" "$(NF - 1)" "$(NF)) : $NF)}' | LC_ALL=C sort >  ../out.2/arriving.$cnt.files
    ((cnt++))
    exec 1> ../out.2/1.$cnt.out
    exec 2> ../out.2/2.$cnt.out
    exec 3> ../out.2/3.$cnt.out
    exec 4> ../out.2/4.$cnt.out
    exec 5> ../out.2/5.$cnt.out
    bash ../1.sh $opt -o ../out.2/output.2.$cnt.csv  ./0/dir_5 ./0/2/dir_7 ./0/dir_1/8/ ./0/21 ./0/12 ./0/2/13  ./0/dir_1/3/dir_10  ./0/2/dir_9/7hayhdda8g0ad4ayok.1ixa.1JSu ./0/2/dir_7/o2j7sg8shyahm1a9azayaaaza1aagar4.qqid.LLJB ./0/2/adddayfn9aydaiga9auagdrh.aaa.log ./0/dir_1/5amafsaaa9gddhukfgw6agr7jwhhoaqfdazadaqn.aaa.log ./0/dir_1/aaada2a9ak8ka9fakaak.aadkfo4gh5.aaa.log ./0/dir_1/3/dir_10/9agyay5aa1g5a.aa8zaa2suajs.qqid ./0/dir_1/3/dir_10/uaaraxj9w9araa5af8d2kaabamgaoaajau12midj6kjyfa.qqid.LLJB ./0/2/6/a54jdgsfd93a.ya32 ./0/dir_1/dir_4/qz2afayfdb.qqid.LLJB ./0/2/13/mayg6agasaa.qqid  ./0/2/dir_9/raadbaoaaaaag4ajkakbaasas8ajrsaaaaawksznsaqagay.aaa.log ./0/2/13/wiwk0n94aafuaq.aaa 
    echo $? > ../out.2/exit.$cnt.out
    ls -Rl | awk '{if (NF <= 1) print; else if (NF > 2) print $1, $2, $5, ($(NF - 1) == "->"? ($(NF - 2)" "$(NF - 1)" "$(NF)) : $NF)}' | LC_ALL=C sort >  ../out.2/arriving.$cnt.files
done
((cnt++))
exec 1> ../out.2/1.$cnt.out
exec 2> ../out.2/2.$cnt.out
exec 3> ../out.2/3.$cnt.out
exec 4> ../out.2/4.$cnt.out
exec 5> ../out.2/5.$cnt.out
bash ../1.sh $opt -e
echo $? > ../out.2/exit.$cnt.out
    ls -Rl | awk '{if (NF <= 1) print; else if (NF > 2) print $1, $2, $5, ($(NF - 1) == "->"? ($(NF - 2)" "$(NF - 1)" "$(NF)) : $NF)}' | LC_ALL=C sort >  ../out.2/arriving.$cnt.files
((cnt++))
exec 1> ../out.2/1.$cnt.out
exec 2> ../out.2/2.$cnt.out
exec 3> ../out.2/3.$cnt.out
exec 4> ../out.2/4.$cnt.out
exec 5> ../out.2/5.$cnt.out
bash ../1.sh $opt -e logloglog
echo $? > ../out.2/exit.$cnt.out
    ls -Rl | awk '{if (NF <= 1) print; else if (NF > 2) print $1, $2, $5, ($(NF - 1) == "->"? ($(NF - 2)" "$(NF - 1)" "$(NF)) : $NF)}' | LC_ALL=C sort >  ../out.2/arriving.$cnt.files
