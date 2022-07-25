//Assignment 15

public with sharing class CountyCodeExample {

    Map<String,Map<String,Map<String,List<String>>>> mapofCountry = new Map<String,Map<String,Map<String,List<String>>>>();

    /*
      * Created By : Ronak Pareek
      * Purpose    : create map,list of country state and district
      * Return     :  
    */ 
    public CountyCodeExample(){

         List<String> listofDistrictofRajasthan = new List<String>{'Bhilwara','Jaipur','Udaipur','Ajmer'};
		 List<String> listofDistrictofUp = new List<String>{'Mathura','Varanasi','Lucknow','Meerut'};
		 List<String> listofDistrictofGujrat = new List<String>{'Ahmedabad','Mehsana','Surat','Godhra'};
		 List<String> listofDistrictofMp = new List<String>{'Dewas','Gwalior','Indore','Bhopal'};
		 
		 //china
		 List<String> listofDistrictofQinghai = new List<String>{'Haidong','Tongren'};
		 List<String> listofDistrictofChongqing = new List<String>{'Changshou','Hechuan'};
		 List<String> listofDistrictofYunnan = new List<String>{'Xishan','Dongchuan'};
		 
		 //Nepal
		 
		 List<String> listofDistrictofMadhesh = new List<String>{'Dhanusa','Mahottari'};
		 List<String> listofDistrictofBagmati = new List<String>{'Bhaktapur','Chitwan'};
		 
		 //France
		 
		 List<String> listofDistrictofBrittany = new List<String>{'Nantes','Rennes'};
		 List<String> listofDistrictofCorsica = new List<String>{'Meaux','Versailles'};
		 
		 //Assign map of state
		 
		 Map<String,List<String>> mapofIndia = new Map<String,List<String>>{'Rajasthan'=>listofDistrictofRajasthan,'UP'=>listofDistrictofUp,'Gujrat'=>listofDistrictofGujrat,'MP'=>listofDistrictofMp};
		 Map<String,List<String>> mapofChina = new Map<String,List<String>>{'Qinghai'=>listofDistrictofQinghai,'Chongqing'=>listofDistrictofChongqing,'Yunnan'=>listofDistrictofYunnan};
		 Map<String,List<String>> mapofNepal = new Map<String,List<String>>{'Madhesh'=>listofDistrictofMadhesh,'Bagmati'=>listofDistrictofBagmati};
		 Map<String,List<String>> mapofFrance = new Map<String,List<String>>{'Brittany'=>listofDistrictofBrittany,'Corsica'=>listofDistrictofCorsica};
		 
		 //Assign map of country
		 Map<String,Map<String,List<String>>> asiaContinent = new Map<String,Map<String,List<String>>>();
		 Map<String,Map<String,List<String>>> europeContinent = new Map<String,Map<String,List<String>>>();
		 
		 //Assign CountryCode
		 mapofcountry.put('A',asiaContinent);
		 mapofcountry.put('E',europeContinent);

    }
    /*
      * Created By : Ronak Pareek
      * Purpose    : This method will display combination of Country, state and districts where it starts with 'C'.
      * Return     : Void
    */
     
    public void searchChar(){
        for(String countryCode : mapofCountry.keySet()){
            Map<String,Map<String,List<String>>> mapofCountryName = mapofCountry.get(countryCode);
            for(String keyCountry : mapofCountryName.keySet()){
                if(keyCountry.startsWith('C')){

                     Map<String,List<String>> mapofState = mapofCountryName.get(keyCountry);
                     for(String keyofState : mapofState.keySet()) {
                         if(keyofState.startsWith('C')){
                             List<String> listofDistrict = mapofState.get(keyofState);
                             for(String district : listofDistrict){
                                 if(district.startsWith('C')){
                                     System.debug('Country :'+keyCountry+'State:'+keyofState+'district'+district);
                                }
                            }
                        }
                    }
                }
            }


        }

    }
/*
 *Created By : Ronak Pareek
 * Purpose   : This method will display districts which greater length
 */
     public void searchDist(Integer longestlength)
     {
        List<String> allDistrict = new List<String>();
          for(String keymapofCountry : mapofCountry.keySet()){
                Map<String,Map<String, List<String>>> mapofCountryCode = mapofCountry.get(keymapofCountry);

                for(String keyCountry : mapofCountryCode.keySet())
                {
                      Map<String,List<String>> mapState = mapofCountryCode.get(keyCountry);
            
                      for(String keyState : mapState.keySet()){
                             List<String>  listDistricts = mapState.get(keyState);
                             allDistrict.addAll(listDistricts);
                             
                      }
                }
            } 
            for(String districts : allDistrict){
                if(districts.length() > longestlength )
                {
                    system.debug('longest districts :'+ districts);
                }
             }
     }
 }