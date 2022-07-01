public with sharing class AccountTriggerHandler2 {
    public static void getKanyeQuote(List<Account> newList, Map<Id,Account> oldMap){
        //In this method we will identify all the account Ids 
        //for which quote needs to be updated
        Set<Id> accIdsSet = new Set<Id>();
        if(oldMap != null){
            //This will run when the record is updated
            for(Account acc : newList){
                Account oldRec = oldMap.get(acc.Id);
                if(oldRec.GetKanyeQuote__c != acc.GetKanyeQuote__c && acc.GetKanyeQuote__c){
                    accIdsSet.add(acc.Id);
                }
            }
        } else {
            //This will run when new record is created
            for(Account acc : newList){
                if(acc.GetKanyeQuote__c){
                    accIdsSet.add(acc.Id);
                }
            }
        }
        if(!accIdsSet.isEmpty()){
            updateKanyeQuote(accIdsSet);
        }
    }
    @future(callout=true)
    public static void updateKanyeQuote(Set<Id> accIdsSet){
        String quote = QuotesCallout.makeGetCallout();
        List<Account> accList = new List<Account>();
        for(Id accId : accIdsSet){
            Account acc = new Account();
            acc.Id = accId;
            acc.Kanye_Quote__c = quote;
            acc.GetKanyeQuote__c = false;
            accList.add(acc);
        }
        if(!accList.isEmpty()){
            Update accList;
        }
    }
}