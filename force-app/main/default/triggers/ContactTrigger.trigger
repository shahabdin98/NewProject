trigger ContactTrigger on Contact (before insert, after insert, before update, after update, after delete, after undelete) {
    if(trigger.isBefore && trigger.isUpdate){
        ContactTriggerHandler.contactUpdateValidation1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        ContactTriggerHandler.contactUpdateValidation2(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    Set<Id> accountIds = new Set<Id>();
    if(trigger.isAfter){
        if(trigger.isInsert || trigger.isUpdate || trigger.isUndelete){
            for (contact c : trigger.new) {
                if(c.accountid != null){
                    accountIds.add(c.AccountId);
                }
            }
        }
        if(trigger.isUpdate || trigger.isdelete){
            for (contact c : trigger.old) {
                if(c.accountid != null){
                    accountIds.add(c.AccountId);
                }
            }
        }

        if(!accountIds.isEmpty()){
            List<account> accList = [select id, number_of_contacts__c, (select id from contacts)
            from account where id in :accountIds];

            if(!accList.isEmpty()){
                list<account> updateAccList = new list<account>();
                for (account eachAcc : accList) {
                    List<contact> listContacts = eachAcc.contacts;
                    
                    Account acc = new account();
                    acc.id = eachAcc.id;
                    acc.number_of_contacts__c = listContacts.size();
                    updateAccList.add(acc);
                }
                if(!updateAccList.isEmpty()){
                    update updateAccList;
                }
            }
        }
    }


// trigger ContactTrigger on contact (before insert, after insert, before update, after update) {
//     if(trigger.isBefore && trigger.isUpdate){
//         // ContactTriggerHandler.contactUpdateValidation1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
//         ContactTriggerHandler.contactUpdateValidation2(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
//     }
//     Set<Id> accountIds = new Set<Id>();
//     if(trigger.isAfter){
//         if(trigger.isInsert || trigger.isUpdate || trigger.isUndelete){
//             for (contact c : trigger.new) {
//                 if(c.accountid != null){
//                     accountIds.add(c.AccountId);
//                 }
//             }
//         }
//         if(trigger.isUpdate || trigger.isdelete){
//             for (contact c : trigger.old) {
//                 if(c.accountid != null){
//                     accountIds.add(c.AccountId);
//                 }
//             }
//         }

//         if(!accountIds.isEmpty()){
//             List<account> accList = [select id, number_of_contacts__c, (select id from contacts)
//             from account  account where id in :accountIds];

//             if(!accList.isEmpty()){
//                 list<account> updateAccList = new list<account>();
//                 for (account eachAcc : accList) {
//                     List<contact> listContacts = eachAcc.contacts;
                    
//                     Account acc = new account();
//                     acc.id = eachAcc.id;
//                     acc.number_of_contacts__c = listContacts.size();
//                     updateAccList.add(acc);
//                 }
//                 if(!updateAccList.isEmpty()){
//                     update updateAccList;
//                 }
//             }
//         }
//     }

    
    
    
    
    
    
    
    
    // if(trigger.isBefore && trigger.isUpdate){
    //     ContactTriggerHandler.ContactUpdateValidate(trigger.New, trigger.Old, trigger.NewMap, trigger.OldMap);
    // }
    
    
    // if(trigger.isBefore){
    //     system.debug('we r in before trigger');
    //     if(trigger.isInsert){
    //         system.debug('before insert trigger fired');

    //     }
    //     if(trigger.isUpdate){
    //         system.debug('before update trigger');
    //     }

    // }
    // if(trigger.isAfter){
    //     system.debug('we are in After trigger');
    //     if(trigger.isInsert){
    //         system.debug('After insert trigger');

    //     }
    //     if(trigger.isUpdate){
    //         system.debug('After update trigger');

            
    //     }
    // }
}