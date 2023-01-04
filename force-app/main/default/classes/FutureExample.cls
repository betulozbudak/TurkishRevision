public class FutureExample {
    // Account objecti'nin description field'inde bir update işlemi yapıldığında o account'a bağlı opportunity ve contact'ların description field'lerini account description ile aynı olacak şekilde update eden bir "future method" tasarlayınız.
    public static void updateDescriptionHelper(list<account> accTriggerNew, Map<Id,Account> accTriggerOldMap ){
        set<id> accIds = new set<id>();
        for(account eachacc: accTriggerNew){
            if(eachacc.Description != accTriggerOldMap.get(eachacc.id).Description){
                accIds.add(eachacc.id);
            }
        }
        if(!accIds.isEmpty()){
            updateDescription2(accIds);
        }

    }
    /*1.METOT
    @Future
    public static void updateDescription(set<id> idList){
         //Bu accountlar bagli tum contact ve opprtunityleri alip accountun descriptionunu bunlara assign edecegiz.
         list<account> accList =[select id,description,(select id,description from contacts),(select id,description from Opportunities) from account where id IN : idList];

         list<contact> conList = new List<contact>();
         list<Opportunity> oppList = new List<Opportunity>();
         for(Account eachacc: accList){
            for(contact eachcon: eachacc.Contacts){
                eachcon.Description=eachacc.Description;
                conList.add(eachcon);
            }

            for(Opportunity eachopp: oppList){
                eachopp.Description=eachacc.Description;
                oppList.add(eachopp);
            }
        }
        update conList;
        update oppList;
    }*/

    @Future
    public static void updateDescription2(set<id> idList) {
        list<contact> conList =[select id, Accountid, description,Account.Description from contact where Accountid in : idList];
        for(contact c: conList){
            c.Description=c.Account.Description;
        }
        update conList;

        List<Opportunity> oppList =[select id,description, Account.Description from Opportunity where AccountId IN: idList];
        for(Opportunity op: oppList){
            op.Description = op.Account.Description;
        }
        update oppList;
    }
}

