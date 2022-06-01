public class dmlDemo2 {
    public static void dmlMultipleRecordUpdate_right() {
        list<account> listAcc = [select id, name, description from account order by createddsate limit 150];

        list<account> updateAcc = new list<account>();

        for (account acc: listAcc){
            acc.name += 'vB';
            acc.Description = 'Update via Bulk DML';
            updateAcc.add(acc);
        }
        if(!updateAcc.isEmpty()){
            update updateAcc;
        }
    }
}
