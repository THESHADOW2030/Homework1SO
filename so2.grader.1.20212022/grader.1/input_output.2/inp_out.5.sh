umask 0000
cd inp.5/
test -f ../2.sh || { echo "Manca 2.sh"; exit 1; }
ln -sf ../2 || { echo "Manca 2"; exit 2; }
ln -sf ../appoggio || { echo "Manca appoggio"; exit 3; }
test -x ../appoggio || { echo "appoggio non e' eseguibile"; exit 4; }
egrep -q 'python|java|perl|gcc' ../2.sh && { echo "Il file 2.sh usa qualche comando proibito" 1>&2; exit 5; }
bash main.sh
ls -Rl | awk '{if (NF <= 1) print; else if (NF > 2) print $1, $2, $5, ($(NF - 1) == "->"? ($(NF - 2)" "$(NF - 1)" "$(NF)) : $NF)}' | LC_ALL=C sort >  ../out.5/arriving.files
