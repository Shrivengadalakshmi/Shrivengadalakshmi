global class SfWebService
{
    webservice List<Account> getAccounts(String accountName)
    {
        accountName = '%'+accountName+'%';
        List<Account> getAllAccounts = [SELECT Id,Name FROM Account WHERE Name Like :accountName];
        return getAllAccounts;
    }
}