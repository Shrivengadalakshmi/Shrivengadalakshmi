public class JokeAPIHandler {
    public static String getJoke() {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://api.example.com/jokes/random'); // Replace with the actual joke API endpoint
        request.setMethod('GET');
        HttpResponse response = http.send(request);

 
  
        if (response.getStatusCode() == 200) {
            Map<String, Object> jsonResponse = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
            String joke = (String) jsonResponse.get('joke');
            return joke;
        } else {
            return 'Failed to fetch a joke';
        }
    }
}

