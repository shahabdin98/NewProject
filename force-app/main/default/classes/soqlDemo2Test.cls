public class soqlDemo2Test {
    @isTest
    private static void soqlDemoTest1() {
        Account acc1 = new account();
        acc1.Name = 'SI Test';
        acc1.Industry = 'Energy';

        Account acc2 = new account();
        acc2.Name = 'UI Test';
        acc2.Industry = 'Energy';

        Account acc3 = new account();
        acc3.Name = 'PI Test';
        acc3.Industry = 'Banking';

        list<account> listAcc = new list<account>{acc1, acc2, acc3};
        insert listAcc;

        list<contact> listContact = new list<contact>();
        for (Integer i = 0; i < 300; i++) {
            Contact c = new contact();
            c.LastName = 'Test SOQL';
            if (i < 100) {
                c.accountid = acc1.id;
            } else if (i < 200) {
                c.accountid = acc2.id;
            } else if(i < 300){
                c.accountid = acc3.id;
            }
            listContact.add(c);
        }
        insert listContact;
    }
    @isTest 

    static void soqlDemoTest1(){

        test.startTest();
        soqlDemo2.parentToChild_Soql1();
        test.stopTest();
    }


    private static void sampleSoql4Test(){
        list<account> listAcc = [select id, name, type from account where type = ''];
        for(account acc : listAcc){
            acc.type = 'customer - direct';
        }
        update listAcc;

        list<Opportunity> createOpps = new List<Opportunity>();
        for(integer i =0; i<300; i++){
        Opportunity o = new Opportunity();
        o.name = 'opp1';
        o.stagename = 'closed lost';
        o.CloseDate = date.today();
        if(i<100){
            o.AccountId = listAcc[0].id;
        }
        if(i<200){
            o.AccountId = listAcc[1].id;
        }
        if(i<300){
            o.AccountId = listAcc[2].id;
        }
        createOpps.add(o);
    

    }
    insert createOpps;

    test.startTest();
    soqldemo2.sampleSoql4();
    test.stopTest();
}

}













