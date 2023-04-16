trigger AccountTrigger on Account (before insert,after update) {
    if(Trigger.isInsert){
        for(Account ac:Trigger.new){
	ac.addError('you are not going to save that hahah');
    } 
    }
    
    else if(Trigger.isUpdate){
        for(Account ac:Trigger.new){
		ac.addError('you are not going to update that hahah');
    }
    }
    

}