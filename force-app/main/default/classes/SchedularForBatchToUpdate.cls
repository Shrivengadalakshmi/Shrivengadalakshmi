public with sharing class SchedularForBatchToUpdate implements Schedulable{
    public SchedularForBatchToUpdate() {

    }
    public void execute(SchedulableContext Context){
        Database.executeBatch(new UpdateAccountsAndContactsBatch(),2);
    }
}