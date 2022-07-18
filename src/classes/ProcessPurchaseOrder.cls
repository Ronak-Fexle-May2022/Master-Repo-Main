/*
      * Assignment14
      * Created By : Ronak Pareek
      * ProcessPurchaseOrder implement interface PurchaseOrder
*/ 
public with sharing class ProcessPurchaseOrder{

             public ProcessPurchaseOrder( ) {
                   PurchaseOrder order1 = new CustomerPurchaseOrder( ); 
                   PurchaseOrder order2 = new EmployeePurchaseOrder( );
                   PurchaseOrder order3 = new SellerPurchaseOrder( );  
                   
                   //Customer Order
                   processOrder(order1) ; 
                   
                   //Employee Order 
                   processOrder(order2) ; 
                   
                   //SellerPurchaseOrder
                   processOrder(order3) ; 
             }
             public void processOrder(PurchaseOrder order) {
                       System.debug(' Check discount ::: ' + order.discount()) ;
        }
    }