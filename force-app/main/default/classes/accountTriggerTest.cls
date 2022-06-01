@istest
public class accountTriggerTest {
    @isTest
    private static void testMethod1() {
        account acc1 = new account();
        acc1.name = 'SI Test';
        acc1.industry = 'Energy';
        acc1.Active__c = 'Yes';

        account acc2 = new account();
        acc2.name = 'PI Test';
        acc2.industry = 'Energy';
        acc2.Active__c = 'No';


        account acc3 = new account();
        acc3.name = 'UI Test';
        acc3.industry = 'Banking';
        acc3.Active__c = 'No';


        list<account> listAcc = new list<account>{acc1, acc2, acc3};
        insert listAcc;

        for(account acc : listAcc){
            acc.Description = 'updated';
        }
        update listAcc;


    }
}
