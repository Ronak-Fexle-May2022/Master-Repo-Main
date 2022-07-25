public with sharing class Expressions {
    public static void ExpressionsExamples() {
     integer result=250;   
     result=result+50;
     System.debug('result =result+50 ='+result);
     result=result-10;
     System.debug('result =result-10 ='+result);
     result=result*20;
     System.debug('result =result*20 ='+result);
     result=result/15;
     System.debug('result =result/15 ='+result);
     integer output=100;   
     output+=10;  //adds output value with 10.
     System.debug('output+=10 '+output);
     integer output1=76;  
     output1*=12;       // multiplies value of output with 12
     System.debug('output*=12 '+output1);
     integer output2=25;   
     output2/=17;               // divides value of output with 17
     System.debug('output2/=17'+output2); 
     integer output3=50;    
     output3-=20;                // subtract value of output with 20
     System.debug('output-=20 =>'+output3);

     boolean a=true; //a|=b example
     a|=(5>6);
     System.debug(a);
     boolean b=true;//a&=b example
     b&=5>6;
     System.debug(b);

     integer x = 1000; //left shift assignment operation
     x <<= 2;
     System.debug('x = '+ x);
     integer y = 1000; //left shift assignment operation
     y >>= 2;
     System.debug('x = '+ y);
     integer xa=2;     //Bitwise shift right unsigned operation
     integer yb=5;
     integer zc=-5;
     xa>>=yb;
     zc>>=yb;
     System.debug('xa:'+xa);
     System.debug('yb:'+yb);
     System.debug('zc:'+zc);
     integer x3 = 8;   //Less than or equal to operator
     integer y3= 4;
     if (x3 >= y3) {
         System.debug('x is greater than or equal to y.');
     } else {
        System.debug('x is not greater than or equal to y.');
     }
     integer operand = 1;
     operand++; //operand 2
     //System.debug('increment operator'+operand);
     integer init =++operand;
     System.debug('increment operator'+init);//operand 3 init 3

     string s1='Hello';//a==b example
     string s2='Hello';
     if(s1==s2){
        System.debug('string a equals to b a==b');
     }
     else{
        System.debug('string a not equals to b');
     }

     //Condition statement
     integer age=20; 
     if(age>=18)    // condition
     {
        System.debug('ELIGIBLE FOR VOTING');
     }
     else
     {
       System.debug('NOT ELIGIBLE');
     }
     //Comparing two different ages        
     integer age1=22;    //my age
     integer age2=20;   //my brother`s age
     if(age1>age2)
     {
       System.debug('I am elder');
     }
     else
     {
       System.debug('My brother is elder');
     }
     //if-else-if statement
     integer num=10;
     if(num>0)   {
         System.debug('Number is positive');
     }
       else if(num<0){
          System.debug('Number is negative');
     }
      else{
         System.debug('Number is Zero');
      }
    }


     // Previous code checking for nulls
    public static void SafeNavigator(){ 
          List<Student__c> results = [select Name from Student__c where RollNumber__c = :1111];
          if (results.size() == 0) { // Account was deleted
                        results=null;
         }
            System.debug('check student result : '+results);
    }
}
