public with sharing class SampleScenarios {
    //create a record in Account Object
    public static void createNewAccount(String name, String phone) {
        Account newAccount = new Account();
        newAccount.Name = name;
        newAccount.Phone = phone;

        // You can set other fields as needed
        insert newAccount;
    }
    public static void createNewOpp(){
        Opportunity opp = new Opportunity();
       
        opp.Name = 'Ammuravi';
        opp.StageName ='Prospecting';
        opp.CloseDate = '2002-09-08'
        insert opp;
    }
}
