public with sharing class QuotesCallout {
    public static string QUOTES_ENDPOINT = Calloutsinfo__mdt.getall().get('QUOTES').Endpoint__c;
    public static string makeGetCallout() {
        string quote;
        Http http = new http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint(QUOTES_ENDPOINT);
        request.setMethod('GET');
        HttpResponse response = http.send(request);

        if(response.getStatusCode() == 200){
            map<string, string> results = (Map<String, String>) JSON.deserialize(response.getBody(), map<string, string>.class);
        } else {
            System.debug('Something went wrong');
            quote = null;
        }
        return quote;
    }
}
