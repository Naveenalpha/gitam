trigger countcontact on Contact (after insert, after delete, after undelete) {
    
    Set<Id> setId = New Set<Id>();
    List<Account> accList = new List<Account>();
    if(Trigger.isInsert || Trigger.isundelete){
        for(Contact con:Trigger.new)
        {
			setId.add(con.AccountId);
        }
    }
    if(Trigger.isDelete){
		for(Contact con:Trigger.old)
        {
			setId.add(con.AccountId);
        }
    }
    for (Account acc:[SELECT Id,Number_Of_Contacts__c,(SELECT Id,AccountId, LastName from Contacts) from Account WHERE Id IN :setId]){
		List<Contact> conList = acc.Contacts;
        acc.Number_Of_Contacts__c = conList.size();
        accList.add(acc);
    }
    update accList;

}