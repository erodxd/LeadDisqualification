trigger LeadDisqualification on Lead (before insert) {
    
    List<Lead> disqualifiedLeads = new List<Lead>();
    //List<Lead> testLeads = new List<Lead>();
    String test = 'test';

    //check for leads with 'test' in their name
    for (Lead leadRecord : Trigger.new) {
        //if (leadRecord.Status != null) {
            if ((leadRecord.FirstName.containsIgnoreCase(test) && leadRecord.FirstName.length() == 4) ||
                (leadRecord.LastName.containsIgnoreCase(test) && leadRecord.LastName.length() == 4)) {
                    disqualifiedLeads.add(leadRecord);
            }
        //}
    }
}