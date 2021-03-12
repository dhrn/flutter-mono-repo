# api_client.api.ActivitiesApi

## Load the API package
```dart
import 'package:api_client/api.dart';
```

All URIs are relative to *http://localhost/alfresco/api/-default-/public/alfresco/versions/1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listActivitiesForPerson**](ActivitiesApi.md#listActivitiesForPerson) | **get** /people/{personId}/activities | List activities


# **listActivitiesForPerson**
> ActivityPaging listActivitiesForPerson(personId, skipCount, maxItems, who, siteId, fields)

List activities

Gets a list of activities for person **personId**.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new ActivitiesApi();
var personId = personId_example; // String | The identifier of a person.
var skipCount = 56; // int | The number of entities that exist in the collection before those included in this list. If not supplied then the default value is 0. 
var maxItems = 56; // int | The maximum number of items to return in the list. If not supplied then the default value is 100. 
var who = who_example; // String | A filter to include the user's activities only `me`, other user's activities only `others`' 
var siteId = siteId_example; // String | Include only activity feed entries relating to this site.
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.listActivitiesForPerson(personId, skipCount, maxItems, who, siteId, fields);
    print(result);
} catch (e) {
    print('Exception when calling ActivitiesApi->listActivitiesForPerson: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **personId** | **String**| The identifier of a person. | 
 **skipCount** | **int**| The number of entities that exist in the collection before those included in this list. If not supplied then the default value is 0.  | [optional] [default to 0]
 **maxItems** | **int**| The maximum number of items to return in the list. If not supplied then the default value is 100.  | [optional] [default to 100]
 **who** | **String**| A filter to include the user's activities only `me`, other user's activities only `others`'  | [optional] 
 **siteId** | **String**| Include only activity feed entries relating to this site. | [optional] 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**ActivityPaging**](ActivityPaging.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

