BEGIN{



    count=length(ARGV)
    fileConfigurazione = ARGV[1]

    months = "Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec"
    split(months, monthsArray, " ")
    
    
    for (i = 1; i<= length(monthsArray) ; i++ ) {

        monthsConfronto[monthsArray[i]] = 13 - i
     #   print monthsConfronto["Feb"]
        
    }

    days = "Mon Tue Wed Thu Fri Sat Sun"
    split(days, daysArray, " ")

    for (i = 1; i<= length(daysArray) ; i++ ) {

        daysConfronto[daysArray[i]] = 7 - i
        
    }

    #TODO PER FACILITARE I CONFRONTI CON GLI ARRAY SOPRA, IMPLEMENTARLI ANCHE ASSOCIATIVI. array[mon] < array[tue] e array[mon] = 1 e array[tue] = 2


    toDay=""
    toDayCifra=""
    toMonth=""
    toMonthCifra=""
    toYear="2022"
    toHour=""
    toMs=""


    fromDay=""
    fromDayCifra=""
    fromMonth=""
    fromMonthCifra=""
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
        exit 10;
    }
}



FILENAME == ARGV[1] {   #parso lo script di configurazione

    #print "fle 1"
    #print "stgop"

        if($1 ~ "from=*"){
       #     print "Sto esenguendo il from", $1
            if(fromString == ""){
                fromString = $0
                split($0, fromArray, "=")
            #    print "from array ha valore "fromArray[2]




                split(fromArray[2], fromArray2, "[ /]")
              #      print length(fromArray2)

                for (k=1; k<= length(fromArray2) ; k++ ) {
                #    print fromArray2[k]
                    
                }

                for (j = 1; j <= length(daysArray) ; j++ ){ #caso in cui inizia col giorno
                   # print daysArray[j]
                    #print fromArray2[1]                   
                    if (daysArray[j] == fromArray2[1]) {
                      #  print daysArray[1] == fromArray2[1]

                        fromDay = fromArray2[1]
                        fromMonth = fromArray2[2]
                        fromDayCifra = fromArray2[3]
                        fromHour = fromArray2[4]
                        break;
                    }
                }

                for (j = 1; j <= length(monthsArray) ; j++ ){   #caso in cui inizia con il mese

                    if (monthsArray[j] == fromArray2[1]) {

                        fromMonth = fromArray2[1]
                        fromDayCifra = fromArray2[2]
                        fromHour = fromArray2[3]
                        break;
                    }                    

                }

                if(fromArray2[1]"" ~ "[0-9][0-9][0-9][0-9]"){   #caso che inizia con l'anno
                    fromYear = fromArray2[1]
                    fromMonthCifra=fromArray2[2]
                    fromDayCifra = fromArray2[3]

               #     print fromArray2[4]
                    
                    if(fromArray2[4]""  ~ "[0-9][0-9]:[0-9][0-9]:[0-9][0-9]\."){ #caso in cui sono presenti i ms
                        split(fromArray2[4], arrayOra, ".")
                 #       print "sto nel if" arrayOra[1] " " arrayOra[2]
                        fromHour = arrayOra[1]
                        fromMs = arrayOra[2]

                    }else{              #caso senza ms
                 #       print "sto nel else"
                        split(fromArray2[4], arrayOra, ".")
                        fromHour = arrayOra[1]
                    }
                    
                }
                          
                  
            }
            
            

        } else if($1 ~ "to=*"){
       #     print "sto eseguendo il to", $1
            if (toString == "") {

                toString = $0
                split($0, toArray, "=")
            #    print "to array ha valore "toArray[2]




                split(toArray[2], toArray2, "[ /]")
              #      print length(toArray2)

                for (k=1; k<= length(toArray2) ; k++ ) {
                #    print toArray2[k]
                    
                }

                for (j = 1; j <= length(daysArray) ; j++ ){ #caso in cui inizia col giorno
                   # print daysArray[j]
                    #print toArray2[1]                   
                    if (daysArray[j] == toArray2[1]) {
                      #  print daysArray[1] == toArray2[1]

                        toDay = toArray2[1]
                        toMonth = toArray2[2]
                        toDayCifra = toArray2[3]
                        toHour = toArray2[4]
                        break;
                    }
                }

                for (j = 1; j <= length(monthsArray) ; j++ ){   #caso in cui inizia con il mese

                    if (monthsArray[j] == toArray2[1]) {

                        toMonth = toArray2[1]
                        toDayCifra = toArray2[2]
                        toHour = toArray2[3]
                        break;
                    }                    

                }

                if(toArray2[1]"" ~ "[0-9][0-9][0-9][0-9]"){   #caso che inizia con l'anno
                    toYear = toArray2[1]
                    toMonthCifra=toArray2[2]
                    toDayCifra = toArray2[3]

                   # print toArray2[4]
                    
                    if(toArray2[4]""  ~ "[0-9][0-9]:[0-9][0-9]:[0-9][0-9]\."){ #caso in cui sono presenti i ms
                        split(toArray2[4], arrayOra, ".")
                     #   print "sto nel if " arrayOra[1] " " arrayOra[2]
                        toHour = arrayOra[1]
                        toMs = arrayOra[2]

                    }else{              #caso senza ms
                     #   print "sto nel else"
                        split(toArray2[4], arrayOra, ".")
                        toHour = arrayOra[1]
                    }
                    
                }
             #   print "I valori nel TO sono", toYear, toMonthCifra, toDayCifra, toHour, toMs   
                
            }
            

        } else if($1 ~ "text=*"){
     #       print "sto eseguendo il text", $1
            if(textString==""){
                textString = $1
                split($1, textArray, "=")
                testoContenuto = textArray[2]
                
            }
        }
}

FILENAME != ARGV[1] {   #per ogni file, verrà eseguito per tutte le righe.




   

  #  ciao = ""
   # b = "acsaf"
   # ciao = ciao "" b

    #print ciao

   # print  ("22" == "21")
    ao = "0";
    riga = $0

    rigaYear = "2022"
    rigaTesto = ""

  #  print ("12:32:23" > "21:49:09")


    if(riga ~ "[0-9][0-9][0-9][0-9]/"){
      #  print riga         IDEA: splitto per / e lavoro su un ulteriore splitting dentro un if. In questo modo non mi si sfasano gli indici di 1


        split(riga, arrayNuovo, "[/ ]")

        rigaYear = arrayNuovo[1]
        rigaMonthCifra = arrayNuovo[2]
        rigaDayCifra = arrayNuovo[3]

        

        if(riga ~ "[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\."){ #non è sbagliata
          #  print riga

            split(arrayNuovo[4], temp, ".")
            #print arrayNuovo[4]
            rigaHour = temp[1]
            rigaMs = temp[2]
            tipo = "4"
        #    print temp[1] " " temp[2]

        }else{

           
           rigaHour = arrayNuovo[4]
           tipo = "3"
       #    print rigaHour
        }



    } else{


        split(riga, rigaArray, " ")

        for (i = 1; i <= length(months) ; i++ ) {
            
            if(rigaArray[1]"" == monthsArray[i]""){
                rigaMonth = rigaArray[1]
                rigaDayCifra = rigaArray[2]
                rigaHour = rigaArray[3]

                tipo = "2"
            }
            
        }

        for(i = 1; i<= length(daysArray); i++){

            if(rigaArray[1] == daysArray[i]){
                rigaDay = rigaArray[1]
                rigaMonth = rigaArray[2]
                rigaDayCifra = rigaArray[3]
                rigaHour = rigaArray[4]
                tipo= "1"

                for (l = 5; l<=length(rigaArray) ;l++ ) {

                    rigaTesto = rigaTesto "" rigaArray[l]
                    
                }


               # print "" rigaDay, rigaMonth, rigaDayCifra, rigaHour
            }


        }

    }
  #  print "" rigaMonth, rigaDayCifra, rigaHour


                          #1..n 
    #uso un diz[nomeFile][riga] = valore
    rigaTesto = ""
 #   print rigaTesto
    if (tipo == "1"){
        check1 = 0  #ho incontrato abbastanza spazi bianchi
        check2 = 0  #ho incontrato abbastanza caratteri totali
        split($0, testoTemp,"")  
        for(p = 1; p<=length(testoTemp); p++){

            check1+=1
          #  print check1

            if (check1 >19){
                    check2 = 1;
            }
            if (check2 == 1){
                rigaTesto = rigaTesto "" testoTemp[p]
            }
        }
    
    
    
    
    print rigaTesto 
    if (("2022">= fromYear or fromYear=="") and ("2022" <= toYear or toYear == "")){
        if((fromMonth == "" or monthsConfronto[fromMonth]<= monthsConfronto[rigaMonth]) and (toMonth ==""  or monthsConfronto[rigaMonth]<= monthsConfronto[toMonth])){
            if((fromHour="" or fromHour<= rigaHour) and (toHour == "" or toHour>= rigaHour)){
              #test del contenuto

                var = "daddu"
                print (rigaTesto ~ testoContenut)
            }
        }
     }
    

    }
    #print testoContenuto
}


