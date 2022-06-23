public with sharing class Patterns {
    public static void Pattern1() {
        integer rows = 5;        
        for(integer i= 1; i<= rows ; i++)
        {    
            string s=' ';
            for(integer j=i; j <rows ;j++)            
            {
                s = s +'_';
            }
            for(integer k=1; k<=i;k++) 
            { 
                 s=s + '*';
             } 
              System.debug(s); 
            }
    }

    public static void Pattern2(){
        integer rows = 9;        
        for(integer i= 1; i<= rows ; i++)
        {    
            string s=' ';
            for(integer j=i; j <rows ;j++)            
            {
                s = s +'_';
            }
            for(integer k=1; k<=i;k++) 
            { 
                 s=s + '*';
             } 
              System.debug(s); 
            }
        for(integer i=rows; i>=1; i--)
        {
            string s=' ';
            for(integer j=i; j<=rows;j++)
            {
                s=s+'_';
            }
            for(integer k=1; k<i ;k++) 
            {
               s=s+'*';
            }
            System.debug(s);
 
        }
    }
        
    public static void Pattern3(){
        integer rows = 9;    
        for (integer i=rows; i>= 1 ; i--)
        {
             string s=' ';
             for (integer j = i; j < rows ; j++) {
                s = s + '_';
             }   
             for (integer k = 1; k <= (2*i -1) ;k++) {
                   if( k==1 || i == rows || k==(2*i-1)) {
                    s = s + '*';
                  }
                  else {
                    s = s + '_';
                  }
              }
        system.debug(s);
      }

    }
}