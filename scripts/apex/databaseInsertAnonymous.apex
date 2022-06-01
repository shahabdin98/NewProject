Account acc1 = new account();
acc1.Name = 'SI Test';
acc1.Industry = 'Energy';
acc1.Active__c = 'No';

Account acc2 = new account();
acc2.Name = 'UI Test';
acc2.Industry = 'Energy';
acc2.Active__c = 'Yes';

Account acc12x = new account();
Account acc12y = new account();
Account acc12z = new account();

List<account> listAcc = new list<account>{acc1, acc2, acc12x,acc12y, acc12z};

list<database.SaveResult> results = Database.insert(listAcc, false);

for(database.SaveResult eachResult : results){
    if(eachResult.isSuccess()){
        System.debug('Account succesfully inserted');
    } else {
        system.debug('WError : ' + eachResult.getErrors());
    }
}