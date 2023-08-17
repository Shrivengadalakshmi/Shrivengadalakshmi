public with sharing class OpportunityTriggers {
    public static void UpdateOpportunityName(List<Opportunity> opportunities) {
    for(Opportunity opp : opportunities) {
        if (opp.Account != null && opp.CloseDate != null && opp.StageName != null) {
            String monthName = opp.CloseDate.month().format();
            opp.Name = opp.Account.Name + ' - ' + monthName + ' - ' + opp.StageName;
        }
    }

    }
}