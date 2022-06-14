public class StudentData {
    public StudentData(){
        //insert Student Data
        Student__c s1=new Student__c();
        s1.Name__c='Lokesh';
        s1.RollNumber__c=5511;
        s1.Father_Name__c='Ratan';
        s1.Mobile_Number__c=968574545;
        s1.Father_Mobile_Number__c='8974563212';
        s1.HomePhone__c='547895412';
        s1.Email__c='vishal@gmail.com';
        s1.Address__c='Bhilwara';
        s1.City__c='Bhilwara';
        s1.State__c='Rajasthan';
        s1.Overall_Grade__c='A';
        //Class Info
        s1.Stream__c='Science';
        s1.Class__c='B.Tech';
        s1.Section__c='A';
        //Fees Details
        s1.Current_Year__c='4th Year';
        s1.Fees_Submitted__c='Yes';
        s1.Pending_Fees_Amount__c=0;
        s1.Exam_Fees_Submitted__c='Yes';
        s1.Pending_Exam_Fees__c=0;
        s1.Is_Donation__c='Yes';
        s1.Donation_Amount__c=200000;
        s1.Pending_Overall_Amount__c=200000;
        //Semester Details
        s1.X1st_Sem_Percentage__c=76.25;
        s1.X1st_Sem_Back__c='No';
        s1.Subjects_in_which_Back__c='No Back';
        s1.X2nd_Sem_Percentage__c=88.44;
        s1.Subjects_in_which_Back__c='No Back';
        s1.X3rd_Sem_Back__c='No';
        s1.X4th_Sem_Percentage__c=80.55;
        s1.X4th_Sem_Back__c='No';
        s1.Subjects_in_which_Back__c='No';
        //Bank Details
        s1.Bank_Name__c='Axis';
        s1.IFSC_Code__c='AX5554';
        s1.Account_Number__c=578945214;
        s1.Mobile_Number__c=798745610;
        s1.Bank_Phone_Number__c='01486261829';
        s1.City__c='Bhilwara';
        s1.State__c='Rajasthan';
        insert s1;
        
        List<Student__c> studentList= [select id,Name,RollNumber__c,Father_Name__c,Email__c,City__c,Overall_Grade__c From Student__c ];
         system.debug('check student data: '+ studentList);
            
   }

}