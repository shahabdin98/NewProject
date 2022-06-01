public class dmlDemo {
    public static void dmlInsertDemo_standObj() {
        account acc = new account();
        acc.name = 'SoftInnovas';
        acc.Site = 'www.softinnovas.com';
        acc.Description = 'Salesforce Bootcamp';

        insert acc;
        system.debug(acc);
    }

    public static void dmlInsertDemo_cstObj(){
        salesforce_project__c sp = new salesforce_project__c();
        sp.project_name__c = 'teach DML to falsons';
        sp.Description__c = 'All 50% are great learners';
        sp.status__c = 'asjdgjadg';
        insert sp;
        system.debug(sp);
    }



    public static void dlmUpdateDemo_2(){
        account acc = [select name from account where name = 'SoftInnovas' ORDER BY CreatedDate desc limit 1];
        acc.name = 'SoftInnovas Inc.';

        update acc;
        system.debug('updated acc ' + acc);
    }

    public static void dlmUpdateDemo_3() {
        account acc = [select name from account where name = 'Softinnovas Inc.' limit 1];
        system.debug('acc id is ' + acc.id);

        contact cnt = new contact();
        cnt.lastname = 'Bob';
        cnt.accountid = acc.id;

        insert cnt;
    }

    public static void dlmMultipleRecordInsert_right() {
        list<account> listAccount = new list<account>();

        account acc = new account();
        acc.name = 'Softinnovas-10sept V';
        acc.AccountNumber = 'ACSI-1';
        acc.Active__c = 'Yes';
        listAccount.add(acc);

        for (integer i; i<150; i++){

            account acc2 = new account();
            acc2.name = 'Softinnovas-10sept V';
            acc2.AccountNumber = 'ACSI-1';
            acc2.Active__c = 'Yes';
            listAccount.add(acc2);
        }
        system.debug('size of list ' + listAccount.size());

        if(!listAccount.isEmpty()){
            insert listAccount;
        }
    }   


}
