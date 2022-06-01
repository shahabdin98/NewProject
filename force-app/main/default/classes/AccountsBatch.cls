public class AccountsBatch implements Database.Batchable<SObject>, Database.stateful {
    public integer count = 0;
    public database.QueryLocator start(database.BatchableContext bc){
        Database.QueryLocator q1 = database.getQueryLocator([select id, description, active__c from account]);
        System.debug(q1);
        return q1;
    }
    public void execute(database.BatchableContext bc, List<Account> scope){
        List<Account> updateAccounts = new List<Account>();
        for(account acc : scope){
            if(acc.Active__c == 'no'){
            acc.description += '...updated via Batch Apex';
            updateAccounts.add(acc);
            count++;
            }
        }
        if(!updateAccounts.isEmpty()){
            System.debug('Count in execute: ' + count);
            update updateAccounts;
        }
    }
    public void finish(database.BatchableContext bc){
        System.debug('done with updating all accounts');
        system.debug('total updated records = ' + count);
    }
}
