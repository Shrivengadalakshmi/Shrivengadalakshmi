public with sharing class OppIntegration {
    
    private static final String CLIENT_SECRET = '51A41CAA70470B16B40BF615C9BCEFB1C6BBE08C32B3DA481BEBE0D3B1F4E60F';

    private static final String CLIENT_ID = '3MVG9wt4IL4O5wvIKtyptMT5d8dHws4X0JFysXOk2TRrIkhOHCRHx4gA5HyHIdJkBooE_tJKniaNunbOVy7yg';

    private static final String USER_ID = 'sivalingaraja.s@4iapps.com';

    private static final String PASSWORD = 'sivalingaraja4iappsemp0eTxIVYunqObE2jpRBImiNcL';

    private static final String BASE_END_POINT = 'https://login.salesforce.com/services/oauth2/token';

 

    public static WrapperClassForAccessToken getAccessToken()  {

        Http httpConnection= new Http();

        HttpRequest request= new HttpRequest();

        HttpResponse response = new HttpResponse();

        String ENDPOINT = '?grant_type=password&client_id='+CLIENT_ID+'&client_secret='+CLIENT_SECRET+'&username='+USER_ID+'&password='+PASSWORD;

        request.setEndpoint(BASE_END_POINT+ENDPOINT);

        request.setMethod('POST');

        response=httpConnection.send(request);

        String accessToken;

        WrapperClassForAccessToken resultParsed =new WrapperClassForAccessToken();

        if (response.getStatusCode()==200)

        {

            resultParsed =(WrapperClassForAccessToken)JSON.deserialize(response.getBody(), OppIntegration.WrapperClassForAccessToken.class);

            accessToken=resultParsed.access_token;
         }

        return resultParsed;

    }

   

 

    public static void OpportunityCreation(String name, String stagename, String yyyy_mm_dd) {

        Http httpConn = new Http();

        HttpRequest request = new HttpRequest();

        HttpResponse response = new HttpResponse();

        String baseEndPoint = getAccessToken().instance_url;

        String endPoint = baseEndPoint + '/services/data/v58.0/sobjects/Opportunity/';

        String bearer = 'Bearer ' + getAccessToken().access_token;

        request.setEndpoint(endPoint);

        request.setMethod('POST');

        request.setHeader('Authorization', bearer);

        request.setHeader('Content-Type', 'application/json');

       

        OpportunityCreation insertNewRecord = new OpportunityCreation();

        insertNewRecord.Name = name;

        insertNewRecord.StageName =stagename;

        insertNewRecord.CloseDate =yyyy_mm_dd;

   

       

        String jsonBody = JSON.serialize(insertNewRecord);

        request.setBody(jsonBody);

        response = httpConn.send(request);

       

        if (response.getStatusCode() == 200 || response.getStatusCode() == 201) {

            System.debug(response.getBody());

        }

    }

 

    public class OpportunityCreation {

        public String Name { get; set; }

        public String StageName { get; set; }

        public String CloseDate { get; set; }

        // Add other Opportunity fields here

    }

 

    public class WrapperClassForAccessToken {

        public String access_token { get; set; }

        public String instance_url { get; set; }

        public String id { get; set; }

        public String token_type { get; set; }

        public String issued_at { get; set; }

        public String signature { get; set; }

    }
}

 

