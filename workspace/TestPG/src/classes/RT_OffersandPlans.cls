public class RT_OffersandPlans {

    
  public string vinayid {get;set;}
    Contact contact = new Contact();
    public list<Account> acclist{get;set;}
    public list<contact> conts {get;set;}
    public list<Contact> listContact{get;set;}
    
    public RT_OffersandPlans(){
        acclist = [select id,name,type,accountnumber,industry,phone from Account limit 1000];
        conts = new list<contact>();
        listContact=new list<Contact>();
        listContact.add(new Contact());
    }
        //showing the all Account Records
    public void showacc(){
        vinayid = ApexPages.currentPage().getParameters().get('acctid');
        conts = [SELECT Birthdate,Department,Email,FirstName,LastName,phone FROM Contact WHERE AccountId =: VinayId];
    }
        //adding the contact rows after click on Add Contact Row button
    Public void addContact()
    {   
        conts.add(new Contact());
    }
        //Saving the Contacts records after add some rows
    public pagereference SaveContact() {      
        PageReference pg = new PageReference('/apex/contact');     
        list<Contact> Conts1= [select id,lastname,firstname,email,birthdate,phone from contact where AccountId=: VinayId];   
        if(Conts.size() != Conts1.Size() )       {
            upsert conts;     
        }
        return null;
    }
 
    

}