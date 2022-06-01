public class soqlDemo {
    public static void accountSoql_1() {
        list<account> listAcc = [select id, name from account where name like '%A%'];
        system.debug('Account list = ' + listAcc);
        system.debug('Number of records = ' + listAcc.size());

        account acc = [select id, name from account order by createdDate desc limit 1];
        system.debug('latest created account is ' + acc);

    }

    public static void accountSoql_2(){
        account acc = [select id, name, phone, accountnumber from account order by createdDate desc limit 1];
        system.debug('latest account created is ' + acc);

        string accName = acc.name;
        string accPhone = acc.Phone;
        system.debug('account name is ' + accName + ', phone is ' + accPhone);
        system.debug('account number is ' + acc.AccountNumber);

    }

    public static void accountSoql_3() {
        list<account> listAcc = [select id, name, phone, accountnumber from account order by CreatedDate desc];
        system.debug('All accounts: ' + listAcc);

        for (account eachAccount : listAcc) {
            
            id accid = eachAccount.id;
            string accName = eachAccount.name;
            string accPhone = eachAccount.Phone;
            system.debug('account name is ' + accName + ', phone is ' + accPhone);
            system.debug('account number is ' + eachAccount.AccountNumber);
        }
    }

    public static void accountSoql_Filter() {
        string accNameFilter = 'Softinnovas';
        list<account> listAcc = [select id, name from account where name = :accNameFilter];
        system.debug(listAcc);
    }
}
