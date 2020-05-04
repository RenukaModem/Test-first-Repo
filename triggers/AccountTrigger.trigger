trigger AccountTrigger on Account (after update) {
    //prepare an empty Map of ID-to-Account for your updates
    Map<ID, Account> acctMapToUpdate = new Map<Id, Account>();
    
    //prepare a for-loop you can use to compare old and new field values 
    for(Integer i = 0 ; i < trigger.new.size() ; i++){
        Account old = trigger.old[i];
        Account nw = trigger.new[i];
        
        //Evaluate Custom Settings to decide whether to execute actions 
        //if(Org_Exceptions__c.getOrgDefaults().Bypass_Triggers__c){//Returns only the Organization values, regardless of user
        //if(Org_Exceptions__c.getInstance().Bypass_Triggers__c){//Returns values based on User and User's Profile
        //if(Feature_Toggles__c.getValues('AccountTrigger').Activated__c){}//Returns setting for specific toggle record
            //Check if the value of TickerSymbol changed
            if(old.TickerSymbol != nw.TickerSymbol){
                //Open the account record for editing and change the Rating field 
                Account a = new Account(Id = nw.Id, Rating = 'Needs Evaluation');
                //Add the account record to your map
                acctMapToUpdate.put(nw.Id, a);
            }            
    }
    //Check if your Map has any records
    if(acctMapToUpdate.size() > 0){
        //update the account records in your map
        update acctMapToUpdate.values();
    }
}