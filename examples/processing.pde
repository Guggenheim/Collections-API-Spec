/**
  * Author: Cameron Browning
  * Organization: Solomon R. Guggenheim Foundation
  * Created: 11/20/2014
  * Citation: Adapted from Processing HTTPClient Example
  * Description: This example illustrates a successful GET request to the Guggenheim's
  * Collections API. 
  ************
  * REQUIRES:
  * JSON-processing
  * https://github.com/agoransson/JSON-processing
  ************
 */
 

import processing.net.*;
import org.json.*;

Client c;
String data;
JSONObject json;

// GUGG:TODO: include the API key as an environment variable, so we can add to this example and commit the changes easier.
String GUGGAPIKEY = "YOURKEYHERE"; // REPLACE WITH YOUR 32-character API Key

String responseData = "";

void setup() {
  size(1280, 720);
  background(50);
  fill(200);
  c = new Client(this, "api.guggenheim.org", 80); // Connect to server on port 80
  c.write("GET /collections/objects/ HTTP/1.1\r\n"); // Use the HTTP "GET" command to ask for a Web page
  c.write("Host: api.guggenheim.org\r\n");
  c.write("Accept: application/vnd.guggenheim.collection+json\r\n");
  c.write("X-GUGGENHEIM-API-KEY: "+GUGGAPIKEY+"\r\n");
  c.write("\r\n");
  println(c);
}

boolean bReceiving = false;
String response = "";

void draw() {
  if (c.available() > 0) { // If there's incoming data from the client...
  bReceiving = true;
    data = c.readString(); // ...then grab it and print it
    response += data;
    String[] strArray = split(data,"\n");
    for(int i=0;i<strArray.length;i++){
    // println(i+" :::: " + strArray[i]); 
    }
    println("\n\n\na\n\n\n");
    //String[] lastElemArray = {strArray[strArray.length-1]};
    //saveStrings("collectionsresponse.txt",lastElemArray);
    
    //JSON myJsonObject = JSON.parse(strArray[strArray.length-1]);
    //json = loadJSONObject("collectionsresponse.txt");
    //String[] links = json.getJSONArray
   // println(myJsonObject.getObject("_links"));

  } else {
    if(bReceiving == true){
      println("I think I'm done");
      
     // println(response.indexOf("{"));
      String jsonString = response.substring(response.indexOf("{"));
     // println(jsonString);
      
      JSON myJsonObject = JSON.parse(jsonString);
      //JSON items = objects.getArray("items");
    // int myid = items.getObject(0);
    JSON objects = myJsonObject.getObject("objects");
   JSON items = objects.getArray("items");
   JSON a = items.getObject(0);
   JSON b = a.getArray("media");
   JSON c = b.getObject(0);
   JSON d = c.getObject("assets");
   JSON e = d.getObject("tiny");
   JSON f = e.getObject("_links");
   JSON g = f.getObject("_self");
  String h = g.getString("href");
      println(h);
      
    
      
      exit();
    }
   //println("b"); 
  }
  
  
  
  
}