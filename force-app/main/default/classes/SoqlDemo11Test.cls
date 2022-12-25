@isTest
public  class SoqlDemo11Test {
    @isTest
    private static void accountIndustryTest(){
        list<account> accList = new List<account>();
        account acc = new account();
        acc.Name ='Test 1';
        acc.Industry='Education';
        accList.add(acc);
        

        account acc2= new account();
        acc2.Name ='Test2';
        acc2.Industry='Energy';
        accList.add(acc2);
        insert accList;

        Test.startTest();
        integer rs = SoqlDemo11.accountIndustry('Education');
        Test.stopTest();
        system.assertEquals(1,rs);
    }
}

