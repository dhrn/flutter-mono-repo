# api_client.api.NetworksApi

## Load the API package
```dart
import 'package:api_client/api.dart';
```

All URIs are relative to *http://localhost/alfresco/api/-default-/public/alfresco/versions/1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getNetwork**](NetworksApi.md#getNetwork) | **get** /networks/{networkId} | Get a network
[**getNetworkForPerson**](NetworksApi.md#getNetworkForPerson) | **get** /people/{personId}/networks/{networkId} | Get network information
[**listNetworksForPerson**](NetworksApi.md#listNetworksForPerson) | **get** /people/{personId}/networks | List network membership


# **getNetwork**
> PersonNetworkEntry getNetwork(networkId, fields)

Get a network

Gets information for a network **networkId**.

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new NetworksApi();
var networkId = networkId_example; // String | The identifier of a network.
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.getNetwork(networkId, fields);
    print(result);
} catch (e) {
    print('Exception when calling NetworksApi->getNetwork: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **networkId** | **String**| The identifier of a network. | 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**PersonNetworkEntry**](PersonNetworkEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNetworkForPerson**
> PersonNetworkEntry getNetworkForPerson(personId, networkId, fields)

Get network information

Gets network information on a single network specified by **networkId** for **personId**.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new NetworksApi();
var personId = personId_example; // String | The identifier of a person.
var networkId = networkId_example; // String | The identifier of a network.
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.getNetworkForPerson(personId, networkId, fields);
    print(result);
} catch (e) {
    print('Exception when calling NetworksApi->getNetworkForPerson: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **personId** | **String**| The identifier of a person. | 
 **networkId** | **String**| The identifier of a network. | 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**PersonNetworkEntry**](PersonNetworkEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listNetworksForPerson**
> PersonNetworkPaging listNetworksForPerson(personId, skipCount, maxItems, fields)

List network membership

Gets a list of network memberships for person **personId**.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new NetworksApi();
var personId = personId_example; // String | The identifier of a person.
var skipCount = 56; // int | The number of entities that exist in the collection before those included in this list. If not supplied then the default value is 0. 
var maxItems = 56; // int | The maximum number of items to return in the list. If not supplied then the default value is 100. 
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.listNetworksForPerson(personId, skipCount, maxItems, fields);
    print(result);
} catch (e) {
    print('Exception when calling NetworksApi->listNetworksForPerson: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **personId** | **String**| The identifier of a person. | 
 **skipCount** | **int**| The number of entities that exist in the collection before those included in this list. If not supplied then the default value is 0.  | [optional] [default to 0]
 **maxItems** | **int**| The maximum number of items to return in the list. If not supplied then the default value is 100.  | [optional] [default to 100]
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**PersonNetworkPaging**](PersonNetworkPaging.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

