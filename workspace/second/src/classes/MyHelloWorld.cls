public class MyHelloWorld {
public static void applyDiscount(Course__c[] Courses) {
for (Course__c c :Courses){
c.name = 'xyz';
}
}
}