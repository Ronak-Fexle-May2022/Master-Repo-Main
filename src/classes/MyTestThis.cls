//Assignment 14
public class MyTestThis {

    string s;
      {
          this.s = 'TestString';
      }
public class testThis {

        // First constructor for the class. It requires a string parameter.
           public testThis(string s2) {
           }
        
        // Second constructor for the class. It does not require a parameter.
        // This constructor calls the first constructor using the this keyword.
           public testThis() {
               this('None');
           }
        }  
    
    }