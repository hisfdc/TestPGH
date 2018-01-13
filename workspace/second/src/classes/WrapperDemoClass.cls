public with sharing class WrapperDemoClass {
    Public List<WrapperClassEx> WrapperList{get;set;}
    public WrapperDemoClass(ApexPages.StandardSetController controller) {
      mycon = controller;
      Selectedmeters = mycon.getSelected();
    }
    public List<sobject> Selectedmeters {get; set;} 
    ApexPages.StandardSetController mycon; 

   Public List<WrapperClassEx> getwrapperObj(){
      //List<Account> accList = [Select id,name from account limit 5];
      List<electricity_meter__c> MeterList = [Select id,name from electricity_meter__c where id in: SelectedMeters]; 
      WrapperList = New List<WrapperClassEx>();
      for(electricity_meter__c met: MeterList){
        String meterNameInner = String.valueOf( met.get('Name') );
        WrapperList.add(New WrapperClassEx(met,meterNameInner)); 
      } 
      return WrapperList;
   } 
Public String options{get;set;}
    // Get the list of suppliers
    public List<SelectOption> getSuppliers(){
        List<SelectOption> options = new List<SelectOption>();        
        Schema.DescribeFieldResult fieldResult =
        Electricity_Meter__c.Current_Supplier__c.getDescribe();
        List<Schema.PicklistEntry> ple = fieldResult.getPicklistValues();        
        for( Schema.PicklistEntry f : ple)
            {
            options.add(new SelectOption(f.getLabel(), f.getValue()));
            }       
        return options;
    }

   Public Class WrapperClassEx{
     Public Account accObj{get;set;}
     Public Sobject elecObj{get;set;}
     Public Boolean checkBox{get;set;}
     Public string meterName{get;set;}
     Public double dayrate{get;set;}
     Public double standing{get;set;}
     Public string supplier{get;set;} 
     public list<SelectOption> suppliers{get;set;}
     Public WrapperClassEx(sobject accRec, string meterNameMethodVar){
        elecObj = accRec;
        meterName = meterNameMethodVar;
     }
   }

    public List<Quote__C> newQuotes {get; set;}  

    public void save(){  
        newQuotes = new list<Quote__c>();
        for (WrapperClassEx wrap : WrapperList){
            newQuotes.add(new Quote__c(
                //Day_rate__c=decimal.valueOf(wrap.dayrate),
                //Standing_Charge__c=decimal.valueOf(wrap.standing), 
               // Supplier__c=wrap.suppliers,
                All_Products__c=wrap.elecObj.id
                ));
            }

        try {
            insert newQuotes;
        } catch (DmlException ex){
            ApexPages.addMessages(ex);
        } 
    }
}