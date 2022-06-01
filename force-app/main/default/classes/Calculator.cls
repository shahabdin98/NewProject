public class Calculator {
    public static void welcomeMessage() {
        system.debug('welcome to apex calc');
    }

    public static void printNewMessage(string msg){
        system.debug(msg);
    }

    public static Integer add(Integer a, Integer b){
        Integer sum = a + b;

        return sum;
    }
    public static Integer multiply(Integer a, Integer b) {
        Integer multiply = a * b;
        return multiply;
    }
    public static Integer add(Integer a, Integer b, Integer c){
        return a+b+c;
    }
    public static integer add(list<integer> intList){
        integer returnInt = 0;

        for(integer eachInt : intList){
            returnInt += eachInt;
        }

        return returnInt;
    }

}
