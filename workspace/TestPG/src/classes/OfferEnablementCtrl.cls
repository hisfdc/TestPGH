public class OfferEnablementCtrl
    {

    public String offerRecords { get; set; }

    public OfferEnablementCtrl() {

    }


        public OfferEnablementCtrl(ApexPages.StandardController controller) 
        {
            accountRecords = new List<Account>();

            accountRecords = [select id,Name,OwnerId,Owner.name from Account];
        }
        String recordId;
        public List<Account> accountRecords{get;set;}


}