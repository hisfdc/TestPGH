public class Sample {

    public Sample(ApexPages.StandardController controller) {

    }

    public List<WrapperClass> listWrapper {get;set;}
    
    public Sample() {
        List<Category__c> listAcct = [SELECT Name, CatValues__c FROM Category__c ];
        
        if(listAcct.size() > 0) {
            listWrapper  = new List<WrapperClass>();
            
            for(Category__c cat : listAcct) {
                listWrapper.add(new WrapperClass(cat));
            }
        }
    }
    Public String options{get;set;}
    
    // Get the list of suppliers
    public List<SelectOption> getCategories(){
        List<SelectOption> options = new List<SelectOption>();        
        Schema.DescribeFieldResult fieldResult =
        Category__c.CatValues__c.getDescribe();
        List<Schema.PicklistEntry> ple = fieldResult.getPicklistValues();        
        for( Schema.PicklistEntry f : ple)
            {
            options.add(new SelectOption(f.getLabel(), f.getValue()));
            }       
        return options;
    }

    
    public class WrapperClass {
        
        public string name {get;set;} 
        public string cattegoryValues {get;set;}
        public Category__c cat{get;set;}
        public WrapperClass(Category__c cat) {
            this.cat= cat;
        }        
    }
    public List<category__c> catt{get; set;}
    public void save(){  
        catt = new list<Category__c>();
        for (WrapperClass wrap : listWrapper ){
            catt.add(new Category__c(
                //Day_rate__c=decimal.valueOf(wrap.dayrate),
                //Standing_Charge__c=decimal.valueOf(wrap.standing), 
                CatValues__c=wrap.cattegoryValues  )
                //All_Products__c=wrap.elecObj.id
                );
            }

        try {
            insert catt;
        } catch (DmlException ex){
            ApexPages.addMessages(ex);
        } 
    }
    

}