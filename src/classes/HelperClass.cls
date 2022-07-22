/**
    *  Description     :  Trigger Handler Class,send Welcome mail and Account details,add prefix(SA,FD)

    *  Created By      :  Ronak Pareek
    
    *  Created Date    :  07/21/2022

    *  Revision Logs   :  V1.0 - Created by - Ronak Pareek 07/21/2022

**/

public with sharing class HelperClass {
    //updateMail method used to send Welcome mail and Account details 
    public static void updateMail(List<Account> acct){
        List<Messaging.SingleEmailMessage> emails =  new List<Messaging.SingleEmailMessage>();
        for(Account accounts : acct){
            Messaging.SingleEmailMessage mail =  new Messaging.SingleEmailMessage();
            mail.setToAddresses(new List<String>{accounts.Email__c});
            mail.setSubject('Account is Created for:  '+ accounts.Name);
            String body = 'Hello '+accounts.Name+' your account is created successfully. Your Account Number is : '+ accounts.AccountNumber;
            mail.setHtmlBody(body);
            emails.add(mail);
        }
        Messaging.sendEmail(emails);
    }
    // This method is used for add prefix(SA,FD).
    public static void accUpdate(List<Account> newAccount){
        
            for(Account accounts : newAccount){

                if(accounts.Type=='Saving' ){
                    accounts.AccountNumber='SA-'+accounts.AccountNumber;
                }
                if(accounts.Type=='Fixed Deposit'){
                    accounts.AccountNumber='FD-'+accounts.AccountNumber;
                }
            }
         }
         
         public static void chRecord(List<Account> newAccount,List<Account> oldAccount){
            for(Account acc : newAccount)
            {  
                for(Account acct : oldAccount){
                if(oldAccount != Null && acc.Type != acct.Type)
                {  
                    // if Account Type Changed to Saving
                    if(acc.Type == 'Saving')
                    {
                        if(acct.Type != 'Fixed Deposit')
                            acc.AccountNumber = 'SA-' + acc.AccountNumber;
                        else
                            acc.AccountNumber = acc.AccountNumber.replace('FD','SA');
                    }
                    // if Account Type Changed to FD
                    else if(acc.Type == 'Fixed Deposit' )
                    {
                        if(acct.Type != 'Saving')
                            acc.AccountNumber = 'FD-' + acc.AccountNumber;
                        else
                            acc.AccountNumber = acc.AccountNumber.replace('SA', 'FD');
                    }
                     // if Account Type Changed to Other
                  else if(acct.Type == 'Saving' || acct.Type == 'Fixed Deposit')
                    {
                            acc.AccountNumber = acc.AccountNumber.subString(3);
                    }
                }
            }

          /*  System.debug('Update List ::: Trigger.New ' + Trigger.new);
            System.debug('Update List ::: Trigger.old ' + Trigger.old);*/
 
      /*          for(Account acc : accList){
                If(Trigger.isInsert){
                   
                    System.debug('Check insert list :: Trigger.New'+ Trigger.New);
                    System.debug('Check insert list :: Trigger.Old'+ Trigger.Old);
                }
                if(Trigger.isUpdate){
                     
                    system.debug('Check Update List :: Trigger.New ' + Trigger.New);
                    //system.debug('Check Update List :: Trigger.old ' + Trigger.old);     
                }
            }*/
    }
 }
}