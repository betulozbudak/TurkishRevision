
@istest
public class DemoMetotlarTest {
    @isTest
    private static void printWelcomeTest() {
        DemoMetotlar.printWelcome();
    }

    @isTest
        private static void welcomePersonTest(){
        DemoMetotlar.welcomePerson('fatma');
    }
    @isTest
    private static void toplamaTest(){
        integer sum = DemoMetotlar.toplama(11,22);
        system.assertEquals(33, sum);

    }
    @istest
    private static void createAccountsTest(){
        DemoMetotlar.createAccounts();
        list<account> accList = [select id, name from account where name ='Sales'];
        system.assertEquals(1, accList.size());
        system.assertEquals('Sales', accList[0].Name);
    }
    @isTest
    private static void createandUpdateAccounTest(){
        DemoMetotlar.createAndUpdateAccount();
        list<Account> accList =[select id, name from Account];
        System.assertEquals(1, accList.size());
        system.assertEquals('Soft Innovas Inc.', accList[0].Name) ;
    }
    @isTest
    private static void createContactsTest(){
        account acc =new account();
        acc.Name ='Sales';
        insert acc;
        DemoMetotlar.createContacts();
        list<contact> conlist=[select id, lastname from contact where LastName = 'Doe'];
        system.assertEquals(1, conlist.size());
        
    }
    @isTest
    private static void triggerAccount(){
        Account acc= new Account();
        acc.Name = 'Test';
        insert acc;
        //trigger tetiklenmesi icin cagirmama gerek yok sadece dml yapmam yeterli.!
        
    }
}
