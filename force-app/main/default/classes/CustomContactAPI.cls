@RestResource(urlMapping='/ContactCustom/*')
global class CustomContactAPI {
    @httpGet
    global static contact getContactId(){
        System.debug('Custom Contact API Call Success');
        RestRequest request = RestContext.request;
        string uri = request.requestURI;
        System.debug('URI: ' + request.requestURI);
        integer idStartIndex = uri.lastIndexOf('/')+1;
        System.debug('idStartIndex = ' + idStartIndex);
        string contactId = uri.substring(idStartIndex);
        System.debug('contId: ' + contactId);
        // Contact c = new Contact();
        // id contactid2 = '0038c00002iImLWAA0';
        Contact c1 = [select id, name, phone, Account.Name from contact where id =:contactid];
        System.debug(c1);
        return c1;
    
    }

    @httpPost 
    global static id createContact(string fname, string lname, string emailId, string phoneNumber, string accountId
    ){
        contact c = new contact();
        c.FirstName = fname;
        c.lastName = lname;
        c.email = emailId;
        c.phone = phoneNumber;
        c.AccountId = accountId;
        insert c;
        return c.id;
    }

    @httpDelete
    global static string deleteContactId(){
        System.debug('Custom Contact API Call Success');
        RestRequest request = RestContext.request;
        string uri = request.requestURI;
        System.debug('URI: ' + request.requestURI);
        integer idStartIndex = uri.lastIndexOf('/')+1;
        System.debug('idStartIndex = ' + idStartIndex);
        string contactId = uri.substring(idStartIndex);
        System.debug('contId: ' + contactId);
        // Contact c = new Contact();
        // id contactid2 = '0038c00002iImLWAA0';
        contact c = [select name from Contact where id =: contactId];
        Contact c1 = new contact(id=contactId);
        delete c1;
        System.debug('Contact deleted: ' + c);
        return 'contact deleted with ' + contactId;
        
    
    }

    @httpPatch
    global static string updateContact(string emailId, string phoneNumber){
        System.debug('Custom Contact API Call Success');
        RestRequest request = RestContext.request;
        string uri = request.requestURI;
        System.debug('URI: ' + request.requestURI);
        integer idStartIndex = uri.lastIndexOf('/')+1;
        System.debug('idStartIndex = ' + idStartIndex);
        string contactId = uri.substring(idStartIndex);
        System.debug('contId: ' + contactId);
        // Contact c = new Contact();
        // id contactid2 = '0038c00002iImLWAA0';
        // contact c = [select name from Contact where id =: contactId];
        Contact c = new contact();
        c.id = contactId;
        c.email = emailId;
        c.phone = phoneNumber;
        update c;
        // System.debug(' Updated Record: ' + c);
        return 'contact updated with ' + contactId;

    }

    // @httpPut
    // global static string upsertContact(contact con){
    //     string returnString;
    //     if(con.id == null){
    //         returnString = 'Contact created with Id';
    //     } else {
    //         returnString = 'Contact updated with id';
    //     }
    //     upsert con;
    //     return returnString+con.id;
    // }    

    @httpPut
    global static List<id> upsertContact(List<Contact> con){
       
        upsert con;

        list<id> ids = new list<id>();
        for (contact cons : con) {
            ids.add(cons.id);
        }
        return ids;
    }
    
}
