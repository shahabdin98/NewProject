public class Lists {
    public static string candidatesList(integer indx){
        list<string> listCandidates = new list<string>();
        listCandidates.add('Marc');
        listCandidates.add('Elon');
        listCandidates.add('Bill');
        listCandidates.add('Marc');
        system.debug('candidates are ' + listCandidates);

        string valueAt3 = listCandidates[3];
        system.debug('value at index 3 ' + valueAt3);

        string returnString1 = '';
        if(indx < listCandidates.size()){
            returnString1 = listCandidates[indx];
        } else {
            returnString1 = 'No value found';
        }
        return returnString1;

        // string returnString = '';
        // returnString = listCandidates[indx];
        // return returnString;
    }

    public static void randomIntegerLists() {
        List<integer> listInteger = new List<integer>();
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(15);
        listInteger.add(15);

        Integer index3Value = listInteger.get(3);

        Integer Integer3Value2 = listInteger[3];

        system.debug('index 3 value is '+ index3Value );
        system.debug('');
    }
    public static void allCats(){
        cat falconsCat = new cat('fluggy', 'white');
        cat ShahabsCat = new cat('simba', 'black');
        cat BobsCat = new cat('smokey', 'Pink');

        list<cat> cats = new list<cat>();
        cats.add(falconsCat);
        cats.add(ShahabsCat);
        cats.add(BobsCat);
        cats.add(ShahabsCat);

        system.debug('All cats are ' + cats);

        // if(!cats.isEmpty()){

        // }
    }
}
