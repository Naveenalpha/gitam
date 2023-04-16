trigger ContactTrigger on Contact (before insert) {
    for(Contact con:Trigger.new){
        if(con.Phone == null && con.MobilePhone  == null){
            con.addError('Both phone and mobile phone cannot be null');
        }
        else if(con.Phone  == null && con.MobilePhone != null){
            con.Phone = con.MobilePhone;
        }
        
    }

}