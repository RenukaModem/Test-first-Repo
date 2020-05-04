trigger testtrigger on Account (before insert) {
    for(Account oneAccount : Trigger.new){
        oneAccount.BillingCountry = 'Germany';
    }
}