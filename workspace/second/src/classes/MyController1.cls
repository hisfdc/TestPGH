public class MyController1 {
Account account;
public mycontroller1() {
}
public PageReference save() {
update account;
return null;
}
public String getName() {
return 'MyController';
}
public Account getAccount() {
if(account == null)
account = [select id, name, site from Account
where id = :ApexPages.currentPage().getParameters().get('id')];
return account;
}
}