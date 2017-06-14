public class MerchandiseController{
  public list<Merchandise__c> merchandiseList{get;set;}
  public list<Merchandise__c> searchMerchandiseList{get;set;}
  public String searchValue {get;set;}
  public boolean clickSearch {get;set;}
  
  public MerchandiseController () {
  clickSearch =true;  
  }
    
      public List<Merchandise__c> getListOfMerchdise() {
       
          merchandiseList= [select Name,Price__c,Quantity__c from Merchandise__c];
          return merchandiseList;
    }
    public PageReference searchMerchandise () {
    clickSearch=false;
    searchMerchandiseList =[select id,name,Price__c,Quantity__c from Merchandise__c where name like :'%'+searchValue+'%'];
    return null ;
    }
    
    public PageReference BackToHome() {
    PageReference p = new PageReference('/apex/MerchandiseTabPage');
    p.setRedirect(true);
    return p;
    }
}