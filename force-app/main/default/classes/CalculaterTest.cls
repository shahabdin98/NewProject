@istest
public class CalculaterTest {
    @istest
    static void testMessage() {
        Calculator.welcomeMessage();
        Calculator.printnewmessage('this is from test message');
        Calculator.printNewMessage2('msg', date.today());
        
    }
    @istest
    static void add(){
        integer a = 5;
        integer b = 10;

        integer calcAdd = Calculator.add(a, b);
        system.assertEquals(15, calcAdd);
    }
    @isTest
    private static void addTest2() {
        integer calcAdd = Calculator.add(10, 15, 20);
        system.assertEquals(45, calcAdd);
    }
    @isTest
    public static void addTest3() {
        list<integer> listInt = new list<integer>{15,15,15};
        integer calcAdd = Calculator.add(listInt);
        system.assertEquals(45, calcAdd);
    }
}
