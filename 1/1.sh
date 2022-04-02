#!/usr/bin/bash


#dichiaro delle variabili globali
script_name=$0

mandaErr=false;


eflag=false;
oflag=false;    #dove scrivere. Se è false allora è standard output
hflag=false;
lflag=false;    #per tutti i file che sono hard link allo stesso file, bisogna considerare solo quello con il nome lessicograficamente 
                #minore, tenendo conto dell'intero path relativo della directory di data come argomento



#################


function main () {
    check $@;
    ignoreDir $@;


    for dir in ${d[*]}; #la variabile d ha tutte le directory passate come argomento
    do

    ###################     CONTROLLO I REQUISITI PUNTATI     ######################

  #  if [ -L $dir ]; then temp=$dir; dir=`readlink -f $dir`; fi; 
    
    currDir=$dir;

    arrayTuttiIFile=`find $dir` # Qui prendo ogni file/directory partendo dalla dir corrente


    arrayTuttiIFile=`find $dir` # Qui prendo ogni file/directory partendo dalla dir corrente



   # echo "$dir"
    #echo "${arrayTuttiIFile[@]}"
    

    for i in ${arrayTuttiIFile[@]}; do  #
        #echo 'ciao'
       
        #echo "$i"
        #echo "${arrayTuttiIFile[i]}";
            
            x=$((x+1))
    done;    


  #  echo "${arrayTuttiIFile[@]}"
    


    #DEVO POTER CONTROLLARE SE RIESCO A TROVARE UN SYMLINK

    ignoraLinkSimbolici;


    done;
    

}



risolvi_link(){
    fullPath=$1
    fullPath=$(readlink -f $fullPath)
    if [ -f $fullPath ] || [ -d $fullPath ] ; then
        echo $fullPath
    else
        echo ""
    fi
}



function ignoraLinkSimbolici() {

   for item in "${arrayTuttiIFile[@]}"; do

       echo "${item}"



        if [ -L $item ]; then
            echo "link"
        fi
        
       

   done
   
}






function check() {
    for val in $@; do
        if ! [[ ${val:0:1} == "-" ]]; then
            break;
        fi;
        opts+=("$val")    
    done;


      while getopts ":hle:o:" opt;  #con : ammazzo gli errori e ottengo ? mentre col : dopo le opzioni significa che aspetto un argomento
    do
        #opts+=("-$opt")
        case $opt in
            l)
                lflag=true; #Contare la dimensione effettiva dei softlink se -l è stato dato, altrimenti solo la dim del file puntato. Aggiungere controllo in ignoreDir che sfrutta lflag
                ;;
            h)
                hflag=true; 
                ;;
            o)
                valueOptiono="${OPTARG}"; 
                opts+=("${OPTARG}");
                oflag=true;
                ;;
            e)  ##estensione dei file boh.e
                valueOptione="${OPTARG}";
                opts+=("${OPTARG}");
                eflag=true; 
                ;;
            \?)
                mandaErr=true; 
                ;;
            :)
                mandaErr=true;
                ;;
        esac
    done

    shift $((OPTIND - 1)); 

    for dir in $@; do opts+=($dir); done
    echo "Eseguito con opzioni ${opts[*]}"

    [[ -z "$valueOptione" ]] && valueOptione="log"  #se valueOptione è vuoto (-z) allora la condizione è soddisfatta ed esegui la seconda opzione
    
    


    if $lflag && $hflag
    then
        echo "Non e' possibile dare contemporaneamente -l e -h" >&2;
        sendError;  
    fi
    if $mandaErr; then 
        sendError; 
    fi;

}

function sendError() {
    echo "Uso: $script_name [-h] [-l] [-s string] [-o file] [dirs]," 1>&2;
    exit 10
}


function permessiWX() {
    #echo `stat -c %a $1`   [-d][rwx]{3}[w][xs][r-][w][xt]
    #check='[0-7][04][04]'    -rwxrwsr-x
    #echo $1;


    
    if [[ `stat -c %a $1` =~ [0-7]?[0-7][37][37] ]];
    then
        return 1;
    else
        return 0;
    fi
}





function ignoreDir() {
    fd3=(); indexfd3=0;
    fd4=(); indexfd4=0;
    fd5=(); indexfd5=0;
    shift $((OPTIND -1));

    if [ $# -eq 0 ]; 
    then

        d[0]="."; # d è l'array con le directory passate allo script

    else 
        j=0;
        #n=$#;
        for i in $@
        do
            if [ ! -e $i ];
            then
                status=$(($status + 1));
                fd3[$indexfd3]="L'argomento $i non esiste" >&3 #Aggiungere in un array e poi sortarlo e mandarlo su file descriptor 3 con >&3
                indexfd3=$((indexfd3 + 1))
            elif [[ -L $i && ! -d `readlink -f $i` ]]; # Se è un link simbolico, ma non punta ad una directory
            then
                status=$(($status + 1));
                fd4[$indexfd4]="L'argomento $i non e' una directory" >&4 #Mandare su File descriptor 4
                indexfd4=$((indexfd4 + 1))
            
            elif [[ ! -d $i && ! -L $i ]]; # Se non è né un link simbolico, né una directory
            then
                status=$(($status + 1));
                fd4[$indexfd4]="L'argomento $i non e' una directory" >&4 #Mandare su File descriptor 4
                indexfd4=$((indexfd4 + 1))
            
            elif permessiWX `readlink -f $i`;
            then
                status=$(($status + 1));
                toCheck=`readlink -f $i`
                perm=`stat -c %a $toCheck`
                if [ ${#perm} = 3 ];
                then
                    fd5[$indexfd5]="I permessi 0$perm dell'argomento $i non sono quelli richiesti" >&5 #Mandare su File descriptor 5
                    indexfd5=$((indexfd5 + 1))
                else
                    fd5[$indexfd5]="I permessi $perm dell'argomento $i non sono quelli richiesti" >&5 
                    indexfd5=$((indexfd5 + 1))
                fi
            else
                d[j]=$i;
                j+=1;
            fi
        done
        

        IFS=$'\n' sortedFD3=($(sort -r <<<"${fd3[*]}"));
        IFS=$'\n' sortedFD4=($(sort -r <<<"${fd4[*]}"));
        IFS=$'\n' sortedFD5=($(sort -r <<<"${fd5[*]}"));
        
        unset IFS;

        for i in "${sortedFD3[@]}"; do
            echo $i >&3
        done;
        for i in "${sortedFD4[@]}"; do
            echo $i >&4
        done;
        for i in "${sortedFD5[@]}"; do
            echo $i >&5
        done;
    fi
}



main $@


echo 'finito'

