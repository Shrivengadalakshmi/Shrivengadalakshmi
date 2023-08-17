public with sharing class AccountAddressValidation implements Queueable  {
    Id AccountId;
    
    public AccountAddressValidation(Id AccountId) {
        this.AccountId = AccountId;

    }
    public void execute(QueueableContext context){
        Account currentAccount = [SELECT BillingStreet , BillingCity , BillingPostalCode,BillingState,BillingCountRY From Account Where Id = AccountId];
        Http httpConnection = new Http();
        HttpRequest request = new HttpRequest();
        HttpResponse response = new HttpResponse();
        request.setEndpoint('');
        request.setMethod('POST');
        request.setBody(logRecord.Request_Body__c);
        response = httpConnection.send(request);
        System.debug(response.getBody());

        System.debug(response.getStatusCode());

        logRecord.Response_Body__c = response.getBody();
             
        }


    }

    
       