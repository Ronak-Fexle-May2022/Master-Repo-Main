//Assignment13
public virtual class ExampleMethodOverriding {
    public virtual void move() {
        System.debug('College is open');
       }
class college extends ExampleMethodOverriding {
    
        public override void move() {
         System.debug('College is open ');
        }
    }
class univ extends ExampleMethodOverriding {
    
        public override void move() {
         System.debug('University is open too');
        }
    }
 public class stud {
         public void fillClg() {
              ExampleMethodOverriding a = new college();
              ExampleMethodOverriding b = new univ();
              a.move();
              b.move();
        }
    }
     
}