public class AccountTriggerHandler {
    public static void updateAccountDescription(list<account> accTriggerNew, 
                                                list<account> accTriggerOld,
                                                map<id, account> accTriggerNewMap,
                                                map<id, account> accTriggerOldMap) {

for(account eachAcc: accTriggerNew){
            boolean updateDesc = false;
            if(accTriggerOldMap == null && eachAcc.Active__c == 'Yes'){
                updateDesc = true;
            }
            if(accTriggerOldMap != null){
                Account oldAccount = accTriggerOldMap.get(eachAcc.ID);
                
                string oldAccountActive = oldAccount.Active__c;
                //check if active is updated
                //active is changed to 'Yes'
                if(eachAcc.Active__c == 'Yes' &&
                    oldAccountActive != 'Yes'
                ) {
                    updateDesc = true;
                }
            }
            if(updateDesc){
                eachAcc.Description = 'Account is now active. Enjoy!';
            }
        }
    }

    
    
    
    public static void updateVIP(list<account> accTriggerNew, 
                                                list<account> accTriggerOld,
                                                map<id, account> accTriggerNewMap,
                                                map<id, account> accTriggerOldMap)
    {

        set<id> setAccId = new set<id>();
        for(account eachAcc: accTriggerNew){
            if(eachAcc.vip__c != accTriggerOldMap.get(eachAcc.id).vip__c){
                setAccId.add(eachAcc.id);
            }
        }


        list<contact> listContacts = [select id, name, account.id, vip__c from contact where account.id in :setAccId];

        for(contact eachContact: listContacts){

            boolean accVIP = accTriggerNewMap.get(eachContact.Account.id).vip__c;
            eachContact.vip__c = accVIP;
        }
        update listContacts;


    }
    
}








