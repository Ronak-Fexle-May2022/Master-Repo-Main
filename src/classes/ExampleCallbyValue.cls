//Assignment 13
public with sharing class ExampleCallbyValue{
    public static void callByValue(){
        integer a = 30;
        integer b = 45;
        System.debug('Before swapping, a ='+ a +' and b = '+ b);
        // Invoke the swap method
        swapFunction(a, b);
        System.debug('Now, Before and After swapping values will be same here:');
        System.debug('After swapping, a = '+ a + ' and b is '+ b);
     }
     public static void swapFunction(integer a, integer b) {
        System.debug('Before swapping(Inside), a = ' + a + ' b = ' + b);
        // Swap n1 with n2
        integer c = a;
        a = b;
        b = c;
        System.debug('After swapping(Inside), a = ' + a + ' b = '+ b);
     }
  }