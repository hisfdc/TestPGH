trigger UpdateAreaInfoUser on User (after update)  {
Map<id, User> owners = new Map<id, User>();

for (Integer i=0;i<Trigger.new.size();i++) {
if (Trigger.new[i].Team__c!=Trigger.old[i].Team__c) {
owners.put(Trigger.new[i].Id, Trigger.new[i]);
}
}

// You can execute batch apex using trigger using below codes
if (owners.size() > 0) {
Database.executeBatch(new UpdateAccountArea(owners));
}

}