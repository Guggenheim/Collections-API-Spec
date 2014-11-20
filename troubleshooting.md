#Troubleshooting

## 401: Unauthorized

###Example output
 ```{"error":{"code":401,"message":"Unauthorized"}}```

###Likely cause
**Invalid or missing API Key.**

A 32-character API Key must be provided with each request. If you do not have one, you should request one from the Guggenheim IT department. 

## 406: Unacceptable

###Example output
```{"error":{"code":406,"message":"Not Acceptable"}}```

###Likely Cause:
**Missing Accept: header**


An Accept header must be specified in each request. Use ```Accept: application/vnd.guggenheim.collection+json```. See the example folder for examples of how to test this in various environments and languages.

## 400: Bad Request
<xmp>
HTTP/1.1 400 Bad Request
Date: Thu, 20 Nov 2014 17:47:01 GMT
Server: Apache
Vary: Accept-Encoding
Content-Length: 226
Connection: close
Content-Type: text/html; charset=iso-8859-1
</xmp>

###Likely Cause:
***Missing host parameter in Request***

In most instances, the *host* field of your request will be automatic. In some cases where you are building the request yourself though, you will need to indicate it. Below is a sample working request, with the Host parameter indicated:

<pre>
GET /collections/ HTTP/1.1
User-Agent: curl/7.28.1
<b>Host: api.guggenheim.org</b>
Accept: application/vnd.guggenheim.collection+json
X-GUGGENHEIM-API-KEY: bab381abe8fa2784f1c1754f79a8a578
</pre>

An example of this in practice can be seen in the <a href="examples/processing.pde">processing example</a>.


