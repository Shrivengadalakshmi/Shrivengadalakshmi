public with sharing class AccountMaster
{
    @AuraEnabled(cacheable=true)
    public static List<Account> findContactsbyAccount()
    {
        List<Account> tenContacts = [SELECT Name,(SELECT Name, Email, Phone FROM Contacts) FROM Account 
        LIMIT 10];
        return tenContacts;
    }
}