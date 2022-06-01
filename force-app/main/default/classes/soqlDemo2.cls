public class soqlDemo2 {
    public static void parentToChild_Soql1() {
        list<contact> listCnt = [select id, name, account.name from contact where account.industry = 'Energy'];

        for (contact eachContact : listCnt) {
            string accName = eachContact.account.Name;
            system.debug('Contact name is ' + eachContact.name + ', and its acc is ' + accName);
        }
    }

    public static void sampleSoql4() {
        list<account> accountWithOpplist =[select name, annualrevenue, 
        (select name, amount from opportunities where stagename = 'Closed Won') 
        from account where type = 'Customer - Direct'];
        //list<account>
            //--> list<oppotunities>
        for (account eachAcc : accountWithOpplist) {
            system.debug('acc name is ' + eachAcc.name + ', annual revenue is ' + eachAcc.AnnualRevenue);
            List<Opportunity> eachAccOpps = eachAcc.Opportunities;
            for (Opportunity opp : eachAccOpps) {
                system.debug(' opp name ' + opp.Name + ', opp amount ' + opp.Amount); //YES
            }
            system.debug('-----------------');
        }
    }
}
