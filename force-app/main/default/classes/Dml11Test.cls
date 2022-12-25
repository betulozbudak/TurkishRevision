@isTest
public class Dml11Test {
    @isTest
    static void createAccountsAndContactsTest(){
         Test.startTest();
         Dml11.createAccountsAndContacts(5);
         Test.stopTest();

         list<account> accList =[select id,name, (select id, lastName from contacts) from account];
         integer acsy = accList.size();
         system.assertEquals(5, acsy);

         integer oneAccOfCon= accList[0].Contacts.size();
         system.assertEquals(5, oneAccOfCon);

         /*string conName = accList[0].Contacts[0].name;
         system.assertEquals('Contact 1.1.', conName);*/
    }
}
