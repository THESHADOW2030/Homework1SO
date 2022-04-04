BEGIN{



    count=length(ARGV)
    fileConfigurazione = ARGV[1]

    months = "Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec"
    split(months, monthsArray, " ")
    
    cifraToLet["01"] = "Jan"
    cifraToLet["02"] = "Feb"
    cifraToLet["03"] = "Mar"
    cifraToLet["04"] = "Apr"
    cifraToLet["05"] = "May"
    cifraToLet["06"] = "Jun"
    cifraToLet["07"] = "Jul"
    cifraToLet["08"] = "Aug"
    cifraToLet["09"] = "Sep"
    cifraToLet["10"] = "Oct"
    cifraToLet["11"] = "Nov"
    cifraToLet["12"] = "Dec"













    checkTo = 1;
    checkFrom = 1;
    checkText = 1;

    for (i = 1; i<= length(monthsArray) ; i++ ) {

        monthsConfronto[monthsArray[i]] =  i
     #   print monthsConfronto["Feb"]
        
    }

    days = "Mon Tue Wed Thu Fri Sat Sun"
    split(days, daysArray, " ")

    for (i = 1; i<= length(daysArray) ; i++ ) {

        daysConfronto[daysArray[i]] = i
        
    }

    daysConfronto["01"] = 1
    daysConfronto["02"] = 2
    daysConfronto["03"] = 3
    daysConfronto["04"] = 4
    daysConfronto["05"] = 5
    daysConfronto["06"] = 6
    daysConfronto["07"] = 7
    daysConfronto["08"] = 8
    daysConfronto["09"] = 9
    daysConfronto["10"] = 10
    daysConfronto["11"] = 11
    daysConfronto["12"] = 12
    daysConfronto["13"] = 13
    daysConfronto["14"] = 14
    daysConfronto["15"] = 15
    daysConfronto["16"] = 16
    daysConfronto["17"] = 17
    daysConfronto["18"] = 18
    daysConfronto["19"] = 19
    daysConfronto["20"] = 20
    daysConfronto["21"] = 21
    daysConfronto["22"] = 22
    daysConfronto["23"] = 23
    daysConfronto["24"] = 24
    daysConfronto["25"] = 25
    daysConfronto["26"] = 26
    daysConfronto["27"] = 27
    daysConfronto["28"] = 28
    daysConfronto["29"] = 29
    daysConfronto["30"] = 30
    daysConfronto["31"] = 31
    
    
    

    


    

    #TODO PER FACILITARE I CONFRONTI CON GLI ARRAY SOPRA, IMPLEMENTARLI ANCHE ASSOCIATIVI. array[mon] < array[tue] e array[mon] = 1 e array[tue] = 2


    testoContenuto = ""

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
            checkFrom = 0;
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
                        fromDay = fromDayCifra
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
                    fromMonth = cifraToLet[fromMonthCifra]

               #     print fromArray2[4]
                    
                    if(fromArray2[4]""  ~ "[0-9][0-9]:[0-9][0-9]:[0-9][0-9]"){ #caso in cui sono presenti i ms
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
            checkTo = 0;
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
                    toMonth = cifraToLet[toMonthCifra]

                   # print toArray2[4]
                    
                    if(toArray2[4]""  ~ "[0-9][0-9]:[0-9][0-9]:[0-9][0-9]"){ #caso in cui sono presenti i ms
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
            checkText = 0;
          #  print "sto eseguendo il text", $0
            if(textString==""){
                textString = $0
                split($0, textArray, "=")
                testoContenuto = textArray[2]
             #   print  testoContenuto
            #    gsub(" ","", testoContenuto )
             #   print testoContenuto
                
            }
        }



        if (fromDayCifra != "" ){
            fromDay = fromDayCifra
        }
        if (toDayCifra != "" ){
            toDay = toDayCifra
        }
}

FILENAME != ARGV[1] {   #per ogni file, verrà eseguito per tutte le righe.




   
    rigaDay=""
    rigaDayCifra=""
    rigaHour=""
    rigaMonth=""
    rigaMonthCifra=""
    rigaMonthCifra=""
    rigaMs=""
    rigaYear="2022"
    rigaTesto=""
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
        rigaMonth = cifraToLet[rigaMonthCifra""]
        
        

        if(riga ~ "[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]"){ #non è sbagliata
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
                rigaYear="2022"
                tipo = "2"
            }
            
        }

        for(i = 1; i<= length(daysArray); i++){

            if(rigaArray[1] == daysArray[i]){
                rigaDay = rigaArray[1]
                rigaMonth = rigaArray[2]
                rigaDayCifra = rigaArray[3]
                rigaHour = rigaArray[4]
                rigaYear="2022"
                tipo= "1"

                for (l = 5; l<=length(rigaArray) ;l++ ) {

                    rigaTesto = rigaTesto "" rigaArray[l]
                    
                }


               # print "" rigaDay, rigaMonth, rigaDayCifra, rigaHour
            }


        }

    }
  #  print "" rigaMonth, rigaDayCifra, rigaHour

  if(rigaDayCifra != ""){
      rigaDay = rigaDayCifra
  }

    check2022 = 0;
                          #1..n 
    #uso un diz[nomeFile][riga] = valore
    rigaTesto = ""
 #   print rigaTesto
    if (tipo == "1"){
        check2022 = 1;
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
    }else if(tipo == "2"){
        check2022 = 1;
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

    }else if(tipo == "3"){

        check1 = 0  #ho incontrato abbastanza spazi bianchi
        check2 = 0  #ho incontrato abbastanza caratteri totali
        split($0, testoTemp,"")  
        for(p = 1; p<=length(testoTemp); p++){

            check1+=1
          #  print check1

            if (check1 >19 ){
                    check2 = 1;
            }
            if (check2 == 1){
                rigaTesto = rigaTesto "" testoTemp[p]
            }
        }

        
        
    }else if(tipo == "4"){
        split(rigaMs, tmp, "")
        numeroCifreMS = length(tmp) + 1
        check1 = 0  #ho incontrato abbastanza spazi bianchi
        check2 = 0  #ho incontrato abbastanza caratteri totali
        split($0, testoTemp,"")  
        for(p = 1; p<=length(testoTemp); p++){

            check1+=1
          #  print check1

            if (check1 >19 + numeroCifreMS){
                    check2 = 1;
            }
            if (check2 == 1){
                rigaTesto = rigaTesto "" testoTemp[p]
            }
        }

        
    }
    
  #  print ((FILENAME == "gtm7dy1786cmm2wksjqgn6yif8m1frxdt.5.zy.log") && ($0 ~ "YL4QXjtxWERZphwSJuLfDED.yw9K" ))

    if ((FILENAME == "gtm7dy1786cmm2wksjqgn6yif8m1frxdt.5.zy.log") && ($0 ~ "YL4QXjtxWERZphwSJuLfDED.yw9K" )){
           # print "ciao"
    }

    rigaTesto =  " "rigaTesto
    test = "fgyoxEuyzIsWD"

    if ($0 ~ test){
    #    print "ciao"
     

     #print rigaTesto ~ testoContenuto
     
  
     }
        

    
    



    if (toYear <= fromYear &&((!checkTo == 1) && (!checkFrom == 1))){

        if (toYear < fromYear){
            next
        }else{  #fromYear == toYear
        #    
        #    print monthsConfronto[fromMonth]
            if(monthsConfronto[toMonth] <= monthsConfronto[fromMonth]){
            #    print "ciao"
                if(monthsConfronto[toMonth] == monthsConfronto[fromMonth]){

                    if(daysConfronto[toDay] <= daysConfronto[fromDay]){

                        if(daysConfronto[toDay] == daysConfronto[fromDay]){

                            if (toHour < fromHour){
                                next
                            }
                            else{
                             #   print "Non funziona"
                            }
                        }
                        else{
                            
                            next
                        }

                    }
                
                }else {    #(monthsConfronto[toMonth] < monthsConfronto[fromYear])
                    next
                }

            }

        }
    }



    if (checkFrom && checkTo){
        if (checkText){
            print FILENAME": "  $0
            next

        }
        else{
            if (rigaTesto ~ testoContenuto || checkText){
               
               #if ($0 ~ "KPYswmL1On5UjisrxA.IGGRLfrQIprI3NbsFYeJmm4"){print "ciao"}
              print FILENAME": "  $0 
                next               
            }  
        }
    }








    if (((rigaYear>= fromYear || checkFrom) || (checkFrom && check2022))  && ((rigaYear <= toYear || checkTo)|| (checkTo && check2022 == 1))){  


        #controllo se il mese è dopo. Se è dopo allora controllo se l'anno non sia successivo
 

        if(((rigaYear> fromYear || checkFrom) || (checkFrom && check2022 == 1)) && ((rigaYear < toYear || checkTo) || (checkTo && check2022 == 1))){

              
  
            
            
            if (rigaTesto ~ testoContenuto || checkText){
               
               #if ($0 ~ "KPYswmL1On5UjisrxA.IGGRLfrQIprI3NbsFYeJmm4"){print "ciao"}
              print FILENAME": "  $0 
                next               
            }     
        }











        if(rigaYear == fromYear){   #caso in cui l'anno di partenza sia uguale. Controllo se l'il mese è lo stesso. Se è lo stesso guardo la data e guardo il to

           
           
            if(rigaYear == fromYear ){   #caso in cui l'anno di partenza sia uguale. Controllo se l'il mese è lo stesso. Se è lo stesso guardo la data e guardo il to
                if (monthsConfronto[fromMonth] > monthsConfronto[rigaMonth] ){
                    next
                }
                 
                if(monthsConfronto[fromMonth] < monthsConfronto[rigaMonth] && rigaYear < toYear){
                        if (rigaTesto ~ testoContenuto || checkText){
                                 print FILENAME": "  $0 
                               next        
                            }  
                }
     
                if(monthsConfronto[rigaMonth] == monthsConfronto[fromMonth]){


                        if (daysConfronto[fromDay] > daysConfronto[rigaDay]){
                            next
                        }
                        if(daysConfronto[fromDay] < daysConfronto[rigaDay]){
                            if (rigaTesto ~ testoContenuto || checkText){
                                 print FILENAME": "  $0 
                               next        
                            }  
                        }

                        if(daysConfronto[fromDay] == daysConfronto[rigaDay] && fromHour < rigaHour){

                            if (rigaTesto ~ testoContenuto || checkText){
                                print FILENAME": "  $0 
                                next        
                            }  
                            

                        }

                }    #NUOVO

                if((!checkFrom) && (!checkTo)){

                    if (fromYear == toYear){
                        if (monthsConfronto[rigaMonth] == monthsConfronto[toMonth] && monthsConfronto[rigaMonth]> monthsConfronto[fromMonth]){
                            
                            if(daysConfronto[rigaDay] < daysConfronto[toDay]){
                                if (rigaTesto ~ testoContenuto || checkText){
                                    print FILENAME": "  $0 
                                    next               
                                }

                            } if(daysConfronto[rigaDay] < daysConfronto[toDay]){
                                if(toHour > rigaHour){
                                if (rigaTesto ~ testoContenuto || checkText){
                                    print FILENAME": "  $0 
                                    next               
                                }


                                }
                            }
                            if(daysConfronto[rigaDay] == daysConfronto[toDay]){
                                if(toHour > rigaHour){
                                    if (rigaTesto ~ testoContenuto || checkText){
                                        print FILENAME": "  $0 
                                        next               
                                    }


                                }
                            }
                        }
                        
                    }

                }


                else if(toYear > rigaYear ){

                    if (rigaTesto ~ testoContenuto || checkText){
                                 print FILENAME": "  $0 
                               next        
                            }  


                }
                
            }

        }else if(toYear == rigaYear && fromYear < rigaYear){


            if ($0 ~ test){
         #        print "Capooo"
                }
                
            


                if(monthsConfronto[rigaMonth] < monthsConfronto[toMonth]){   #controllo il mese del to
                    if (rigaTesto ~ testoContenuto || checkText){
                        
                        print FILENAME": "  $0 
                        next        
                    }  

                }else if(monthsConfronto[rigaMonth] == monthsConfronto[toMonth]){

                    if(daysConfronto[rigaDay] < daysConfronto[toDay]){
                        if (rigaTesto ~ testoContenuto || checkText){
                            
                            print FILENAME": "  $0 
                            next    
                        }

                    }else if(daysConfronto[rigaDay] == daysConfronto[toDay]){

                        if (toHour < rigaHour){
                            next
                        }
                        else{

                            if (rigaTesto ~ testoContenuto || checkText){
                                
                                print FILENAME": "  $0 
                                next    
                            }

                        }

                    }

                }

            } else if(fromYear == rigaYear && rigaYear<toYear){


                if(monthsConfronto[rigaMonth] > monthsConfronto[fromMonth]){

                    if (rigaTesto ~ testoContenuto || checkText){
                            
                        print FILENAME": "  $0 
                        next    
                    }


                }



            }



        if (((monthsConfronto[rigaMonth] > monthsConfronto[toMonth]) && toYear>rigaYear) || ((monthsConfronto[fromMonth] > monthsConfronto[rigaMonth]) && rigaYear>fromYear &&(checkTo || (rigaDay < toDay)))){
                #MODIFICARE LA CONDIZIONE SOPRA
                if (rigaTesto ~ testoContenuto || checkText){

                    
                   print FILENAME": "  $0 
                    next  
            }

        }


        
    
        

        if((fromMonth == "" || monthsConfronto[fromMonth]<= monthsConfronto[rigaMonth]) && (toMonth ==""  || monthsConfronto[rigaMonth]<= monthsConfronto[toMonth])){
           if ($0 ~ "VjL4GscHTcIPgXA6lthbkYWLVU4GCcOx6ASDZtUOUjDLiXMjUhQxVw3ieJLV994zuohNKo Z Tdm5ZshEXg5xPZZX4Y4CDT4Ax"){

               # print "ciao"
            }
           
           
            if ((fromMonth == "" || monthsConfronto[fromMonth]< monthsConfronto[rigaMonth]) && (toMonth ==""  || monthsConfronto[rigaMonth]< monthsConfronto[toMonth])){
                if (rigaTesto ~ testoContenuto || checkText){
                    
                   print FILENAME": "  $0 
                    next               
                }  
            }
            

            if ((fromDay =="" || daysConfronto[fromDay] <= daysConfronto[rigaDay]) && (toDay == "" || daysConfronto[rigaDay] <= daysConfronto[toDay])){

                if ($0 ~ "VjL4GscHTcIPgXA6lthbkYWLVU4GCcOx6ASDZtUOUjDLiXMjUhQxVw3ieJLV994zuohNKo Z Tdm5ZshEXg5xPZZX4Y4CDT4Ax"){

              #  print "ciao"
            }
                if((fromDay =="" || daysConfronto[fromDay] < daysConfronto[rigaDay]) && (toDay == "" || daysConfronto[rigaDay] < daysConfronto[toDay])){

                    if (rigaTesto ~ testoContenuto || checkText){
                #       if ($0 ~ "KPYswmL1On5UjisrxA.IGGRLfrQIprI3NbsFYeJmm4"){print "ciaooo"}
                
                       print FILENAME": "  $0 
                        next
                    }
                }
                if((fromHour=="" || fromHour<= rigaHour) && (toHour == "" || toHour>= rigaHour)){
            #test del contenuto
               # print rigaTesto
                if (rigaTesto ~ testoContenuto || checkText){
                #     if ($0 ~ "KPYswmL1On5UjisrxA.IGGRLfrQIprI3NbsFYeJmm4"){print "ciaooo"}
      
                
                    print FILENAME": "  $0 
                    next
                    
                }       
            }

            }



            if(((rigaDay < fromDay) && fromMonth < rigaMonth) || (rigaDay > toDay) && (toMonth> rigaMonth)    ){
                if ($0 ~ "VjL4GscHTcIPgXA6lthbkYWLVU4GCcOx6ASDZtUOUjDLiXMjUhQxVw3ieJLV994zuohNKo Z Tdm5ZshEXg5xPZZX4Y4CDT4Ax"){

              #      print "ciao"
            }
                
            }
      
        }


        
    }
    


}


