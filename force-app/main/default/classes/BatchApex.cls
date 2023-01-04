public class BatchApex implements Database.Batchable<SObject> {
    //Tum accountlarin isimlerinin sonuna batch11 ekleyelim..
    //start
    public Database.QueryLocator start(Database.BatchableContext bc){
        string query ='select id, name from Account';
        return Database.getQueryLocator(query);
    }

    //execute
    public void execute(Database.BatchableContext bc, List<Account> scope){
        for(account acc: scope){
            acc.Name=acc.Name + 'batch11';
        }
        try{
            update scope;
        }catch(exception e){
            system.debug(e);
        }
    }

    //finish

    public void finish (Database.BatchableContext bc){
        system.debug('islem bitti');
        AsyncApexJob a =[select id,Status,NumberOfErrors, JobItemsProcessed,TotalJobItems,CreatedBy.Email from AsyncApexJob where id=: bc.getJobId()];

        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        String[] toAddresses = new String[]{'betulozbudak@gmail.com','ebruca889@gmail.com','uzumcufatma45@gmail.com','aydinbezgin3@gmail.com','betulagar.pt@gmail.com','rabiaselli@gmail.com','burak.061634@gmail.com'};
        mail.setToAddresses(toAddresses);
        mail.setSubject(a.Status);
        mail.setPlainTextBody(system.label.accountNameUpdate + '\n' + 'The batch Apex job processed' + a.TotalJobItems +'\n' + 'batches with' + a.NumberOfErrors + 'failures.');
        Messaging.sendEmail(new Messaging.SingleEmailMessage[]{mail});
    }
}

