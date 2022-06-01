dmlDemo.dmlInsertDemo_standObj();
dmlDemo.dmlInsertDemo_cstObj();
dmlDemo.dlmUpdateDemo_2();
dmlDemo.dlmUpdateDemo_3();
dmlDemo.dlmMultipleRecordInsert_right();

dmlDemo2.dmlMultipleRecordUpdate_right();

list<account> listAccount = new list<account>();

        for (integer i=0; i<4; i++){

            account acc2 = new account();
            acc2.name = 'Softinnovas-10sept V';
            acc2.AccountNumber = 'ACSI-1';
            acc2.Active__c = 'Yes';
            // listAccount.add(acc2);
            insert listAccount;
        }
        system.debug('size of list ' + listAccount.size());

        if(!listAccount.isEmpty()){
            // insert listAccount;
        }





list<case> listCase = new list<case>();
for(integer i = 0; i<205; i++){
    case c = new case();
    c.Subject = 'There is a bug';
    c.Description = 'Resolve it';
    c.Status = 'New';
    c.Origin = 'web';
    listCase.add(c);
}
insert listCase;