/**
  * Author: Cameron Browning
  * Organization: Solomon R. Guggenheim Foundation
  * Created: 11/20/2014
  * Adapted from Processing HTTPClient Example
 */
 

import processing.net.*;

Client c;
String data;

// GUGG:TODO: include the API key as an environment variable, so we can add to this example and commit the changes easier.
String GUGGAPIKEY = "YOURAPIKEYHERE"; // REPLACE WITH YOUR 32-character API Key

String responseData = "";

void setup() {
  size(200, 200);
  background(50);
  fill(200);
  c = new Client(this, "api.guggenheim.org", 80); // Connect to server on port 80
  c.write("GET /collections/ HTTP/1.1\r\n"); // Use the HTTP "GET" command to ask for a Web page
  c.write("Host: api.guggenheim.org\r\n");
  c.write("Accept: application/vnd.guggenheim.collection+json\r\n");
  c.write("X-GUGGENHEIM-API-KEY: "+GUGGAPIKEY+"\r\n");
  c.write("\r\n");
  println(c);
}

void draw() {
  if (c.available() > 0) { // If there's incoming data from the client...
    data = c.readString(); // ...then grab it and print it
    println(data);
  }
  
  
  
  
}

