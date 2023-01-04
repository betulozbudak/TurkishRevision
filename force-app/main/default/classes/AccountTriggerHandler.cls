public class AccountTriggerHandler {
    public static void contactRelatedAccount(List<Account> accTriggerNew, list<account> accTiggerOld,Map<Id,Account> accTriggerNewMap, map<id,Account> accTriggerOldMap){
        
        set<id> accId = new set<id>();
        for(account eachacc: accTriggerNew){
            accId.add(eachAcc.Id);
        }
        updateAccount(accId);
    }
        @future
        public static void updateAccount(set<id> accId){
            List<Account> accList=[select id,name, (select id,lastName,AccountId from Contacts) from Account where Id in: accId];
            
            for(Account eachacc: accList ){
                eachacc.Number_of_Contacts__c =eachacc.Contacts.size();

                
            }
            update accList;
        }








    
        /*public static void createContact(List<Account> accTriggernew) {
            List<Contact> conList = new List<Contact>();
            for (account acc : accTriggernew) {
                for (Integer i = 1; i <= 7; i++) {
                    contact c = new contact();
                    c.FirstName = acc.name;
                    c.LastName = 'Contact ' + i;
                    c.AccountId = acc.id;
                    conList.add(c);
                }
            }
    
            insert conList;
        }
        public static void updateName(List<Account> triggerNew, Map<Id, Account> triggerOldMap) {
            for (account acc : triggerNew) {
                if (acc.name != triggerOldMap.get(acc.id).name) {
                    acc.Description = 'Bu recordda isim degisikligi oldu..';
                }
            }
        }
    

    /*public static void duplicateValidation(list<account> triggerNew,map<id,account> triggerNewMap){
        list<account> accList = [select Id, Name from Account];
        list<account> listacc = new list<account>();
        for(account eachAcc: accList){
            for(account eachAcc2 : triggerNew){
                listacc.add(eachAcc2);
            if(!listacc.isEmpty()){
                if(eachAcc2.Name == eachAcc.Name){
                eachAcc2.Name.addError('You can not create record with duplicate name');
            }
            }

            }
        }
    }*/
}
