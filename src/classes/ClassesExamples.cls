public with sharing class ClassesExamples {

    public static void LoopsExamples(){
        integer marks=28;//if else statement
        if(marks>=33){
                System.debug('PASS'); 
        }
        else{
             System.debug('FAIL');
        }
        integer num=10; //if else if statement
        if(num>0){
             System.debug('Number is positive');
        }
        else if(num<0){
                System.debug('Number is negative');
        }
        else{
                System.debug('Number is Zero');
            }
        integer place=1; //if else-if else ststement
        String medal_color;
         if(place ==1) {
               medal_color='gold';
           }   
           else if (place==2){
               medal_color='silver';   
           }
           else if(place==3){
               medal_color='bronze';
           }
           else{
              medal_color='null';
           }
           System.debug('You have scored '+medal_color + 'Medal. Congratulations');


        integer a=1;
        while(a<=10)  //while loop example
        {
           System.debug('value of i= '+a);
           a++;
         }
         Integer count = 1;//do while example
         do {
         System.debug(count);
         count++;
         } while (count < 11);
         for (integer i = 0, j = 0; i < 10; i++) { //Traditional for Loop
            System.debug(i+1);
         }
         Integer[] myInts = new Integer[]{1, 2, 3, 4, 5, 6, 7, 8, 9, 10};//List Iteration for Loop
         for (Integer i : myInts) {
         System.debug(i);
         }
     }  
     string Employeename;
     integer EmployeeNo;
    public ClassesExamples() { //Constructor Example
                EmployeeName = 'Prasant kumar';
                 EmployeeNo = 1015;
            }
        public void Show() {
                System.debug('Emplyeename is' +EmployeeName);
                System.debug('EmplyeeNo is' +EmployeeNo);
            }

     public static Integer Sum(Integer FirstNum,Integer SecondNum)
     {
         return FirstNum+SecondNum;
     }
     public static Integer Sum(Integer FirstNum,Integer SecondNum,
                                Integer ThridNum)
     {
         return FirstNum+SecondNum+ThridNum;
     }
        private static integer StaticMember;
        private integer NonStaticMember;
     
        public static integer MyGoodStaticProp { 
          get {return StaticMember;} 
          set { StaticMember = value; } 
        }  
        public integer MyGoodNonStaticProp { 
          get {return NonStaticMember;} 
          set { NonStaticMember = value; } 
        } 
     }