public class AccountTriggerHandler {
    public static void duplicateValidation(list<account> triggerNew,map<id,account> triggerNewMap){
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
    }
}
