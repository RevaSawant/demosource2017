public with sharing class myController {
    public Datetime currentTime {get;set;}
    
    public myController () 
    {
  		currentTime = system.now();
   }
}