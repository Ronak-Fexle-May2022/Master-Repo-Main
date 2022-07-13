//Assignment 16
//improve code by decreasing number of DML Operations & statements.

public with sharing class DMLQuery {
    public static void dmlQuery1() {
        List<Contact> conList = [Select Department , Description from Contact];
        for(Contact badCon : conList) {
            if (badCon.Department == 'Finance') {
                badCon.Description = 'New description 1';
            }
        // governor limits might be hit.
        update badCon;
        }
    }
    //level 2
    public static void dmlQuery2(){

        List<Contact> updatedList = new List<Contact>();
        List<Contact> conList = [Select Department , Description from Contact];
        for(Contact con : conList) {
            if (con.Department == 'Finance') {
                con.Description = 'New description';
                // Add updated contact sObject to the list.
                updatedList.add(con);
            }
        }

        // Call update on the list of contacts.
        // This results in one DML call for the entire list.
        update updatedList;
    }
    //level 3
    public static void dmlQuery3(){
        // List to hold the new contacts to update.
        List<Contact> updatedList = new List<Contact>();
        for(Contact con : [Select Department , Description from Contact]) {
            if (con.Department == 'Finance') {
                con.Description = 'New description 2';
                // Add updated contact sObject to the list.
                updatedList.add(con);
            }
        }

        // Call update on the list of contacts.
        // This results in one DML call for the entire list.
        update updatedList;
    }
    
    //best level
    public static void dmlQueryf()  {
        List<Contact> updatedList = new List<Contact>();
        Map<Id,Contact> mapWithContacts = new Map<Id,Contact>();
        for(Contact con : [Select Department , Description from Contact where Department = 'Finance'])
        {
             con.Description = 'New Description ';
             mapWithContacts.put(con.id,con);

        }
        update mapWithContacts.values();
        Database.SaveResult[] result = database.update(mapWithContacts.values(), true);


    }
}
