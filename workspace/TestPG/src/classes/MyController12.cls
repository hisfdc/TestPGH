public class MyController12 {
private final Account account;
public string site {get; set; }
public MyController12() {
account = [SELECT Id, Name, Site FROM Account WHERE Id = :ApexPages.currentPage().getParameters().get('id')];
}
public Account getAccount() {
return account;
}

public PageReference save() {
update account;
return null;
}
}