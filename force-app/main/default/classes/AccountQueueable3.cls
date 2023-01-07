/*Queuable3=> Annual Revenuesi 10000 olan accountlara bağlı olan contaclarin lead source leri 'Partner Referal' olanların Description kısmına 'Queuable chain' yazın.. */

public class AccountQueueable3 implements Queueable {
    public static list<account> accList= [select id,(select id , description from contacts where leadsource ='Partner Referal') from account where annualrevenue =10000];

public void execute(QueueableContext qc){
    system.debug('AcoountQueueuable3 calisti');
    list<contact> conList = new list<contact>();
    for(account ac: accList){
        conlist.addAll(ac.Contacts);
    }
    for(contact c: conList){
        c.Description='Queueable chain';
    }
    update conList;
}

}

