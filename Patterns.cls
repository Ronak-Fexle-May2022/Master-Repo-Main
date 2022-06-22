public with sharing class Patterns {
    public static void Pattern1() {
        for(integer i=1;i<=5;i++)
        
        {
            string s='  ';
            for(integer j=1;j<=5;j++)
            {
                if(j>=6-i )
                {
                    s = s + '*';
                }
                else
                {
                     s = s + '_';
                }
            }
            
            system.debug(s);
            
        }
    }

    public static void Pattern2(){
          integer k=0;
          for(integer i=1;i<=10;i++)
            {
                if(i<=5){
                    k++;
                } 
                else{
                    k--;
                }
                string s='  ';
                for(integer j=1;j<=5;j++)
                    {
                       if(j<=k)
                        { 
                          s = s + '* ';
                        }
                        else
                         {
                           s = s + '_';
                         }
             }
        
            system.debug(s);
            }
        }
         
    public static void Pattern3(){
        boolean b=true;
        for(integer i=1;i<=5;i++)
        {
        string s='  ';
        for(integer j=1;j<=9;j++)
        {
          if(i>=2 && i<=4)
          {
            if(j>=1+i && j<=9-i)
            {
                b=false;
            }
            else{
                b=true;
            }
            }
            else{
                b=true;
            }
            
            if(j>=i && j<=10-i && b)
            {
                s = s + '*';
              
            }
            else
            {
                 s = s + '_';
               
            }
        }
        
        system.debug(s);
        
        }
      }
    }