public without sharing class RichTextAreaExampleController {
    public boolean showButton{get;set;}
    
    public Account acc{get;set;}
    
    public RichTextAreaExampleController(){
        this.acc = [SELECT Name,RichText_Area__c FROM Account LIMIT 1];
    }
    
    public void updateAccount(){
        if(String.isBlank(this.acc.RichText_Area__c)){
            ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR,'Fill the area!'));
            return;
        }
        update this.acc;
    }
}
