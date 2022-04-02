BEGIN{
    count=length(ARGV)
    fileConfigurazione = ARGV[1]

    months = "Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec"
    split(months, monthsArray, " ")

    days = "Mon Tue Wed Thu Fri Sat Sun"
    split(days, daysArray, " ")





    toDay=""
    toDayCifra=""
    toMonth=""
    toYear="2022"
    toHour=""
    toMs=""


    fromDay=""
    fromDayCifra=""
    fromMonth=""
    fromYear="2022"
    fromMs=""
    fromHour=""


    fromString=""
    toString=""
    textString=""

    stringaArgomenti =""
    
    for (i = 1; i < count ; i++ ) {
   #     print ARGV[i] 
        stringaArgomenti=stringaArgomenti" "ARGV[i] 

     #   print stringaArgomenti
    }
 #   print stringaArgomenti

    print "Eseguito con argomenti" stringaArgomenti;
   # print stringaArgomenti "ciao"
    if(count < 3) {
        print "Errore: dare almeno 2 file di input"
    #    exit 10;
    }
}



FILENAME == ARGV[1] {   #parso lo script di configurazione

    #print "fle 1"
    #print "stgop"

        if($1 ~ "from=*"){
            print "Sto esenguendo il from", $1
            if(fromString == ""){
                fromString = $1
                split($0, fromArray, "=")
                print fromArray[2]




                split(fromArray[2], fromArray2, "[. /]")
               #  print length(fromArray2)
                
                for (i = 1; i <= length(fromArray2); i++ ) {

                #    print fromArray2[i]

                    if (i == 1){

                        for (j = 1; j <= length(daysArray) ; j++ ){
                            print daysArray[j]
                            print fromArray2[1]

                            print daysArray[1] == fromArray[1]
                            if (dayArray[j] == fromArray2[i]) {

                               
                                fromDay = fromArray2[1]
                                fromMonth = fromArray2[2]
                                fromDayCifra = fromArray2[3]
                                fromHour = fromArray2[4]
                            }
                            
                        }

                    }
                    
                    
                }

                print fromDay, fromMonth, fromDayCifra, fromHour











                
            }
            
            

        } else if($1 ~ "to=*"){
            print "sto eseguendo il to", $1
            if (toString == "") {
                toString = $1
                split($1, toArray, "=")
                print toArray[2]
                
            }
            

        } else if($1 ~ "text=*"){
            print "sto eseguendo il text", $1
            if(textString==""){
                textString = $1
                split($1, textArray, "=")
                print textArray[2]
            }
        }
    




}