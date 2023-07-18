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
}




