public with sharing class SalesforceProjectTriggerHandler {
//     public static void createDefaultSalesforceTicket(List<Salesforce_Project__c> spTriggerNew){
//        List<Salesforce_Ticket__c> listST = new List<Salesforce_Ticket__c>();

//        for(Salesforce_Project__c sp: spTriggerNew){
//            Salesforce_Ticket__c st = new Salesforce_Ticket__c();
//            st.Subject__c = 'Default ST';
//            st.Description__c = 'A default ticket for project.';
//            st.Salesforce_Project__c = sp.Id;
//            listST.add(st);
//        }

//        if(!listST.isEmpty()){
//            insert listST;
//        }
//    }
public static void createDefaultSalesforceTicket(List<Salesforce_Project__c> spTriggerNew){
       try{
            List<Salesforce_Ticket__c> listST = new List<Salesforce_Ticket__c>();

            for(Salesforce_Project__c sp: spTriggerNew){
                defaultTicketInfo__c dt = defaultTicketInfo__c.getorgDefaults();

                Salesforce_Ticket__c st = new Salesforce_Ticket__c();
                st.Subject__c = dt.Subject__c;
                st.Description__c = dt.description__c;
                st.Salesforce_Project__c = sp.Id;
                //st.Priority__c = 'High';
                listST.add(st);
            }
    
            if(!listST.isEmpty()){
                insert listST;
            }
       } catch(Exception ex){
           for (salesforce_project__c sp : spTriggerNew) {
               sp.addError('Error in default ticket creation. Please contact your administrator');
           }
       }
      
   }
   @future
   public static void updateProjectDescription(set<id> setProjectIds) {
       system.debug('called future method.');
       List<Salesforce_Project__c> lstSP = [select id, description__c from Salesforce_Project__c where id in :setProjectIds];
       for (salesforce_project__c sp : lstSP) {
           sp.Description__c += ', Updated from FUTURE!';
       }
       system.debug('sp to update = ' + lstSP);
       update lstSP;
   }

   public static void spCompletedStatus(List<Salesforce_Project__c> spTriggerNew, 
   List<Salesforce_Project__c> spTriggerOld,
   Map<id, Salesforce_Project__c> spTriggerNewMap,
   Map<id, Salesforce_Project__c> spTriggerOldMap) {
       //get set<id> where status is changed.
       set<id> spIds = new set<id>();
       for (salesforce_project__c sp : spTriggerNew) {
           //if new record status != old record status
           //status is changed to 'Completed'
            if(sp.Status__c != spTriggerOldMap.get(sp.id).Status__c
            && sp.Status__c == 'Completed'){
                spIds.add(sp.Id);
            }
       }
       if(!spIds.isEmpty()){
         updateTicketStatusCompleted(spIds);
       }
   }
   @future
   private static void updateTicketStatusCompleted(set<id> spIds) {
       List<Salesforce_Ticket__c> listST = [select id, status__c, salesforce_project__c from Salesforce_Ticket__c where Salesforce_Project__c in :spIds and status__c != 'Completed'];
       for (salesforce_ticket__c st : listST) {
           st.Status__c = 'Completed';
       }
       if (!listST.isEmpty()) {
           update listST;
       }
   }
    // public static void createDefaultSalesforceTicket(List<Salesforce_Project__c> spTriggerNew){
    //     List<Salesforce_Ticket__c> listST = new List<Salesforce_Ticket__c>();
 
    //     for(Salesforce_Project__c sp: spTriggerNew){
    //         Salesforce_Ticket__c st = new Salesforce_Ticket__c();
    //         st.Subject__c = 'Default ST';
    //         st.Description__c = 'A default ticket for project.';
    //         st.Salesforce_Project__c = sp.Id;
    //         listST.add(st);
    //     }
 
    //     if(!listST.isEmpty()){
    //         insert listST;
    //     }
    // }

    // public static void spCompletedStatus (List<Salesforce_Project__c> triggernew, List<Salesforce_Project__c> triggerold, map<id, Salesforce_Project__c> triggerNewMap, map<id, Salesforce_Project__c> triggerOldMap) {

    //     Set<Id> spIds = new set<Id>();

    //     for(salesforce_project__c sp : triggernew){
    //         if(sp.status__c != triggerOldMap.get(sp.id).status__c && sp.status__c == 'Completed') {
    //             spIds.add(sp.id);
    //         }

    //     }
    //     if(!spIds.isEmpty()){
    //         // call future method
    //         updateTicketStatusCompleted(spIds);
    //     }

    // }
    // @future
    // private static void updateTicketStatusCompleted(Set<Id> spIds){
    //     List<Salesforce_Project__c> listST = [select id, status__c, Salesforce_Project__c from Salesforce_Ticket__c where Salesforce_Project__c in :spIds and status__c != 'completed'];

    //     for(salesforce_ticket__c st : listST){
    //         st.status__c = 'completed';
    //     }
    //     if(!listST.isEmpty()){
    //         update listST;
    //     }
    // }
}
