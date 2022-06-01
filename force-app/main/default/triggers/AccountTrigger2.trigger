trigger AccountTrigger2 on Account (before insert){


    if(trigger.isBefore){
    account a = trigger.new[0];
    a.name = a.name + 'limited';
    // system.debug('new account name is ' + a.name);
}
    
    
    // if(trigger.isInsert && trigger.isAfter){
    //     system.debug('trigger.new after insert = ' + trigger.new);
    // }

    // List<Account> newAccount = trigger.new;
    // system.debug('All accounts inserted: ' + newAccount.size());
    // for(Account acc : newAccount){
    //     system.debug('account id: ' + acc.id + ', account name: ' + acc.Name);
    // }
}