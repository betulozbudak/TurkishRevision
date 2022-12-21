trigger ContactTrigger on Contact (before insert,before update,after insert,after update) {
    if(trigger.isBefore && trigger.isInsert){
        ContactTrigger.otherPhoneOfContact2(trigger.new,trigger.newMap);
    }
    
    
/*    if(trigger.isAfter && trigger.isInsert){
        ContactTrigger.otherPhoneOfContact(trigger.new,trigger.newMap);
    }
*/
}
