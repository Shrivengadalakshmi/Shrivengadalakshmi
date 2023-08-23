 public with sharing class GetContacts {
    @AuraEnabled
    public static List<contact> getContactList(){
             List<contact> tenContact = [SELECT Name , Phone
                               FROM Contact
                                LIMIT 10];  

    return tenContact;
    }
 }