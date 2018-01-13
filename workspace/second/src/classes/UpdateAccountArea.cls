global class UpdateAccountArea implements Database.Batchable<sObject> {
//map of userid - user
Map<Id, User> ownerMap = new Map<Id, User>();

//Constructor initialization
global UpdateAccountArea(Map<Id, User> owners) {
ownerMap = owners;
}

//Quuery method.
global Database.QueryLocator start(Database.BatchableContext BC) {
return DataBase.getQueryLocator([SELECT Id,Area__c, OwnerId FROM account WHERE OwnerId IN : ownerMap.keySet()]);
}

//Execute Method.
global void execute(Database.BatchableContext BC,List<Account> scopeAcc) {

for (Integer i=0;i<scopeAcc.size();i++){
scopeAcc.get(i).Area__c=ownerMap.get(scopeAcc.get(i).OwnerId).Team__c;
}
update scopeAcc;
}

//Finish method to execute at last.
global void finish(Database.BatchableContext BC) {
//Send an email to the User after your batch completes
Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
String[] toAddresses = new String[] {'sfdcsrini@gmail.com'};
mail.setToAddresses(toAddresses);
mail.setSubject('Apex Batch Job is done');
mail.setPlainTextBody('The batch Apex Job Processed Successfully');
Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
}
}