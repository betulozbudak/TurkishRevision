
@istest
public class DemoMetotlarTest {
    @isTest
    private static void printWelcomeTest() {
        DemoMetotlar.printWelcome();
    }

    private static void welcomePersonTest(string nm){
        DemoMetotlar.welcomePerson('fatma');
    }
    private static void toplamaTest(){
        integer sum = DemoMetotlar.toplama(11,22);
        system.assertEquals(33, sum);

    }
}
