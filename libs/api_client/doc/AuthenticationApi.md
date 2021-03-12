# api_client.api.AuthenticationApi

## Load the API package
```dart
import 'package:api_client/api.dart';
```

All URIs are relative to *http://localhost/alfresco/api/-default-/public/authentication/versions/1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTicket**](AuthenticationApi.md#createTicket) | **post** /tickets | Create ticket (login)
[**deleteTicket**](AuthenticationApi.md#deleteTicket) | **delete** /tickets/-me- | Delete ticket (logout)
[**validateTicket**](AuthenticationApi.md#validateTicket) | **get** /tickets/-me- | Validate ticket


# **createTicket**
> TicketEntry createTicket(ticketBodyCreate)

Create ticket (login)

**Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Logs in and returns the new authentication ticket.  The userId and password properties are mandatory in the request body. For example: ```JSON {     \"userId\": \"jbloggs\",     \"password\": \"password\" } ``` To use the ticket in future requests you should pass it in the request header. For example using Javascript:   ```Javascript     request.setRequestHeader (\"Authorization\", \"Basic \" + btoa(ticket));   ``` 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new AuthenticationApi();
var ticketBodyCreate = new TicketBody(); // TicketBody | The user credential.

try { 
    var result = api_instance.createTicket(ticketBodyCreate);
    print(result);
} catch (e) {
    print('Exception when calling AuthenticationApi->createTicket: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticketBodyCreate** | [**TicketBody**](TicketBody.md)| The user credential. | 

### Return type

[**TicketEntry**](TicketEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteTicket**
> deleteTicket()

Delete ticket (logout)

**Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Deletes logged in ticket (logout). 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new AuthenticationApi();

try { 
    api_instance.deleteTicket();
} catch (e) {
    print('Exception when calling AuthenticationApi->deleteTicket: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validateTicket**
> ValidTicketEntry validateTicket()

Validate ticket

**Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Validates the specified ticket (derived from Authorization header) is still valid.  For example, you can pass the Authorization request header using Javascript:   ```Javascript     request.setRequestHeader (\"Authorization\", \"Basic \" + btoa(ticket));   ``` 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new AuthenticationApi();

try { 
    var result = api_instance.validateTicket();
    print(result);
} catch (e) {
    print('Exception when calling AuthenticationApi->validateTicket: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ValidTicketEntry**](ValidTicketEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

