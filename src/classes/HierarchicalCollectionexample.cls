public with sharing class HierarchicalCollectionexample {
    public static void ListExample() {
        //List
        List < String > Dept = new List < String > {  
            'CS',  
            'IT',  
            'TT'  
        };  
         system.debug('Default Department List : ' + Dept);  
         //add List Element  
         Dept.add('MECH');  
         Dept.add('IOT');  
         system.debug('Using add(ListElement) - Department List : ' + Dept); 
         List<Integer> myList = new List<Integer>(); //new list
         myList.add(47);                    // Adds a second element of value 47 at end
         Integer i = myList.get(0);         // Retrieves the element at index 0
         myList.set(0, 1);                  // Adds the integer 1 to the list at index 0
         myList.clear();                    // Removes all elements from the list
    }
    public static void SetExample(){
         //Set 
         Set < String > Lang = new Set < String > {  'C',  'C++',  'Java'  };  
         system.debug('Default Technology Set : ' + Lang); 
         Set<Integer> mySet = new Set<Integer>();
         // Add two elements to the set
         mySet.add(1);
         mySet.add(3);
         // Assert that the set contains the integer value we added
         System.assert(mySet.contains(1)); 
         // Remove the integer value from the set
         mySet.remove(1); 

    }
        
    public static void MapExample(){
    
         //Map
         Map < String, String > studDept = new Map < String, String > ();  
         //Put  
         studDept.put('D1', 'CSE');  
         system.debug(studDept);  
         //get(key)  
         studDept.put('D2', 'CIVIL');  
         studDept.put('D3', 'MECH');  
         studDept.put('D4', 'EEE');  
         system.debug('get(D1) - Department is: ' + studDept.get('D1'));  
         //Key 
         system.debug('Department keyset() are : ' + studDept.keyset());  
         // values()  
         system.debug('Department values() are : ' + studDept.values());  

      }
    public static void DataTypesExample() {
         //Integer
         Integer IdNumbers = 1000;
         system.debug('IdNumbers :'+IdNumbers);

         //Long
          Long companyRevenue = 21474838973344648L;
         system.debug('companyRevenue'+companyRevenue);
         
         //String
         String companyName = 'Abc Pvt Limited';
         System.debug('Value companyName variable'+companyName);
         String s = 'Hello Maximillian';//abbreviate(maxWidth)
         String s2 = s.abbreviate(8);
         System.assertEquals('Hello...', s2);
         System.assertEquals(8, s2.length()); 
         String str = '\u03A9 is Ω (Omega), and \uD835\uDD0A ' + ' is Fraktur Capital G.';//codePointBefore(index)
         System.assertEquals(937, str.codePointBefore(1));
         System.assertEquals(120074, str.codePointBefore(22));
         String str1 = '\u03A9 and \uD835\uDD0A characters.';//codePointCount(beginIndex, endIndex)
         System.debug('Count of code points for ' + str1.substring(0,1) + ': ' + str1.codePointCount(0,1));
         System.debug('Count of code points for ' + str1.substring(6,8) + ': ' + str1.codePointCount(6,8));
         String myString1 = 'abcde'; //compareTo(secondString)
         String myString2 = 'abcd';
         Integer result = 
            myString1.compareTo(myString2);
         System.assertEquals(result, 1);

         
         //Double
         Double d = 3.14159;
         System.debug('Value Double variable'+d);

         //Boolean OrderShip;
         Boolean OrderShip;
         OrderShip = true;
         System.debug('Value of OrderShip :'+OrderShip);


         //Date Example
         Date myDate = Date.newInstance(2022, 06, 22);
         System.debug('Date:'+myDate);
         date myDate1 = date.today();
         date dueDate = date.newInstance(2008, 1, 30);
         boolean dueNow = myDate1.isSameDay(dueDate);
         System.debug('Date:'+myDate1);
         date myDate2 = date.newInstance(1990, 11, 21);
         date newDate = myDate2.addMonths(3);//add months
         date expectedDatef = date.newInstance(1991, 2, 21);
         system.assertEquals(expectedDatef, newDate);
         date myDate3 = date.newInstance(1983, 7, 15);
         date newDate1 = myDate3.addYears(2);//addYears
         date expectedDated = date.newInstance(1985, 7, 15);
         system.assertEquals(expectedDated, newDate1);
         date myDate4 = date.newInstance(1998, 10, 21);//day of year
         Integer day = myDate4.dayOfYear();
         system.assertEquals(294, day);
         Integer numberDays = date.daysInMonth(2022, 2);//daysInMonth(year, month)
         system.assert(Date.isLeapYear(2004));//is leap year
         date myDate5 = date.today();//isSameDay(dateToCompare)
         date dueDate1 = date.newInstance(2008, 1, 30);
         boolean dueNow1 = myDate5.isSameDay(dueDate1);
         string year = '2008';//valueOf(stringDate)
         string month = '10';
         string dayd = '5';
         string hour = '12';
         string minute = '20';
         string second = '20';
         string stringDate = year + '-' + month + '-' + day + ' ' + hour + ':' + minute + ':' + second;
         Date myDate6 = date.valueOf(stringDate);
         String s1d = 'abba';//containsOnly(inputString)
         String s2d = 'abba xyz';
         Boolean b1d = 
         s1d.containsOnly('abcd');
         System.assertEquals(
         true,
         b1d);
         Boolean b2d = 
         s2d.containsOnly('abcd');
         System.assertEquals(
          false,
          b2d);
          String sdate = 'Hello Jason';//endsWith(suffix)
          System.assert(sdate.endsWith('Jason'));
         //DateTime
         DateTime myDateTime = DateTime.newInstance(2022, 06, 22, 7, 8, 16);//addDays(additionalDays)
         System.debug('Date and Time :'+myDateTime);
         Datetime myDateTime1 = Datetime.newInstance(1960, 2, 17);
         Datetime newDateTime1 = myDateTime1.addDays(2);
         Datetime expected = Datetime.newInstance(1960, 2, 19);
         System.assertEquals(expected, newDateTime1); 
         DateTime myDateTime2 = DateTime.newInstance(2009, 12, 17, 13, 6, 6);//add Year
         DateTime newDateTime2 = myDateTime2.addYears(1);
         DateTime expected1 = DateTime.newInstance(2010, 12, 17, 13, 6, 6);
         System.assertEquals(expected1, newDateTime2);
         Datetime myDT = DateTime.newInstance(2022, 5, 4, 19, 37, 55);//format(dateFormatString)
         String myDated = myDT.format('yyyy-MM-dd h:mm a');
         String expected2 = '2022-05-04 7:37 PM';
         System.assertEquals(expected2, myDated);
         datetime myDT2 = datetime.now();//isSameDay(dateToCompare)
         datetime dueDated = 
         datetime.newInstance(2008, 1, 30);
         boolean dueNowd = myDT2.isSameDay(dueDated);


         //Object
         Account objAccount = new Account (Name = 'Test Class');
         system.debug('Account value'+objAccount);
        }
     static final Integer PRIVATE_INT_CONST = 200;
     static final Integer PRIVATE_INT_CONST2;
    public static Integer calculate(){          //concepts of Constants
                             return 2 + 7;
                     }
         static {
             PRIVATE_INT_CONST2 = calculate();
             system.debug(PRIVATE_INT_CONST);
             system.debug(PRIVATE_INT_CONST2);
   }
   
    public static void ListofStudents(){
         Map<String, Map<String, List<Student__c>>> yogaClassMap= new Map<String, Map<String, List<Student__c>>>();
         //List of Student Computer
         List<Student__c> listStudentComputer=new List<Student__c>();
         listStudentComputer = [select id,Name,RollNumber__c,Current_Year__c,Stream__c from Student__c where Current_Year__c ='1stYear' and Stream__c= 'Computer'];
         Map<String, List<Student__c>> mapOfStudentsInComputer = new Map<String,List<Student__c>>();
         mapOfStudentsInComputer.put('Computer',listStudentComputer);
         System.debug(listStudentComputer);

         //List of Student Electronic
         List<Student__c> listStudentElectronic=new List<Student__c>();
         listStudentElectronic = [select id,Name,RollNumber__c,Current_Year__c,Stream__c from Student__c where Current_Year__c ='1stYear' and Stream__c= 'Electronic'];
         Map<String, List<Student__c>> mapOfStudentsInElectronic = new Map<String,List<Student__c>>();
         mapOfStudentsInElectronic.put('Electronic',listStudentElectronic);
         System.debug(listStudentElectronic);
         //List of Student Electronic 2nd year
         List<Student__c> listStudentElectronic2=new List<Student__c>();
         listStudentElectronic2 = [select id,Name,RollNumber__c,Current_Year__c,Stream__c from Student__c where Current_Year__c ='2ndYear' and Stream__c= 'Electronic'];
         Map<String, List<Student__c>> mapOfStudentsInElectronic2 = new Map<String,List<Student__c>>();
         mapOfStudentsInElectronic2.put('Electronic',listStudentElectronic2);
         System.debug(listStudentElectronic2);

         yogaClassMap.put('1stYear', mapOfStudentsInComputer);
         yogaClassMap.put('2ndYear', mapOfStudentsInElectronic2);
         System.debug(yogaClassMap);

    }
}
