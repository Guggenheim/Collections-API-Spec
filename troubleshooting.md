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

###Cause unknown.

Example Output:

<xmp>
HTTP/1.1 400 Bad Request
Date: Thu, 20 Nov 2014 17:47:01 GMT
Server: Apache
Vary: Accept-Encoding
Content-Length: 226
Connection: close
Content-Type: text/html; charset=iso-8859-1

<!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML 2.0//EN">
<html><head>
<title>400 Bad Request</title>
</head><body>
<h1>Bad Request</h1>
<p>Your browser sent a request that this server could not understand.<br />
</p>
</body></html>
</xmp>
