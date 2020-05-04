public without sharing class LeadService {

    public static void calculateLeadFields(List<Lead> leads){

    	

    }
    
    public static void closeNSSMLead(List<Lead> leads){
    	 	
    }

    /*
     * This method implies that incoming Lead records match following criteria:
     * 1) Lead.Status / Lead.Status__c IN ('Rejected', 'Converted to Order', 'Converted');
     * 2) Lead.RecordType = 'Service_Lead';
     * 3) Lead.CaseId__c != null;
     */
    @InvocableMethod(label='Send notifications on Service Leads' description='Should be applied only to Service Leads created from Case')
    public static void sendNotificationsOnServiceLeads(List<Lead> serviceLeads) {
      
    }

    
}