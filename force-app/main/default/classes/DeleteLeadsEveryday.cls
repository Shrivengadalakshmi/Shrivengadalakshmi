public with sharing class DeleteLeadsEveryday implements Schedulable {
    public void execute(SchedulableContext Context) {
          List<lead> LeadsToDelete = [SELECT Id , Name from Lead WHERE Name LIKE '%Test%' ];
              delete LeadsToDelete;
    List<String>toAddresses = new List<String>(); 
    List<User>u = [SELECT Email FROM User WHERE Profile.Name = 'System Administrator'];
         for(user ui:u){
      toAddresses.add(ui.Email);
    }
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
          mail.setToAddresses(toAddresses);
              String body = 'Leads has been Deleted';
                 mail.setHtmlBody(body);
    System.debug('mails'+mail);
             Messaging.sendEmail(new Messsaging.SingleEmailMessage[]{mail});
}
}
