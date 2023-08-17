trigger TrackLeadRecordsAndOwners on Lead (before update) {
          for(lead currentlead:trigger.new){
            System.enqueueJob(new TrackUpdatedLeadRecordAndOwner(currentlead.Id));
        }
    }
