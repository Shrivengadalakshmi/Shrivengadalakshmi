public with sharing class BatchUpdateAccountCheckbox implements database.Batchable<SObject>{
     public BatchUpdateAccountCheckbox() {

     }
         public database.QueryLocator start(database.BatchableContext context){
             string accountsToUpdate = 'Select Id, IsUpdated__c from Account where IsUpdated__c = true';
                 return database.getQueryLocator(accountsToUpdate);
   
         }
     public void execute(database.BatchableContext context, List<SObject> accountsToUpdate){
           for(Account accountToUpdate : (List<Account>)accountsToUpdate){
          accountToUpdate.IsUpdated__c = false;
          }
             update accountsToUpdate;
     }
         public void finish(Database.BatchableContext context){

       

    }

}