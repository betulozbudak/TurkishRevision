list<string>isimlist= new List<string>();
isimlist.add('Berna');
isimlist.add('Fatma');
isimlist.add('Rabia');
isimlist.add('Samet');
isimlist.add('Asli');

system.debug(isimlist);
system.debug('index numarasi 2 olan isim get ile =' + isimlist.get(2));
system.debug('index numarasi 2 olan isim koseli parantez ile ' + isimlist[2]);

Boolean check = isimList.contains('Ziynet');
system.debug('ziynet ismi listemizde var mi= ' + check);

Boolean check2 = isimList.contains('Samet');
system.debug('Samet ismi listemizde var mi=' +check2);

string silinenisim = isimlist.remove(0);
system.debug('silinen isim =' + silinenisim);
system.debug('listenin son hali(sort metodundan once) =' + isimlist);


system.debug('listemdeki isim sayisi =' + isimlist.size());

isimList.sort();//sort yapinca listedeki elemanlarin index sayisi da degisir.A dan Z ye siraladigi icin.

system.debug('listedeki isim sayisi( sort metodundan sonra)=' + isimlist);

list<String> isimlist2 = new list<String>{'Ziynet','Asli','Yusuf','Samet','Serpil'};

Listcollection11.printListEachItem(isimlist2);

List<Decimal> dList = new List<Decimal>{11,12,4,34,7,99,24.5};
decimal sonuc = ListCollection11.listEachItemSum(dList);
system.debug(dList + ' listesinin elemanlarinin toplami= ' +sonuc );


List<Decimal> dList2 = new List<Decimal>{10,22,4.5,34.8,7,99,24.5};
decimal avrg= ListCollection11.listItemsAverage(dList2);
system.debug(dList2 + 'listesinin elemanlarinin aritmetik ortalamasi= ' + avrg);
