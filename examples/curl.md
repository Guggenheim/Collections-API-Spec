#Setup and Testing using Curl on Mac OS X 10.9 Mavericks

This document is intended to provide the simplest, and most easily replicated method for communicating with the Guggenheim Collections API without any external services or systems. The initial three steps are not required, but carrying them out means that the examples below can be copy and pasted.

##Step 1:

add this line to your ~/.bash_profile

```export GUGGAPIKEY=YOURAPIHERE```

Where YOURAPIHERE is your 32 character API Key.


##Step 2:

If your terminal is open, close it and open a new one, or type:

```$ source ~/.bash_profile```

To register the new variable in your bash profile

##Step 3:

Paste this exactly into your terminal:

```$ curl -H "Accept: application/vnd.guggenheim.collection+json" \
        -H "X-GUGGENHEIM-API-KEY: $GUGGAPIKEY" http://api.guggenheim.org/collections/```
        

You should receive the following response:

```{"_links":{"acquisitions":{"href":"http://api.guggenheim.org/collections/acquisitions"},"bibliographies":{"href":"http://api.guggenheim.org/collections/bibliographies"},"constituents":{"href":"http://api.guggenheim.org/collections/constituents"},"exhibitions":{"href":"http://api.guggenheim.org/collections/exhibitions"},"movements":{"href":"http://api.guggenheim.org/collections/movements"},"objects":{"href":"http://api.guggenheim.org/collections/objects"},"sites":{"href":"http://api.guggenheim.org/collections/sites"}}} ```

If not, refer to the <a href="../troubleshooting.md">Troubleshooting document</a>.

# Curl Command Examples

## List Acquisitions
(enpdpoint)

```$ curl -H "Accept: application/vnd.guggenheim.collection+json"     -H "X-GUGGENHEIM-API-KEY: $GUGGAPIKEY" http://api.guggenheim.org/collections/acquisitions```
## List Objects in an Acquisition
(endpoint + id)

```$ curl -H "Accept: application/vnd.guggenheim.collection+json"     -H "X-GUGGENHEIM-API-KEY: $GUGGAPIKEY" http://api.guggenheim.org/collections/acquisitions/6 ```
## Specify how many results 
(endpoint + id + single parameter)

```$ curl -H "Accept: application/vnd.guggenheim.collection+json"     -H "X-GUGGENHEIM-API-KEY: $GUGGAPIKEY" http://api.guggenheim.org/collections/acquisitions/6?per_page=1```
## Specify page number
(endpoint + id + two parameters)

```$ curl -H "Accept: application/vnd.guggenheim.collection+json"     -H "X-GUGGENHEIM-API-KEY: $GUGGAPIKEY" http://api.guggenheim.org/collections/acquisitions/6?per_page=1&page=2```

Refer to <a href="https://github.com/Guggenheim/Collections-API-Spec/blob/master/README.md">README.md</a> for more endpoints

    

