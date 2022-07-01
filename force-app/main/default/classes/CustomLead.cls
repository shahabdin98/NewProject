@RestResource(urlMapping='/LeadCustom/*')
global class CustomLead{
    @httpGet
    global static Lead getLeadId(){
        System.debug('Custom Lead API Call Success');
        RestRequest request = RestContext.request;
        string uri = request.requestURI;
        System.debug('URI: ' + request.requestURI);
        integer idStartIndex = uri.lastIndexOf('/')+1;
        System.debug('idStartIndex = ' + idStartIndex);
        string LeadId = uri.substring(idStartIndex);
        System.debug('LeadId: ' + LeadId);
        Lead l = [select id, name, phone from lead where id =:LeadId];
        System.debug(l);
        return l;
    
    }

    @httpPost 
    global static id createLead(string fname, string lname, string company, string status
    ){
        lead l = new lead();
        l.FirstName = fname;
        l.lastName = lname;
        l.company = company;
        l.status = status;
        insert l;
        return l.id;
    }

    @httpDelete
    global static string deleteLeadId(){
        System.debug('Custom Lead API Call Success');
        RestRequest request = RestContext.request;
        string uri = request.requestURI;
        System.debug('URI: ' + request.requestURI);
        integer idStartIndex = uri.lastIndexOf('/')+1;
        System.debug('idStartIndex = ' + idStartIndex);
        string leadId = uri.substring(idStartIndex);
        System.debug('contId: ' + leadId);
        // Contact c = new Contact();
        // id contactid2 = '0038c00002iImLWAA0';
        lead l = [select name from lead where id =: leadId];
        delete l;
        System.debug('lead deleted: ' + l);
        return 'Lead deleted with ' + leadId;
        
    
    }

    @httpPatch
    global static id updateLead(string title, string phone){
        RestRequest request = RestContext.request;
        string uri = request.requestURI;
        System.debug('URI: ' + request.requestURI);
        integer idStartIndex = uri.lastIndexOf('/')+1;
        System.debug('idStartIndex = ' + idStartIndex);
        string leadId = uri.substring(idStartIndex);
        // Contact c = new Contact();
        // id contactid2 = '0038c00002iImLWAA0';
        // contact c = [select name from Contact where id =: contactId];
        lead c = new lead();
        c.id = leadId;
        c.title = title;
        c.phone = phone;
        update c;
        // System.debug(' Updated Record: ' + c);
        return c.id;

    }

    @httpPut
    global static List<id> upsertLead(List<Lead> con){
       
        upsert con;

        list<id> ids = new list<id>();
        for (lead cons : con) {
            ids.add(cons.id);
        }
        return ids;
    }
}
