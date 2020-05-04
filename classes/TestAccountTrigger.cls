@isTest
public class TestAccountTrigger {
    
    @testSetup
    static void initData(){
        Account a0 = new Account(Name = 'Account Zero', Industry = 'Finance');
        insert a0;
        
        Account a1 = new Account(Name = 'Account One', Industry = 'Finance');
        insert a1;
        
        /* These require you to create Custom Settings and their Custom Fields before you can save it in Apex
        Feature_Toggles__c toggles = new Feature_Toggles__c(Name = 'AccountTrigger', Activated__c = True);
        insert toggles;

        Org_Exceptions__c exception1 = new Org_Exceptions__c(Bypass_Triggers__c = True);
        insert exception1;
        */
    }
    
    static testMethod void testAll(){
        List<Account> getAccts = [Select ID from Account];
        
        List<Account> acctsToUpdate = new List<Account>();
            
        acctsToUpdate.add(new Account(Id = getAccts[0].Id, TickerSymbol = 'aZero'));
        acctsToUpdate.add(new Account(Id = getAccts[1].Id, TickerSymbol = 'aOne'));
        
        update acctsToUpdate;
        
        List<Account> updatedAccts = [Select ID, Rating from Account];
        for(Account a : updatedAccts){
            System.assertEquals('Needs Evaluation', a.Rating, 'This was supposed to match if TickerSymbol changed');
        }
    }
    static testMethod void negativeTest(){
        List<Account> getAccts = [Select ID from Account];
        
        List<Account> acctsToUpdate = new List<Account>();
            
        acctsToUpdate.add(new Account(Id = getAccts[0].Id, Industry = 'Banking'));
        acctsToUpdate.add(new Account(Id = getAccts[1].Id, Industry = 'Banking'));
        
        update acctsToUpdate;
        
        List<Account> updatedAccts = [Select ID, Rating from Account];
        for(Account a : updatedAccts){
            System.assertNotEquals('Needs Evaluation', a.Rating, 'This was supposed to match only if TickerSymbol changed');
        }
    }
}