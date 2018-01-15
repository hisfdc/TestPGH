public class Offers {
     
    List<offer__C> tempparent{set;get;}
    public String selectedDocumentId{get;set;}
   
        
@TestVisible   
public class cNodes
{
 public offer__C ooffer{set;get;}
    
    public List<Category__c> parent {get; set;}
    Public offer__C gparent {get;set;}
    
    public cNodes(offer__C gp, List<Category__c> p)
    {
        parent = p;
        gparent = gp;
        ooffer =new offer__C ();
    }
    }
/* end of Wrapper class */ 
  @TestVisible
  Public List<cNodes> hierarchy{set;get;}

Public List<cNodes> getmainnodes()
{
   hierarchy = new List<cNodes>();
  
   tempparent = [Select Id,Name from offer__c limit 10];
   /*for (Integer i =0; i< tempparent.size() ; i++)
   {
       List<Agreement__c> tempchildren = [Select Id,Name,(Select Id,name from Category__c.benefitplan__r) from Category__cwhere CategoryDetails__c= :tempparent[i].Id limit 5];
       hierarchy.add(new cNodes(tempparent[i],tempchildren));
       
    }*/
    
        return hierarchy;
}   
    
}