public class AccountQuableExample implements Queueable{
    public List<Account> accList;

    public AccountQuableExample(list<account> accList) {
        this.accList = accList;
    }
    public void execute(QueueableContext context){
        for(account acc : accList){
            acc.name = acc.name + '-- SI';
        }
        update accList;
    }
}
