//Assignment 13
public with sharing class ExampleCallByReference {
    class IntWrapper {
        public integer a;
        public IntWrapper(integer a){ 
               this.a = a;
             }
            }
    public static void callByReference(){
        IntWrapper a = new IntWrapper(30);
        IntWrapper b = new IntWrapper(45);
        System.debug('Before swapping a = '+ a.a +' and b = '+ b.a);
        //swap method
        swapFunction(a, b);
        System.debug('Before and After swapping values will be different here:');
        System.debug('After swapping, a = ' + a.a + 'and b is ' + b.a);
     }
     public static void swapFunction(IntWrapper a, IntWrapper b) {
        System.debug('Before swapping(swapFunction), a = ' + a.a + ' b = ' + b.a);
        // Swap n1 with n2
        IntWrapper c = new IntWrapper(a.a);
        a.a = b.a;
        b.a = c.a; 
        System.debug('After swapping(swapFunction) a = ' + a.a + ' b = '+ b.a);
     }
  }
