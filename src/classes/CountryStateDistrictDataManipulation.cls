/*
   * Created By : Ronak Pareek
   * Purpose    : Country-State-District Data Manipulation - Initialize the Map using Class Constructor and 
                     Create JSON Logic,Create a Wrapper class for JSON generation
   * Assignment :  Assignment 17
*/ 
public with sharing class CountryStateDistrictDataManipulation {
   //Country-State-District Data Manipulation
     static Map<String, Map<String, List<String>>> mapofCountrySD= new Map<String, Map<String, List<String>>>();
     String startwt;  
     Integer maxlt;
     String countryName;
    //Initialize the Map mapofCountrySD using Class Constructor.
    public CountryStateDistrictDataManipulation(String startwt,Integer maxlt,String countryName ){
     
     List<Country__c> countryList = [Select Id, Name From Country__c];
     List<State__c> stateList = [Select Id, Name ,Country__r.Name From State__c];
     List<District__c> districtList = [Select Id, Name ,State__r.Name ,State__r.Country__r.Name From District__c];
     
         for(Country__c country : countryList) 
         {   
            mapofCountrySD.put(country.Name, new Map<String, List<String>>());  
             
                 for(State__c state : stateList)
                 {   
                     if(mapofCountrySD.KeySet().contains(state.Country__r.Name))
                     {
                        mapofCountrySD.get(state.Country__r.Name).put(state.Name, new List<String>());
                     }
                 }                   
         } 
         for(District__c dist : districtList)
         {  
            if(mapofCountrySD.KeySet().contains(dist.State__r.Country__r.Name) &&  mapofCountrySD.get(dist.State__r.Country__r.Name).KeySet().contains(dist.State__r.Name))
                        {
                            mapofCountrySD.get(dist.State__r.Country__r.Name).get(dist.State__r.Name).add(dist.Name);
                        } 
         }
     System.debug('Country State Dist Map'+mapofCountrySD);
     searchChar(startwt);
     searchDist(maxlt);
     rtTotalDistTotalState();
     countryJSONGenerator(countryName);
 }
     //Find Country,State and District starts with a particular Keyword
    public static void searchChar(String startwt){
        
        for(String keyCountry : mapofCountrySD.keySet()){
            if(keyCountry.startsWith(startwt)){
                 Map<String,List<String>> mapofState = mapofCountrySD.get(keyCountry);
                 for(String keyofState : mapofState.keySet()) {
                     if(keyofState.startsWith(startwt)){
                         List<String> listofDistrict = mapofState.get(keyofState);
                         for(String district : listofDistrict){
                             if(district.startsWith(startwt)){
                                 System.debug('Country : '+keyCountry+' State: '+keyofState+' District '+district);
                            }
                        }
                    }
                }
            }
        }
    }
    //Search Max length Dist
    public static void searchDist(Integer maxlt)
     {
        List<District__c> districtList = [Select Id, Name ,State__r.Name ,State__r.Country__r.Name From District__c];
        List<String> distList = new List<String>();
        for(District__c dist : districtList){
                distList.add(dist.Name);
                for(String districts : distList){
                if(districts.length() > maxlt )
                {
                    system.debug('Max length districts :'+ districts);
                }
             }
        }
    }
    // rtTotalDistTotalState method to calculate Total Dist & Total State
     public static void rtTotalDistTotalState(){
            //Total Dist of custom object State field
            List<State__c> statsList=[Select Name,Total_Districts__c From State__c];
            List<AggregateResult> distList=[Select State__r.Id,COUNT(Name) Total_Districts From District__c GROUP BY State__r.Id];
            for(State__c sta:statsList){
               for(AggregateResult rt: distList){ 
                  if(sta.Id==(Id)rt.get('Id')){
                     sta.Total_Districts__c=(Integer)rt.get('Total_Districts');
                      update sta;
                    }
                }
            }
              //Total Dist and State of custom object Country field
             List<Country__c> counList= [Select Name,Total_States__c,Total_Districts__c From Country__c];
             List<AggregateResult> statList=[Select Country__r.Id,COUNT(Name) Total_States , SUM(Total_Districts__c) Total_Districts From State__c GROUP BY Country__r.Id];
             for(Country__c coun: counList){
                for(AggregateResult ar: statList){ 

                   if(coun.Id==(Id)ar.get('Id')){
                     coun.Total_States__c=(Integer)ar.get('Total_States');
                     coun.Total_Districts__c=(Decimal)ar.get('Total_Districts');       
                     update coun;
                    }
                }
            }        
        }

      /*
      * method : countryJSONGenerator
      * Creates JSON data of Country,State and Dist.
      */
    public static void countryJSONGenerator(String countryName){
            List<Country__c> countryList = [Select Id, Name, Total_Districts__c, Total_States__c, Country_Code__c, 
                                            (Select Id, Name, Total_Districts__c From States__r )
                                            From Country__c WHERE Name =:countryName];
            
                Country cobj = new Country();
                cobj.countryName = countryList[0].Name;
                cobj.countryCode = countryList[0].Country_Code__c;
                cobj.states= new List<States>();
                cobj.Total_Districts = (Integer)countryList[0].Total_Districts__c;
                cobj.Total_States = (Integer)countryList[0].Total_States__c;
                
                for(State__c st : countryList[0].States__r)
                    {
                        States sobj = new States();
                        sobj.stateName = st.Name;
                        sobj.districts = new List<Districts>();
                        sobj.Total_Districts = (Integer)st.Total_Districts__c;
                        
                        for(String dt : mapofCountrySD.get(countryName).get(st.Name))
                        {
                            Districts dobj = new Districts();
                            dobj.districtName = dt;
                            sobj.districts.add(dobj);
                        }
                        cobj.states.add(sobj);         
                    }
                
                String json = JSON.serialize(cobj);
                System.debug('Country JSON Data field for the Country'+json); 
                countryList[0].Country_JSON_Data__c = json;
                update countryList;
             } 
    //Wrapper class for JSON generation 
    public List<Country> countryList{get; set;}
    public class Country{
        public String countryCode{get; set;}
        public List<States> states{get; set;}
        public Integer Total_Districts{get; set;}
        public Integer Total_States{get; set;}
        public String countryName{get; set;}
    }
    public class States{
        public List<Districts> districts{get; set;}
        public Integer Total_Districts{get; set;}
        public string stateName{get; set;}
    }
    public class Districts {
        public String districtName{get; set;}
    }
 }