public class AccountQueueuable1 implements Queueable{
    /*Queuable1=> Accountlardan Annual Revenuesi 10000 olanlara birer contact create edip bağlayalım.*/

   //bizden istenen recordlari public static bir listenin icine soql ile ekleriz.
public static list<account> accList=[select id,name from account where annualrevenue =10000];

public void execute (QueueableContext context){
    system.debug('AccountQueuable1 calisti...');
    list<contact> conList= new list<contact>();
    for(account acc: accList){
        contact c = new contact();
        c.LastName='Queueuable Test';
        c.Accountid= acc.id;
        conList.add(c);
    }
    insert conList;
    system.enqueueJob(new AccountQueueable2());

}

}
