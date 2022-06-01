public class StringDemoClass {
    public void StringMethod1() {
        string sessionDescription = 'learning string\'s methods in apex language';
        
        // Length
        Integer lengthOfStr = sessionDescription.length();
        system.debug('length of string is ' + lengthOfStr);
        
        // capitalize
        String sessionDescriptionInCaps = sessionDescription.toUpperCase();
        system.debug('in caps = ' + sessionDescriptionInCaps);
        system.debug('original string = ' + sessionDescription);

        // contains "apex" ?
        Boolean containsApex = sessionDescription.contains('apex');
        system.debug('contanis apex? ' + containsApex);
        // contains "salesforce" ?
        boolean containsSalesforce = sessionDescription.contains('salesforce');
        system.debug('contains salesforce ? ' + containsSalesforce);
    }
}
