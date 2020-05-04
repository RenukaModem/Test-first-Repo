/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class BOFCPermissionSetExportAnalzerBatch implements Database.AllowsCallouts, Database.Batchable<SObject> {
    global List<String> ComponentNames;
    global String compTY;
    global List<String> fields;
    global Map<String,String> m_ProfileID_Name;
    global Map<String,Set<String>> mapPickValues;
    global Map<String,bofc__BOFCFieldsAnalyzerResult__c> mfielst;
    global Map<String,Schema.SObjectField> objectFields;
    global String paid {
        get;
        set;
    }
    global List<String> profileName;
    global String Query;
    global BOFCPermissionSetExportAnalzerBatch(List<String> pf, List<String> cf, String sessionId, Map<String,String> m_ProfileID_Name) {

    }
    global BOFCPermissionSetExportAnalzerBatch(List<String> pf, List<String> cf, String sessionId, Map<String,String> m_ProfileID_Name, String tt) {

    }
    global void execute(Database.BatchableContext BC, List<PermissionSet> scope) {

    }
    global void finish(Database.BatchableContext BC) {

    }
    global Database.QueryLocator start(Database.BatchableContext BC) {
        return null;
    }
}
