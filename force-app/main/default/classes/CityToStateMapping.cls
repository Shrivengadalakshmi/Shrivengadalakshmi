public with sharing class CityToStateMapping {
    public static string getCountry(string cityName) {
        Map<String, String> cityToStateMap = new 
         Map<String, String>();
         Map<String, String> StateToCountry = new 
         Map<String, String>();
     for(State__c state: [Select State_Name__c,  City__c from State__c]) {
              cityToStateMap.put(state.City__c,state.State_Name__c);
        }          
             for (Country__c country : [Select Country_name__c,  State_Name_for_country__c from Country__c]) {
                  stateToCountry.put(country.State_Name_for_country__c,country.Country_name__c);

        }
               String relatedState = cityToStateMap.get(cityName);
                 String relatedCountry = stateToCountry.get(relatedState);
                      return relatedCountry;

    }
        
    }

    
