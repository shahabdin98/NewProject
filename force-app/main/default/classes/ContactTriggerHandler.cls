public class ContactTriggerHandler {
    public static void ContactUpdateValidation1(list<contact> triggerNew, list<contact> triggerOld, map<id, contact> triggerNewMap, map<id, contact> triggerOldMap) {

        for(contact eachContact: triggerNew){
            if(eachContact.LeadSource == 'Web'){
                eachContact.addError('Cannot Update contact where lead source = "Partner Referral"');
            }
        }

    }
    public static void contactUpdateValidation2(List<contact> cntTriggerNew, List<contact> cntTriggerOld,
    Map<id, contact> cntTriggerNewMap, Map<id, contact> cntTriggerOldMap){
        for(contact eachContact: cntTriggerNew){
                contact oldContact = cntTriggerOldMap.get(eachContact.id);
                if(oldContact.LeadSource != eachContact.LeadSource){
                    string customValidation = system.label.contactvalidation2;
                    eachContact.LeadSource.addError(customValidation);
                }
            }
    }
}

