public with sharing class AccountInvocable {
    @InvocableMethod(label='Delete Closed Opps'
    description= 'Deletes all the closed Opps when an Account goes inactive or hold'
    category='Account')
    public static void deleteOpportunities(List<id> accountIds){
        List<Opportunity> opps = [select id from Opportunity where AccountId in :accountIds and stageName in ('closed lost', 'closed won')];

        if(!opps.isEmpty()){
            delete opps;
        }
    }
}
