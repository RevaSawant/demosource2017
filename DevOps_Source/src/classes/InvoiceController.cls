public class InvoiceController{

public Id InvoiceId {get;set;}
 public list<Invoice__c> searchInvoiceList{get;set;}
  public String searchValue {get;set;}
  public boolean clickSearch {get;set;}
  public Datetime currentTime {get;set;}
  
  public InvoiceController () {
  clickSearch =true;
  currentTime = system.now();
  }   
  public list<Invoice__c> invoiceList{get;set;}
  public list<Line_Item__c> lineItemList{get;set;}
    
    public List<Invoice__c> getListOfInvoices() {
          invoiceList= [select id,Name,Invoice_Total__c,Status__c from Invoice__c];
          return invoiceList;
    }
    
    public PageReference ViewLineItem() {  
    lineItemList = [select id,name,Quantity__c,Line_Item_Total__c,invoice__c from Line_Item__c where Invoice__c = :InvoiceId];
        return null;
    }

     public PageReference searchInvoice () {
    clickSearch=false;
    searchInvoiceList =[select id,name,Invoice_Total__c,Status__c from Invoice__c where name like :'%'+searchValue+'%'];
    return null ;
    }
     public PageReference BackToHome() {
    PageReference p = new PageReference('/apex/MerchandiseTabPage');
    p.setRedirect(true);
    return p;
    }
     public PageReference GetLineItem() {  
    lineItemList = [select id,name,Quantity__c,Line_Item_Total__c,invoice__c from Line_Item__c ];
        return null;
    }
    
      public PageReference checkforDetails() {  
      	
    lineItemList = [select id,name,Quantity__c,Line_Item_Total__c,invoice__c from Line_Item__c ];
        return null;
    }
 
}