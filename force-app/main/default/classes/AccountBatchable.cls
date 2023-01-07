/*Batch=>Tüm Accountların name lerininin yanına update kelimesini ekleyelim. Annual revenue si olmayanların da Annual Revenueleri 10000 yapılsın..*/

public class AccountBatchable implements Database.Batchable<SObject>{
    //start-soql ile islem yapilacak tum veriler bir listeye alinir ve execute icin return edilir.
     public Database.QueryLocator start(database.BatchableContext bc){
         database.QueryLocator q1 = Database.getQueryLocator([select id,name,annualrevenue from account]);
         return q1;
     }



    //execute-parca parca islem yapilir.
     public void execute(database.BatchableContext bc, List<Account> scope){
        list<account> upAcc = new list<account>();
           for(account acc: scope ){
            acc.name += 'update';
            if(acc.AnnualRevenue==null){
                acc.AnnualRevenue =10000;
            }
            upAcc.add(acc);
           }
           update upAcc;
     }
 


    //finish= bitis mesaji veya mail.baska bir klas burada cagrilir.

    public void finish(database.BatchableContext bc){
        system.debug('batch islemi bitti..');
        id jobid = system.enqueueJob(new AccountQueueuable1());//queueuable metodu batchabledan cagirdik;
    }
}

