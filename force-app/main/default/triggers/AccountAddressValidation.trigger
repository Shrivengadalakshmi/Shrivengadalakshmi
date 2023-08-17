trigger AccountAddressValidation on Account (after insert , after Update) {
    for(Account currentAccount:trigger.new){
        if(Account.By_Pass_Address_Validation__c == false){
        System.enqueueJob(new AccountAddressValidation(currentAccount.Id));
    }
}
}
