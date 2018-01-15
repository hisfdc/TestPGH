public class FHController {

    //public FHController (){
          
  // }

   public Boolean rend1{get;set;}

   public void commandLinkAction(){

      rend1=false;

     // return null;
   }
    public void commandLinkAction1(){
        rend1=true;


    }
public FHController() {
    if(rend1 = true)
        String id = ApexPages.currentPage().getParameters().get('id');
        fhList = [SELECT name FROM course__c];
        
        
    }



    //public String rend1 { get; set; }
    public List<course__c> fhList {get; set;}

    
    public PageReference save() {
        System.debug('COUNT: ' + fhList.size());
        update fhList;
        return null;
    }
}