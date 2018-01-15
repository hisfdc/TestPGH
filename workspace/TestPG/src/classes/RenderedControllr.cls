Public class RenderedControllr {
 Public Boolean ShowpageBlockFlag{get;set;}
 Public Account accRec{get;set;}

  Public RenderedControllr(){
   
   ShowpageBlockFlag = true;
   accrec= null;
  }
   
  Public void ShowBlockMethod(){
  if(ShowpageBlockFlag = true)
  {
  accRec = [select name,id,accountnumber from account limit 1];
  }
  
 }
  //ShowpageBlockFlag = false;
   //accRec= null;
    
 }