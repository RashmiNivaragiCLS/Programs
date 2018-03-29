public class AnimalLocator {
 public static String getAnimalNameById(Integer addid)
    {
        Http http = new Http();
HttpRequest request = new HttpRequest();
request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals'+addid);
request.setMethod('GET');
  Map<String,Object> animal = new Map<String,Object>();
        HttpResponse response = http.send(request);
        
        if(response.getStatusCode()==200)
        {
            Map<String,Object> results = (Map<String,Object>) JSON.deserializeUntyped(response.getBody());
            animal = (Map<String,Object>) results.get('animal');
            System.debug('Received the following animals:' + animal );
            //strResp = string.valueof(animals.get('name'));
           // System.debug('strResp >>>>>>' + strResp );

        }
        
        return String.valueof(animal.get('name'));
    }
}