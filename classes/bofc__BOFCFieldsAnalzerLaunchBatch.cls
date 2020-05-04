/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class BOFCFieldsAnalzerLaunchBatch implements Database.Batchable<SObject> {
    global List<String> fields;
    global Map<String,Set<String>> mapPickValues;
    global Map<String,bofc__BOFCFieldsAnalyzerResult__c> mfielst;
    global String obj;
    global Map<String,Schema.SObjectField> objectFields;
    global String paid {
        get;
        set;
    }
    global String Query;
    global BOFCFieldsAnalzerLaunchBatch(String obj, String paid, String f, String v) {

    }
    global void execute(Database.BatchableContext BC, List<SObject> scope) {

    }
    global void finish(Database.BatchableContext BC) {

    }
    global Database.QueryLocator start(Database.BatchableContext BC) {
        return null;
    }
}
