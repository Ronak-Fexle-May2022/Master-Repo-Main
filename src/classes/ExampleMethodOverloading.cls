//Assignment13
public class ExampleMethodOverloading {

      public integer sum (integer a, integer b)
        {
         // System.debug('sum is'+(a+b)) ;
         return a+b;
        }
        public integer sum (integer a, integer b,integer c)
        {
            return a+b+c;
            //System.debug('sum is'+(a+b));
        }
        public void inputValue ()
        {
          ExampleMethodOverloading  cal = new ExampleMethodOverloading();
          System.debug(cal.sum (8,5));      //sum(int a, int b) is method is called.
          System.debug(cal.sum (4, 3,4)); //sum(float a, float b) is called.
        }
      }



   /* public void sendEmail(String fromEmail ,String emailBody, String toEmail) {
                messaging.sendingmailMessage msg = new messaging.sendingmailMessage(toEmail,fromEmail,emailBody);
                msg.send();
    }

    public messaging.sendingmailMessage sendEmail(String fromEmail ,HtmlBody emailBody, String toEmail){
        messaging.sendingmailMessage msg =new messaging.sendingmailMessage(toEmail,fromEmail,emailBody);
        msg.send();
        return msg;
    }*/