//Assignment 16
//Custom Exception handling
public class ExceptionExample {
    public virtual class BaseException extends Exception {}
    public class OtherException extends BaseException {}

    public static void testExtendedException() {
        try {
            Integer record =5;
            Integer data =0;
            Integer a = record/data;
            throw new OtherException('Divide by zero exception');
        } catch (BaseException e) {  
            // This catches the OtherException
            System.debug(e.getMessage());
        }  
    }
}