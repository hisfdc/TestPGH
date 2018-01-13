public class OffersPlans {

  
 public list<Offer__C> offerlist{get;set;}
 public string count {get;set;}
 public string multiple{get;set;}

    
    public OffersPlans (){
        offerlist = [select id,name from Offer__C limit 1000];
        
    }
    public pagereference count()
    {
        return null;
    }
    public pagereference multiple()
    {
        return null;
    }     

}