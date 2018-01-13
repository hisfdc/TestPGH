trigger HelloWorldTrigger on Course__c (before insert) {
Course__c [] courses= Trigger.new;
MyHelloWorld.applyDiscount(courses);
}