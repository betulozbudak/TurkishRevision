ParametreliMetotlar11 pm1 = new ParametreliMetotlar11();

string metin = 'Salesforce developer olma yolunda ilerliyorum.';
integer uzunluk = pm1.uzunluk(metin);
system.debug(metin+ 'cumlesinin karakter sayisi = '+ uzunluk);

