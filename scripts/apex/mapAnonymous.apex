map<string, string> mapCntCurrency = new map<string, string>();

mapCntCurrency.put('USA', 'Dollar');
mapCntCurrency.put('Japan', 'Yen');
mapCntCurrency.put('France', 'Euro');
mapCntCurrency.put('India', 'Rupees');
mapCntCurrency.put('India', 'Rupee');
mapCntCurrency.put('Turkey', 'Lira');
mapCntCurrency.put('El Salvador', 'Bitcoin');

string IndiaCurrency = mapCntCurrency.get('India');
string country = 'Turkey';
string TurkeyCurrency = mapCntCurrency.get(country);

system.debug('india currency is ' + IndiaCurrency);
system.debug('Turkey currency is ' + TurkeyCurrency);

set<string> countrySet = mapCntCurrency.keySet();
system.debug('Set of countries: ' + countrySet);
list<string> countryList = mapCntCurrency.values();
system.debug('Currancies in map: ' + countryList);

for(string eachKey: countrySet){
    string printString = 'country is ' + eachKey;
    system.debug(printString);

}


