public with sharing class DynamicCasesExtension {

    public String sObjectList { get; set; }

    public Case c { get; set; }
    public String objectName { get; set; }
    public List<String> objectFields { get; set; }
    public List<Case> SObjectListToShow { get; set; }
    public List<Case> Status { get; set; }

    public DynamicCasesExtension(){
        objectName = 'Case';
        //set the status to the value you need. In your case I assume it is coming in as a parameter. This is to be set only for the first load. 
        c.Status = ApexPages.currentPage().getParameters().get('c.Status');
        //SObjectListToShow = getSObjectList();
        generateList();
    }

    // a new method which will be called everytime the value in the picklist is changed
    public void generateList() {
        SObjectListToShow = caseSObjectList();
    }

    // Getting field list for the sObject. Changed the name of the method.
    public List<Case> caseSObjectList(){
        
        //Change it to c.Status so that it gets set to the value selected from the page.
        String caseStatus = c.Status;
        return Status;
    }

}