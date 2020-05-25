@isTest
private class LeadDisqualificationTest {
    @isTest static void addLeadWithNameTest() {
        
        Lead lead = new Lead();

        lead.FirstName = 'Test';
        lead.LastName = 'test';
        lead.Status = '';

        insert lead;
    }

}