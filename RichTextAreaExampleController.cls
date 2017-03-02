public without sharing class RichTextAreaExampleController {
    public boolean showButton{get;set;}
    
    public Account acc{get;set;}
    
    public RichTextAreaExampleController(){
        this.acc = [SELECT Name,Rich_Text_Area__c FROM Account LIMIT 1];
    }
    
    public void updateAccount(){
        if(String.isBlank(this.acc.Rich_Text_Area__c)){
            ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR,'Fill the area!'));
            return;
        }
        update this.acc;
    }
}
