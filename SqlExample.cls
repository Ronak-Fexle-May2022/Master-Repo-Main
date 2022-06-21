public class SqlExample{
    public static void SqlExample(){
       //SOQL Query
       //IN Example
       List<Student__c> studentList1 = [select id,Name__c,RollNumber__c,Father_Name__c,Email__c,City__c,Overall_Grade__c FROM Student__c WHERE Name IN ('VIshal','Lokesh')];
		      for(Student__c student : studentList1){
			     system.debug('Check Student Data ::: '+student);
         }
          //NOT IN Example
        List<Student__c> studentList2 = [select id,Name__c,RollNumber__c,Father_Name__c,Email__c,City__c,Overall_Grade__c FROM Student__c WHERE Name NOT IN ('VIshal','Lokesh')];
		      for(Student__c student : studentList2){
			     system.debug('Check Student Data ::: '+student);
              }
        //OR
           List<Student__c> studentList3 = [select id,Name__c FROM Student__c WHERE City__c ='Bhilwara' OR City__c ='Jaipur'];
		      for(Student__c student : studentList3){
			     system.debug('Check Student Data ::: '+student);
              }
        //AND
        List<Student__c> studentList4 = [select id,Name__c FROM Student__c WHERE Stream__c='Science' AND Section__c='C'];
		      for(Student__c student : studentList4){
			     system.debug('Check Student Data ::: '+student);
              }
        //AND OR
        List<Student__c> studentList5 = [select id,Name__c FROM Student__c WHERE Stream__c='Science' AND (Section__c='C' OR Section__c='B')];
		      for(Student__c student : studentList5){
			     system.debug('Check Student Data ::: '+student);
              }
        //Date
        List<Student__c> studentList6 = [select id,Name__c FROM Student__c WHERE Date__c >2022-06-01 ];
		      for(Student__c student : studentList6){
			     system.debug('Check Student Data ::: '+student);
              }
        //Date&Time
          List<Student__c> studentList7 = [select id,Name__c FROM Student__c WHERE Create_DateTime__c >2022-06-01T12:00:00Z ];
		      for(Student__c student : studentList7){
			     system.debug('Check Student Data ::: '+student);
              }

   } 
}