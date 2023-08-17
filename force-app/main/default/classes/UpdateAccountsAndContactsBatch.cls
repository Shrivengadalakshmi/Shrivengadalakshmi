public class UpdateAccountsAndContactsBatch implements Database.Batchable<SObject> {
    public UpdateAccountsAndContactsBatch(){

    }
    

    public Database.QueryLocator start(Database.BatchableContext BC) {
        // Query all accounts and their related contacts
        return Database.getQueryLocator([SELECT Id, Name, (SELECT Id, FirstName, LastName FROM Contacts) FROM Account]);
    }

    public void execute(Database.BatchableContext BC, List<SObject> sc) {
        List<Account> accountsToUpdate = new List<Account>();
        List<Contact> contactsToUpdate = new List<Contact>();

        for (Account acc : (List<Account>)sc) {
            // Generate a unique random number
            Integer randomNumber = generateUniqueRandomNumber();
            
            // Update Account's custom field with the random number
            acc.Custom_Number_Field__c = randomNumber;
            accountsToUpdate.add(acc);

            // Update related Contacts with the same random number
            for (Contact con : acc.Contacts) {
                con.Custom_Number_Field__c = randomNumber;
                contactsToUpdate.add(con);
            }
        }

        // Update Accounts and Contacts
        update accountsToUpdate;
        update contactsToUpdate;
    }

    public void finish(Database.BatchableContext BC) {
        // Perform any post-processing if needed
    }

    // Helper method to generate a unique random number
    private Integer generateUniqueRandomNumber() {
        // Your logic to generate a unique random number goes here
        // You could use a combination of timestamp, random number, etc.
        return Math.abs(Crypto.getRandomInteger());
    }
}
