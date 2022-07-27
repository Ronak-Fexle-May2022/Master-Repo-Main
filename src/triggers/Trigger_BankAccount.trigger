/**
    *  Description     :  This trigger is handle operations on  Account object.

    *  Created By      :  Ronak Pareek

    *  Created Date    :  07/21/2022

    *  Revision Logs   :  V1.0 - Created by - Ronak Pareek 07/21/2022

**/

trigger Trigger_BankAccount on Account (before insert,before update, after insert) {

        if(Trigger.isInsert && Trigger.isAfter){

            HelperClass.updateMail(Trigger.New); 
        }

        if(Trigger.isInsert && Trigger.isBefore){

            HelperClass.chRecord(Trigger.New,Trigger.OldMap);
            system.debug('Check List ::: Trigger.New ' + Trigger.New);
         }
        if(Trigger.isUpdate && Trigger.isBefore) {
           
            system.debug('Check Update List ::: Trigger.New ' + Trigger.New);
            system.debug('Check Update List ::: Trigger.old ' + Trigger.Old);
            HelperClass.chRecord(Trigger.New,Trigger.OldMap);

            if(Trigger.New[0].Type != Trigger.old[0].Type){

                system.debug('Type Value Changed');
                system.debug('Trigger.New Data' + Trigger.New[0].Type);
                system.debug('Trigger.old Data' + Trigger.Old[0].Type);
            }
        }
}