trigger AccountTrigger on Account (before insert, after insert, before update, after update) {
    if(trigger.isBefore){
        System.debug('before insert/update trigger called');
        AccountTriggerHandler.updateAccountDescription(trigger.new, trigger.old, trigger.newMap, Trigger.OldMap);
        System.debug('before insert/update trigger end');

        
    }
    
    if(trigger.isAfter && trigger.isUpdate){
        AccountTriggerHandler.updateVIP(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
   
   
   
    // if(trigger.isBefore){
    //     system.debug('before insert/update trigger called');
    //     map<id, account> newAccountMap = trigger.newmap;
    //     map<id, account> oldAccountMap = trigger.oldmap;
    //     for(account eachAcc: trigger.new){
    //         boolean updateDesc = false;
    //         if(trigger.isInsert && eachAcc.Active__c == 'Yes'){
    //             updateDesc = true;
    //         }
    //         if(trigger.isUpdate){
    //             Account oldAccount = oldAccountMap.get(eachAcc.ID);
                
    //             string oldAccountActive = oldAccount.Active__c;
    //             //check if active is updated
    //             //active is changed to 'Yes'
    //             if(eachAcc.Active__c == 'Yes' &&
    //                 oldAccountActive != 'Yes'
    //             ) {
    //                 updateDesc = true;
    //             }
    //         }
    //         if(updateDesc){
    //             eachAcc.Description = 'Account is now active. Enjoy!';
    //         }
    //     }
    // }
    
    // if(trigger.isAfter && trigger.isUpdate){

    //     map<id, account> newAccMap = trigger.newMap;
    //     map<id, account> oldAccMap = trigger.oldMap;

    //     set<id> setOfAccIds = newAccMap.keySet();
    //     integer countWebsiteUpdated = 0;
    //     for(ID eachId : setOfAccIds){
    //         //get old account
    //         account oldAcc = oldAccMap.get(eachId);
    //         string oldWebsite = oldAcc.Website;
    //         //get new account
    //         account newAcc = newAccMap.get(eachId);
    //         string newWebsite = newAcc.Website;

    //         if(oldWebsite != newWebsite){
    //             //website is CHANGED
    //             system.debug('For account ' + newAcc.Name + ', new WEBSITE is ' + newWebsite);
    //             countWebsiteUpdated++;
    //         }

    //     }
    //     system.debug('# of account website updaetd = ' + countWebsiteUpdated);
    // }

    
    
    /*if(trigger.isAfter && trigger.isUpdate){
        map<id, account> newAccMap = trigger.newMap;
        map<id, account> oldAccMap = trigger.oldMap;

        set<id> setOfAccIds = newAccMap.keySet();
        
        for(ID eachId: setOfAccIds){
            system.debug('==============');
            system.debug('each id = ' + eachId);

            Account newAccount = newAccmap.get(eachId);
            system.debug('New account name = ' + newAccount.Name);
            
            Account oldAccount = oldAccmap.get(eachId);
            system.debug('Old account name = ' + oldAccount.Name);
        }
    }*/

    
    
    
    
    // if(trigger.isAfter && trigger.isUpdate){
    //     map<id, account> newAccMap = trigger.newMap;
    //     map<id, account> oldAccMap = trigger.oldMap;

    //     set<id> setOfAccIds = newAccMap.keySet();

    //     for(id eachId: setOfAccIds){
    //         system.debug('=====================');
    //         system.debug('each id = ' + eachId);

    //         account newAccount = newAccMap.get(eachID);
    //         System.debug('new Account Name = ' + newAccount.name);

    //         account oldAccount = oldAccMap.get(eachId);
    //         system.debug('Old account name = ' + oldAccount.name);
    //     }
    // }


    
    
    
    
    // map<id, account> trgOldMap = trigger.oldMap;
    // map<id, account> trgNewMap = trigger.newMap;

    // if(trigger.isInsert && trigger.isBefore){
    //     system.debug('/////////////BEFORE INSERT/////////////////');
    //         system.debug('before insert old map: ' + trgOldMap);
    //         system.debug('before insert new map: ' + trgNewMap);

    //     }
    // if(trigger.isInsert && trigger.isAfter){
    //     system.debug('/////////////AFTER INSERT/////////////////');

    //     system.debug('after insert old map: ' + trgOldMap);
    //     system.debug('after insert new map: ' + trgNewMap);

    // }
        
    // if(trigger.isUpdate && trigger.isBefore){
    //     system.debug('/////////////BEFORE UPDATE/////////////////');

    //     system.debug('before update old map: ' + trgOldMap);
    //     system.debug('before update new map: ' + trgNewMap);
    //     }
    // if(trigger.isUpdate && trigger.isAfter){
    //     system.debug('/////////////AFTER UPDATE/////////////////');

    //     system.debug('after insert old map: ' + trgOldMap);
    //     system.debug('after insert new map: ' + trgNewMap);
    //     }
        
    
    
    
    
    // if(trigger.isAfter){
    //     if(trigger.isUpdate){
    //         list<account> oldAccount = trigger.old;
    //         list<account> newAccount = trigger.new;

    //         for(account oldAcc: oldAccount){
    //             system.debug('old acc id: ' + oldAcc.id + ', and old acc name: ' + oldAcc.name);
    //         }
            
    //         for(account newAcc: newAccount){
    //             system.debug('new acc id: ' + newAcc.id + ', and new acc name: ' + newAcc.name);
    //         }
    //     }
    // }
    
    
    // if(trigger.isInsert && trigger.isBefore){
    //     system.debug('trigger.old before imsert: ' + trigger.old);
    // }
    // if(trigger.isInsert && trigger.isAfter){
    //     system.debug('trigger.old after insert: ' + trigger.old);
    // }
    
    // if(trigger.isUpdate && trigger.isBefore){
    //     system.debug('trigger.old before update: ' + trigger.old);
    // }
    // if(trigger.isUpdate && trigger.isAfter){
    //     system.debug('trigger.old after update: ' + trigger.old);
    // }
    
    // if(trigger.isBefore && trigger.isUpdate){
    //     system.debug('trigger.new before update = ' + trigger.new);
    //     list<account> newAccounts = trigger.new;
    //     for (account acc :  newAccounts) {
    //         system.debug('accout id is = ' + acc.Id + ', account name is ' + acc.Name + ', acc modified date = ' + acc.LastModifiedDate);
    //     }
    // }
    // if (trigger.isAfter && trigger.isUpdate) {
    //     system.debug('trigger.new after update = ' + trigger.new);
    //     for (account acc :  trigger.new) {
    //         system.debug('accout id is = ' + acc.Id + ', account name is ' + acc.Name + ', acc modified date = ' + acc.LastModifiedDate);
    //     }
    // }
    
    
    

    // if(trigger.isInsert && trigger.isBefore){
    //     system.debug('trigger.new before imsert: ' + trigger.new);
    // }
    // if(trigger.isInsert && trigger.isAfter){
    //     system.debug('trigger.new after insert: ' + trigger.new);
    // }

    
    
    
    // if(trigger.isInsert && trigger.isAfter){
    //     system.debug('trigger.new is  - ' + trigger.new);

    //     list<account> newAccount = trigger.new;

    //     system.debug('total account interested = ' + newaccount.size());
    //     for(account acc : newAccount){
    //         system.debug('account id is = ' + acc.id + ', account name is ' + acc.Name);
    //     }
    // }
    
    
    
    // system.debug('--------------START-----------------------');
    // system.debug('trigger.isBefore = ' + trigger.isBefore);
    // system.debug('trigger.isAfter = ' + trigger.isAfter);
    // system.debug('trigger.isInstert = ' + trigger.isInsert);
    // system.debug('trigger.isUpdate = ' + trigger.isUpdate);

    
    // if(trigger.isBefore && trigger.isInsert){
    //     system.debug('before insert account trigger fired');

    // }
    // if(trigger.isAfter && trigger.isUpdate){
    //     system.debug('before update trigger called');

    // }
    // if (Trigger.isUpdate && Trigger.isBefore) {
    //     system.debug('before update trigger fired');
    // }
    // if (Trigger.isUpdate && Trigger.isAfter) {
    //     system.debug('after update trigger fired');
    // }
    // system.debug('-----------------END------------------------');
    
    
    // system.debug('trigger.isBefore = ' + trigger.isBefore);
    // system.debug('trigger.isAfter = ' + trigger.isAfter);

    // if(trigger.isAfter){
    //     system.debug('after insert account trigger called');

    // }

    // if(trigger.isBefore){
    //     system.debug('before insert account trigger fired');

    // }
    // system.debug('------------');
}
