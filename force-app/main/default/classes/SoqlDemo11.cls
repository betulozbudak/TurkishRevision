public class SoqlDemo11 {
    public static integer accountIndustry(string indstry ) {
    List<Account> accList =[select id, name from account where industry =: indstry];
    system.debug(accList);
    integer recordnum = accList.size();
    return recordnum;
    }

    public static void accountWithContacts(){
        list<account> accList = [select id, name,(select id, lastName from contacts) from account where Industry = 'Energy'];
        system.debug(accList);
        for( account acc: accList){
            system.debug(acc.name);
            system.debug(acc.contacts);
            for(contact con: acc.contacts){
                system.debug(con.lastName);
            }
        }
    }
}
