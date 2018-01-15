public class controllermethod 
{
   public  Project__c newproj{get;set;}
   public Module__c  module{get;set;}
public List<Module__c> moduleList{get;set;}

    public controllermethod()
    {
        moduleList=new List<Module__c>();
         newproj = new Project__c();
         module=new Module__c();
         moduleList.add(module);
    }
    public PageReference closePopup() 
    {
        return null;
    }

    public PageReference Add(){ 
    Module__c module=new Module__c(); 
    moduleList.add(module); 
    return null;
    }
    /*
  public void Add()
  { 

      Module__c module=new Module__c(); 
      moduleList.add(module); 
  }
*/
    public PageReference savecreatenew() 
    {
        insert  newproj; 
        for (Module__c module :moduleList) {
            module.Project__c = String.valueOf(newproj.get('Id'));
        } 
        insert moduleList; 

    module.clear();
    moduleList.clear();
    newproj.clear() ;
        return null;
    }


}