public with sharing class AccountSchedule implements Schedulable{
    public void execute(SchedulableContext sc){
        database.executeBatch(new accountsBatch());
    }
}