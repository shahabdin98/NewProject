map<string, country_code__c> mapCC = country_code__c.getall();
// System.debug('Map of country code: ' + mapCC);
for(string eachCountry : mapCC.keyset()){
    System.debug('     Country: ' + eachCountry + ' / Code: ' + mapcc.get(eachcountry).country_code__c);
}
  