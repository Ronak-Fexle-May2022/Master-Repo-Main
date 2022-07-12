//Assignment 16

public with sharing class DMLQuery {
    public static void dmlQuery()  {
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