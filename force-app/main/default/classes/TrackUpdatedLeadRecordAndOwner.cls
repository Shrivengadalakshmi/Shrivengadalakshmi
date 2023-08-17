public with sharing class TrackUpdatedLeadRecordAndOwner implements Queueable {
    Id leadId;
    public TrackUpdatedLeadRecordAndOwner(Id leadId) {
        this.leadId=leadId;
     }
      public void execute(QueueableContext context){date
        List<LeadHistory> updatedLead = [ SELECT 
                                            CreatedById, 
                                            CreatedDate,  
                                            LeadId,
                                            NewValue, 
                                            OldValue,
                                            CreatedBy.Name 
                                    FROM 
                                            LeadHistory
                                    WHERE   
                                            LeadId=:leadId ];
        for(LeadHistory currentLead:updatedLead)
        {
            System.debug('Old Value Of The Lead Record Is '+currentLead.OldValue);
            System.debug('New Value Of The Lead Record Is '+currentLead.NewValue);
            System.debug('Date And Time Of The Lead Record When Change Introduced '+currentLead.CreatedDate);
            System.debug('User Who Intiated The Change '+currentLead.CreatedBy.Name);
        }
}
}