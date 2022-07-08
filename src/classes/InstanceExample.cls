/*
      * Assignment15
      * Created By : Ronak Pareek
      * Instance Keyword
    */ 

public with sharing class InstanceExample {
    public InstanceExample() {
         sObject s =new Account();
         
         if(s instanceof Account){
            Account a = (Account)s;
           }
         else{
            Contact c =(Contact)s;
         }
    }
}
