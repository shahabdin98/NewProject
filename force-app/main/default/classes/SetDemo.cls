public class SetDemo {
    public static void citySet() {

        set<string> cities = new set<string>();
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Berlin');
        cities.add('Nairobi');
        cities.add('New York');
        cities.add('Philadelphia');
        cities.add('Los Angelas');
        system.debug('Set of cities ' + cities);

    }
    public static void randomIntegerSet() {
        set<integer> setInteger = new set<integer>();
        setInteger.add(10);
        setInteger.add(15);
        setInteger.add(21);
        setInteger.add(25);
        system.debug('set of random integers = ' + setInteger);
    }

    public static set<integer> setFromList(list<integer> intList) {
        set<integer> intSet = new Set<Integer>();
        intSet.addAll(intList);
    }

    public static set<string> capitalizeSet(set<string> setString) {
        set<string> capSet = new set<string>();
        for (string eachStr : setString) {
            string tempStr = eachStr.capitalize();
            capSet.add(tempStr);
        }
        return capSet;
    }
}
