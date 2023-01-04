public class ContactTrigger {
    /*Yeni bir Contact mevcut bir Accounta bağlı olarak oluşturulduğunda Contact other phone bağlı olduğu Account phone olsun.*/
    //1.yol
    /*public static void otherPhoneOfContact(list<contact> trgNew,map< id,contact> trgNewMap){
        //insert edilen contactlardan accounta bagli olanlari secelim.
        set<id> conIds = new set<id>();
        for(contact con : trgNew){
            if(con.AccountId !=null){
                conIds.add(con.id);
            }
        }
        //Accounta bagli olan tum contactlari accountun parent phone ile berebaer SOQL yapiyoruz.
        list<contact> conList = [select id, otherPhone, account.phone from contact where id in:conIds];

        //Bu listeyi bir for each dongusunun icine alip otherPhone guncellemesini yapalim.
        for(contact cn: conList){
            cn.OtherPhone =cn.account.Phone;
        }
        update conList;
    }

    //2.yol
        public static void otherPhoneOfContact2(list<contact> triggerNew,map<id,contact> triggerNewMap){
            //account idlerin key oldugu ilgili ccountun recordunun da value oldugu bir map olusturup, contactlarin bagli oldugu accountlarin recordlari burada toplarim.
            map<id,account> AccMap = new map<id,account>();
            set<id> accIds = new set<id>();
            list<contact> conList = new List<contact>();
            for(contact con : triggerNew){
                if(con.AccountId != null){
                    accIds.add(con.AccountId);
                    conList.add(con);
                }
            }
            //Soql ile bu accuntlarin recordlarini getir.
            list<account> accList = [select id,name, phone from account where id in : accIds];

            //mapi doldur.

            for(account acc: accList){
                AccMap.put(acc.id,acc);
            }
            for(contact con: conList){
                con.OtherPhone = AccMap.get(con.AccountId).Phone;
            }

        }*/
}

