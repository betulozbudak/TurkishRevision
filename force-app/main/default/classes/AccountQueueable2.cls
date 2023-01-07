/*Queuable2=> Annual Revenuesi 10000 olan accountlara bağlı olan contactlarin lead source ni 'Partner Referal' yapın..*/
public class AccountQueueable2 implements Queueable{
    //bizden istenen recordlari public static bir listenin icine soql iel ekleriz.
    public static List<Account> accList = [select id, (select id, LeadSource from Contacts) from account where AnnualRevenue = 10000];

    //execute-istenen formattaki tum contactlari getirip lead source sini 'Partner Referal' yapacagiz.
    public void execute(QueueableContext contex){
        System.debug('AccountQueueable2 calsiti..');
        List<Contact> conList = new List<Contact>();
        for (account ac : accList) {
            conList.addAll(ac.Contacts);
        }
        for (contact c : conList) {
            c.LeadSource = 'Partner Referal';
        }
        update conList; 
        system.enqueueJob(new AccountQueueable3());
    }
    
}


