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

