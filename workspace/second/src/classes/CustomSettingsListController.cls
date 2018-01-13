public with sharing class CustomSettingsListController {

    public String selected { get; set; }
    

    public PageReference cancel() {
        return null;
    }


    public PageReference save() {
        return null;
    }


    public PageReference Console_Edit() {
        return null;
    }


    public String getLocationLst() {
        return null;
    }


    public String selectedlOC { get; set; }

  public String selectedIso {get;set;}

  public List<selectOption> isoCodes {
    get {
      List<selectOption> options = new List<selectOption>();

      for (ISO_Country__c iso : ISO_Country__c.getAll().values())
        options.add(new SelectOption(iso.ISO_Code__c,iso.Name+' - '+iso.ISO_Code__c));
      return options;

    }
    set;
  }
public List<selectOption> locationlst {
    get {
      List<selectOption> options1 = new List<selectOption>();

      for (LocationLst__c ls : LocationLst__c.getAll().values())
        options1.add(new SelectOption(ls.locationName__c,ls.Name+' - '+ls.locationName__c));
      return options1;

    }
    set;
  }
}