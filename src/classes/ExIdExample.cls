public with sharing class ExIdExample {
    public ExIdExample() {
         Opportunity newOpportunity = new Opportunity(
         Name='OpportunityWithAccountInsert',
         StageName='Prospecting',
         CloseDate=Date.today().addDays(7));

         // Create the parent record reference.
         // An account with external ID = 'SAP111111' already exists.
         // This sObject is used only for foreign key reference
         // and doesn't contain any other fields.
         Account accountReference = new Account(Id='SAP111111');                

         // Add the account sObject to the opportunity.
         newOpportunity.Account = accountReference;

         // Create the opportunity.
         Database.SaveResult results = Database.insert(newOpportunity);

    }
}