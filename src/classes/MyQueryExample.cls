public class MyQueryExample {
    public MyQueryExample(){
        //Query 5 Students
		List<Student__c> studentList = [select id,Name__c,RollNumber__c,Father_Name__c,Email__c,City__c,Overall_Grade__c FROM Student__c order by createdDate DESC LIMIT 5];
		      for(Student__c student : studentList){
			  system.debug('Chck Student Data ::: '+student);
    }
    }
}
//new MyQueryExample();