trigger Oldtrigger on Contact (before update,after insert) {
    for (Contact account : Trigger.new) {
        Contact oldAccount = Trigger.oldMap.get(account.ID);
        system.debug('#####'+oldAccount);
        }
        }