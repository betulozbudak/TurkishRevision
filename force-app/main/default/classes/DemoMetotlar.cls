public class DemoMetotlar {
    public static void printWelcome(){
        system.debug('Hosgeldiniz');
    }
    public static void welcomePerson(string nm){
        system.debug('Hosgeldin ' + nm);
    }
    public static Integer toplama(integer a, integer b){
        integer sum =a + b;
        return sum;
    }
    public static void createAccounts(){
        Account acc =new Account();
        acc.Name='Sales';
        insert acc;
    }

    public static void createAndUpdateAccount(){
        Account acc = new Account();
        acc.Name='Soft';
        insert acc;
        acc.Name ='Soft Innovas Inc.';
        update acc;
    }

    public static void createContacts(){
        account acc=[select id, name from account where name ='Sales' limit 1];

        contact cnt= new contact();
        cnt.LastName ='Doe';
        cnt.AccountId= acc.id;
        insert cnt;
    }
}

