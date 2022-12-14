/*1. a ve b iki sayı olsun. a ve b'yi karşılaştırıp büyük, küçük ve eşitlik durumunu bir mesajla yazdıracak bir if else bloğu yazın.*/

public class ifAnfForLoop11 {
    public void ifNumbers(integer a,integer b){
        if (a>b) 
        system.debug(a+ ' sayisi' + b + ' sayisindan buyuktur');
        else if (b>a)
        system.debug(b +' sayisi '+a+' sayisindan buyuktur.');
        else 
        system.debug(a +' sayisi '+ b + ' sayisina esittir..');
        
}
/*2. Ekmek, simit ve kek siparişlerinden birini istediğiniz adet ile beraber alan 2 parametreli bir metot yazın. size toplam ödeyeceğiniz miktarı mesajla beraber yazsın. 

    Metot: ifBread
    Ekmek : 1$ 
    Simit : 2$
    Kek : 3$   */
public void ifBread(string order,integer count){
    if(order=='ekmek'){
        system.debug('price='+count*1 + ' $');
     }else if(order=='simit'){
        system.debug('price='+ count*2 + '$');
     }else if(order=='kek'){
        system.debug('price='+ count*3 + '$');
     }else{
        system.debug('gecersiz siparis.');
    }
}

//switch when
public void ifBreadSwitch(string order,integer count){
    integer hesap=0;
    switch on order{
        when 'ekmek'{
            hesap=count*1;
        }
        when 'simit'{
            hesap=count*2;
        }
        when 'kek'{
            hesap=count*3;
        }
    }

    if(hesap!=0){
        system.debug(count + ' tane ' + order + ' aldiniz odeyeceginiz miktar= '+ hesap +'$');
    }


}
//3. Parametre olarak integer 'n' sayısını alan, 1'den n'e kadar olan sayıların toplamını return eden metot yazin.
   public integer forLoopSumNumbers(integer n){
        integer sum=0;
         for (Integer i = 1; i <= n; i++) {
            sum+=i;
            system.debug('i= ' +i);
            system.debug(sum);
         }
         return sum;
   }

//3.soruyu while ile yain.

public integer whileSumnumbers(integer n){

      integer sum=0;
      integer count=1;
      while(count<=n){
        sum+=count;
        system.debug('sum='+ sum);
        count++;
        system.debug('count='+ count);
      }
      return sum;
    }
}

