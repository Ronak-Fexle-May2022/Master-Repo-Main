/*
   * Assignment 15
   * sObject example 
   * various operations on sObject
*/
public with sharing class Insert_sObjectExample {
    public static void  InsertsObject() {
         Account a = new Account(Name = 'Acme', BillingCity = 'San Francisco');
         insert a;
         sObject s = [SELECT Id, Name FROM Account WHERE Name = 'Acme' LIMIT 1];
         ID id = s.ID;
         Account convertedAccount = (Account)s;
         convertedAccount.name = 'Acme2';
         update convertedAccount;
         Contact sal = new Contact(FirstName = 'Sal', Account = convertedAccount);

    }
}
