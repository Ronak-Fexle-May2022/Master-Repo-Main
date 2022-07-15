//Assignment13
public class HTTPRequest {
        String baseURL ='http://www.google.com/api'; 
        public HTTPRequest() {
            HttpRequest req = new HttpRequest(); 
            HttpRespone rep = req.setEndPoint(baseURL) ;
            if(rep.code == 400){
                 throw newHttpException('Request not complete') ;    
               }
          }
          public HttpRequest(String reqBody) {
            HttpRequest req = new HttpRequest(); 
            req.setEndPoint(baseURL);
            req.setBody(reqBody); 
            HttpRespone rep =req.send();
            if(rep.code == 400) { 
                throw newHttpException('Request not complete') ; 
         }
     }
public class SendRequest{
          public SendRequest(){
               HTTPRequest req= new HTTPRequest();
               req.sendRequest();
               HTTPRequest reql = new HTTPRequest(reqBody);
         }
     }
}


