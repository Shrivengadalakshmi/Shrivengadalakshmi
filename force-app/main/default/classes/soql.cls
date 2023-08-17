public with sharing class soql {
    public soql() {
      List<Opportunity> getrelatedAccounts = [SELECT 
        Account.Name, 
        Name, 
        CloseDate, 
        (SELECT Name FROM OpportunityLineItems) 
    FROM Opportunity];
    

    }
    public getcontactsNotRelatedToAccount() {
       List<contact> getcontacts=[ SELECT Id, FirstName, LastName, Email
                                  FROM Contact
                                  WHERE AccountId NOT IN 
                                  (SELECT Id FROM Account)];
    }
    public getAccounts() {
        list<Account> getAccounts =[SELECT Id, Name
                                    FROM Account
                                     WHERE Id NOT IN (SELECT AccountId FROM Contact) ];
    }
   
} 
