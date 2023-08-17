trigger LeadTrigger on Lead(after insert) {

       List<Integration_Log__c> integrationLogToBeInserted = new List<Integration_Log__c>();

       for(Lead oneLead:currentLeads)

       {

              Integration_Log__c newLog = new Integration_Log__c();

              newLog.Request_Body__c=oneLead.LastName;

              newLog.Related_Lead__c=oneLead.Id;

              integrationLogToBeInserted.add(newLog);

       }

       Insert integrationLogToBeInserted;

    }