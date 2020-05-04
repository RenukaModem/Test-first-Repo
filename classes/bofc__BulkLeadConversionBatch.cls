/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class BulkLeadConversionBatch implements Database.AllowsCallouts, Database.Batchable<SObject> {
    global BulkLeadConversionBatch(Set<String> sLeadIDs, Map<String,String> m_AccName_AccID, String AccID, Boolean doyouwanttocreateOpp, String userID) {

    }
    global BulkLeadConversionBatch(Set<String> sLeadIDs, Map<String,String> m_LeadID_AccID, Map<String,String> m_LeadID_ConID, Map<String,String> m_LeadID_OppID, Map<String,String> m_LeadID_OppName, Map<String,String> m_LeadID_OwnerID, Map<String,Boolean> m_LeadID_OppID_DND) {

    }
    global void execute(Database.BatchableContext BC, List<Lead> scope) {

    }
    global void finish(Database.BatchableContext BC) {

    }
    global Database.QueryLocator start(Database.BatchableContext BC) {
        return null;
    }
}
