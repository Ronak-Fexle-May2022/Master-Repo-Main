/**
    *  Description     :  Trigger Handler Class,send Welcome mail and Account details,add prefix(SA,FD)

    *  Created By      :  Ronak Pareek
    
    *  Created Date    :  07/21/2022

    *  Revision Logs   :  V1.0 - Created by - Ronak Pareek 07/21/2022

**/

public with sharing class HelperClass {
         //method update account type
         // This method is used for add prefix(SA,FD).
         public static void chRecord(List<Account> newAccount,Map<Id, Account> mapofOldAcc){
            for(Account acc : newAccount){  
                if(mapofOldAcc != Null && acc.Type != mapofOldAcc.get(acc.Id).Type)
                {  
                    // FD to Saving
                    if(acc.Type == 'Saving')
                    {
                        if(mapofOldAcc.get(acc.Id).Type != 'Fixed Deposit')
                            acc.AccountNumber = 'SA-' + acc.AccountNumber;
                        else
                            acc.AccountNumber = acc.AccountNumber.replace('FD','SA');
                    }
                    // FD to Saving
                    else if(acc.Type == 'Fixed Deposit' )
                    {
                        if(mapofOldAcc.get(acc.Id).Type != 'Saving')
                            acc.AccountNumber = 'FD-' + acc.AccountNumber;
                        else
                            acc.AccountNumber = acc.AccountNumber.replace('SA', 'FD');
                    } 
                }
                else if( mapofOldAcc == null) {
                    if(acc.Type=='Saving' ){
                        acc.AccountNumber='SA-'+acc.AccountNumber;
                    }
                    if(acc.Type=='Fixed Deposit'){
                        acc.AccountNumber='FD-'+acc.AccountNumber;
                    }
                }
            }
        }
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
}