public class NumberDivBy9 {
    public static void numberdivisibleby9() {
        for (Integer i = 1; i <= 100; i++) {
            if (Math.mod(i,9) != 0) {
                System.debug(i);
            }
        i++;
        }
    }
    public static Integer sumTwoNumbers(Integer number1, Integer number2)
    {
       Integer add = number1 + number2;
            return add;
       }
       
    public static void generatePyramid() 
    {
        Integer numbers = 1;
            for (Integer i = 1; i <= 4; i++)
             {
                 for (Integer j = 1; j <= i; j++)
                  {
                   System.debug(numbers);
                   numbers++;
                 }
            System.debug('');
        }
    }
    

    public static String reverseString(String input) {
        string reverseName=input.reverse(); 
        return reverseName;
    }
    public static void primeNumber(){
        for (Integer i = 1; i <= 100; i++) {
         
              if (Math.mod(i,2) == 1) {
                System.debug(i);
                 }
            }
    }
    
    public static Lead createRecord(string lastname  ,string email , string company){
       
        Lead leadRecordToInsert = new Lead();
        leadRecordToInsert.Company = Company;
        leadRecordToInsert.LastName = lastname;
        leadRecordToInsert.Email = email;
        insert leadRecordToInsert;
        return leadRecordToInsert;
    }
    public static Lead createDefaultDob(string lastname  ,string email , string company,Date DateofBirth){
        if(DateofBirth==null){
            date Dob = date.newInstance(1990, 01, 01);
            DateofBirth=Dob;
        }
        Lead leadRecordToInsert = new Lead();
        leadRecordToInsert.Company=Company;
        leadRecordToInsert.LastName=lastname;
        leadRecordToInsert.Date_of_Birth__c=DateofBirth;
        leadRecordToInsert.Email = email;
        insert leadRecordToInsert;
        return leadRecordToInsert;
       
        }
     public static void insertContactWheneverAccountIsCreated(String lastName) {
// Create a new Account record.
        Account newAccountRecord = new Account();
// Set the Name attribute of the Account.
        newAccountRecord.Name = lastName;
 // Insert the Account record into the database.
        insert newAccountRecord;
// Create a new Contact record associated with the Account.
         Contact newContactRecordAssociatedWithAccount = new Contact();
// Set the AccountId and LastName attributes of the Contact.
           newContactRecordAssociatedWithAccount.AccountId = newAccountRecord.Id;
              newContactRecordAssociatedWithAccount.LastName = lastName;
// Insert the Contact record into the database.
             insert newContactRecordAssociatedWithAccount;
     }

     public static void createLeadsInBulk(Integer numbers) {
 // Create a list to store multiple Lead records.
         List<Lead> listOfLeadThatCreatedInBulk = new List<Lead>();
// Loop to create the specified number of Lead records.
             for (Integer i = 1; i <= numbers; i++) {
// Create a new Lead record.
              Lead newLeadRecord = new Lead();
// Set the FirstName,LastName,Email and Company attributes of the Lead.
              newLeadRecord.FirstName='Test';
              newLeadRecord.LastName = 'Test' + i;
                 newLeadRecord.Company = '4iapps';
                     newLeadRecord.Email='test.test'+i+'@4iapps.com';
// Add the Lead record to the list.
                 listOfLeadThatCreatedInBulk.add(newLeadRecord);
             }
// Output the list of Lead records to the debug log.
                     system.debug(listOfLeadThatCreatedInBulk);
// Insert all the Lead records in the list into the database.
                      insert listOfLeadThatCreatedInBulk;
     }
}

 
























































