trigger UpdateAccountTotalClosedWonAmount on Opportunity ( after update, after delete) {
   Set<Id> accountIdsToUpdate = new Set<Id>();
         // After Insert and After Update
    if (Trigger.isInsert || Trigger.isUpdate) {
        for (Opportunity opp : Trigger.new) {
            if (opp.IsWon && opp.AccountId != null) {
                accountIdsToUpdate.add(opp.AccountId);
            }
        }
    }

    // After Delete
    if (Trigger.isDelete) {
        for (Opportunity opp : Trigger.old) {
            if (opp.IsWon && opp.AccountId != null) {
                accountIdsToUpdate.add(opp.AccountId);
            }
        }
    }

    // Calculate the total closed-won amount for each Account
    Map<Id, Account> accountsMap = new Map<Id, Account>([SELECT Id, Closed_Won_Amount__c, (SELECT Amount FROM Opportunities WHERE IsWon = true) FROM Account WHERE Id IN :accountIdsToUpdate]);

    for (Account acc : accountsMap.values()) {
        Double totalAmount = 0.0;
        for (Opportunity opp : acc.Opportunities) {
            totalAmount += opp.Amount;
        }
        acc.Closed_Won_Amount__c = totalAmount;
    }

    // Update the Account records
    update accountsMap.values();
}


