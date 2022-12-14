public class ListCollection11 {
    //parametre olarak string bir liste alan bir metot yazin.
    //Bu metot listenin her bir elemanini tek tek yazdirsin.

    public static void printListEachItem(list<string> adList) {
        integer counter = 1;
        for(string eachItem : adList){
            system.debug('for ' + counter + 'defa dondu');
            system.debug(eachItem);
            counter++;
        }
    }

    //decimal bir lsiteyi parametre olarak alan ve bu listenin elemanlarinin toplamini
     //return eden bir metot yazin.
    public static decimal listEachItemSum(list<decimal> decList){
        decimal toplam;
        //gelen liste dolu mu bos mu kontrolu yapilir dolu ise islem yapilmaz.
        //isEmpty() veya size() ile kontrol edebiliriz.
    if(decList.size()>0){
        toplam=0;
        for( decimal item : decList){
            toplam += item;
        }
    }
    /*if(!decList.isEmpty()){
        for( decimal item : decList){
            toplam += item;
        }
    }*/
        return toplam;
    }   

    //decimal bir listenin elemanlarinin aritmetik ortalamasini return eden

    public static decimal listItemsAverage(list<decimal> avList){
        decimal average;
        if(!avList.isEmpty()){
            decimal toplam = listEachItemSum(avList);
            integer elemanSayisi = avList.size();
            average = toplam/ elemanSayisi;
        }
        return average;
    }
}




