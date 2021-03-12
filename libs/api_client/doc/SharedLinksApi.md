# api_client.api.SharedLinksApi

## Load the API package
```dart
import 'package:api_client/api.dart';
```

All URIs are relative to *http://localhost/alfresco/api/-default-/public/alfresco/versions/1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSharedLink**](SharedLinksApi.md#createSharedLink) | **post** /shared-links | Create a shared link to a file
[**deleteSharedLink**](SharedLinksApi.md#deleteSharedLink) | **delete** /shared-links/{sharedId} | Deletes a shared link
[**emailSharedLink**](SharedLinksApi.md#emailSharedLink) | **post** /shared-links/{sharedId}/email | Email shared link
[**getSharedLink**](SharedLinksApi.md#getSharedLink) | **get** /shared-links/{sharedId} | Get a shared link
[**getSharedLinkContent**](SharedLinksApi.md#getSharedLinkContent) | **get** /shared-links/{sharedId}/content | Get shared link content
[**getSharedLinkRendition**](SharedLinksApi.md#getSharedLinkRendition) | **get** /shared-links/{sharedId}/renditions/{renditionId} | Get shared link rendition information
[**getSharedLinkRenditionContent**](SharedLinksApi.md#getSharedLinkRenditionContent) | **get** /shared-links/{sharedId}/renditions/{renditionId}/content | Get shared link rendition content
[**listSharedLinkRenditions**](SharedLinksApi.md#listSharedLinkRenditions) | **get** /shared-links/{sharedId}/renditions | List renditions for a shared link
[**listSharedLinks**](SharedLinksApi.md#listSharedLinks) | **get** /shared-links | List shared links


# **createSharedLink**
> SharedLinkEntry createSharedLink(sharedLinkBodyCreate, include, fields)

Create a shared link to a file

**Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Create a shared link to the file **nodeId** in the request body. Also, an optional expiry date could be set, so the shared link would become invalid when the expiry date is reached. For example:  ```JSON   {     \"nodeId\": \"1ff9da1a-ee2f-4b9c-8c34-3333333333\",     \"expiresAt\": \"2017-03-23T23:00:00.000+0000\"   } ```  **Note:** You can create shared links to more than one file specifying a list of **nodeId**s in the JSON body like this:  ```JSON [   {     \"nodeId\": \"1ff9da1a-ee2f-4b9c-8c34-4444444444\"   },   {     \"nodeId\": \"1ff9da1a-ee2f-4b9c-8c34-5555555555\"   } ] ``` If you specify a list as input, then a paginated list rather than an entry is returned in the response body. For example:  ```JSON {   \"list\": {     \"pagination\": {       \"count\": 2,       \"hasMoreItems\": false,       \"totalItems\": 2,       \"skipCount\": 0,       \"maxItems\": 100     },     \"entries\": [       {         \"entry\": {           ...         }       },       {         \"entry\": {           ...         }       }     ]   } } ``` 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new SharedLinksApi();
var sharedLinkBodyCreate = new SharedLinkBodyCreate(); // SharedLinkBodyCreate | The nodeId to create a shared link for.
var include = []; // BuiltList<String> | Returns additional information about the shared link, the following optional fields can be requested: * allowableOperations * path * properties * isFavorite * aspectNames 
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.createSharedLink(sharedLinkBodyCreate, include, fields);
    print(result);
} catch (e) {
    print('Exception when calling SharedLinksApi->createSharedLink: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sharedLinkBodyCreate** | [**SharedLinkBodyCreate**](SharedLinkBodyCreate.md)| The nodeId to create a shared link for. | 
 **include** | [**BuiltList<String>**](String.md)| Returns additional information about the shared link, the following optional fields can be requested: * allowableOperations * path * properties * isFavorite * aspectNames  | [optional] 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**SharedLinkEntry**](SharedLinkEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSharedLink**
> deleteSharedLink(sharedId)

Deletes a shared link

**Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Deletes the shared link with identifier **sharedId**. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new SharedLinksApi();
var sharedId = sharedId_example; // String | The identifier of a shared link to a file.

try { 
    api_instance.deleteSharedLink(sharedId);
} catch (e) {
    print('Exception when calling SharedLinksApi->deleteSharedLink: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sharedId** | **String**| The identifier of a shared link to a file. | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **emailSharedLink**
> emailSharedLink(sharedId, sharedLinkBodyEmail)

Email shared link

**Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Sends email with app-specific url including identifier **sharedId**.  The client and recipientEmails properties are mandatory in the request body. For example, to email a shared link with minimum info: ```JSON {     \"client\": \"myClient\",     \"recipientEmails\": [\"john.doe@acme.com\", \"joe.bloggs@acme.com\"] } ``` A plain text message property can be optionally provided in the request body to customise the sent email. Also, a locale property can be optionally provided in the request body to send the emails in a particular language (if the locale is supported by Alfresco). For example, to email a shared link with a messages and a locale: ```JSON {     \"client\": \"myClient\",     \"recipientEmails\": [\"john.doe@acme.com\", \"joe.bloggs@acme.com\"],     \"message\": \"myMessage\",     \"locale\":\"en-GB\" } ``` **Note:** The client must be registered before you can send a shared link email. See [server documentation]. However, out-of-the-box  share is registered as a default client, so you could pass **share** as the client name: ```JSON {     \"client\": \"share\",     \"recipientEmails\": [\"john.doe@acme.com\"] } ``` 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new SharedLinksApi();
var sharedId = sharedId_example; // String | The identifier of a shared link to a file.
var sharedLinkBodyEmail = new SharedLinkBodyEmail(); // SharedLinkBodyEmail | The shared link email to send.

try { 
    api_instance.emailSharedLink(sharedId, sharedLinkBodyEmail);
} catch (e) {
    print('Exception when calling SharedLinksApi->emailSharedLink: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sharedId** | **String**| The identifier of a shared link to a file. | 
 **sharedLinkBodyEmail** | [**SharedLinkBodyEmail**](SharedLinkBodyEmail.md)| The shared link email to send. | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSharedLink**
> SharedLinkEntry getSharedLink(sharedId, fields)

Get a shared link

**Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets minimal information for the file with shared link identifier **sharedId**.  **Note:** No authentication is required to call this endpoint. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new SharedLinksApi();
var sharedId = sharedId_example; // String | The identifier of a shared link to a file.
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.getSharedLink(sharedId, fields);
    print(result);
} catch (e) {
    print('Exception when calling SharedLinksApi->getSharedLink: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sharedId** | **String**| The identifier of a shared link to a file. | 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**SharedLinkEntry**](SharedLinkEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSharedLinkContent**
> Uint8List getSharedLinkContent(sharedId, attachment, ifModifiedSince, range)

Get shared link content

**Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets the content of the file with shared link identifier **sharedId**.  **Note:** No authentication is required to call this endpoint. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new SharedLinksApi();
var sharedId = sharedId_example; // String | The identifier of a shared link to a file.
var attachment = true; // bool | **true** enables a web browser to download the file as an attachment. **false** means a web browser may preview the file in a new tab or window, but not download the file.  You can only set this parameter to **false** if the content type of the file is in the supported list; for example, certain image files and PDF files.  If the content type is not supported for preview, then a value of **false**  is ignored, and the attachment will be returned in the response. 
var ifModifiedSince = 2013-10-20T19:20:30+01:00; // DateTime | Only returns the content if it has been modified since the date provided. Use the date format defined by HTTP. For example, `Wed, 09 Mar 2016 16:56:34 GMT`. 
var range = range_example; // String | The Range header indicates the part of a document that the server should return. Single part request supported, for example: bytes=1-10. 

try { 
    var result = api_instance.getSharedLinkContent(sharedId, attachment, ifModifiedSince, range);
    print(result);
} catch (e) {
    print('Exception when calling SharedLinksApi->getSharedLinkContent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sharedId** | **String**| The identifier of a shared link to a file. | 
 **attachment** | **bool**| **true** enables a web browser to download the file as an attachment. **false** means a web browser may preview the file in a new tab or window, but not download the file.  You can only set this parameter to **false** if the content type of the file is in the supported list; for example, certain image files and PDF files.  If the content type is not supported for preview, then a value of **false**  is ignored, and the attachment will be returned in the response.  | [optional] [default to true]
 **ifModifiedSince** | **DateTime**| Only returns the content if it has been modified since the date provided. Use the date format defined by HTTP. For example, `Wed, 09 Mar 2016 16:56:34 GMT`.  | [optional] 
 **range** | **String**| The Range header indicates the part of a document that the server should return. Single part request supported, for example: bytes=1-10.  | [optional] 

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSharedLinkRendition**
> RenditionEntry getSharedLinkRendition(sharedId, renditionId)

Get shared link rendition information

**Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets rendition information for the file with shared link identifier **sharedId**.  This API method returns rendition information where the rendition status is CREATED, which means the rendition is available to view/download.  **Note:** No authentication is required to call this endpoint. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new SharedLinksApi();
var sharedId = sharedId_example; // String | The identifier of a shared link to a file.
var renditionId = renditionId_example; // String | The name of a thumbnail rendition, for example *doclib*, or *pdf*.

try { 
    var result = api_instance.getSharedLinkRendition(sharedId, renditionId);
    print(result);
} catch (e) {
    print('Exception when calling SharedLinksApi->getSharedLinkRendition: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sharedId** | **String**| The identifier of a shared link to a file. | 
 **renditionId** | **String**| The name of a thumbnail rendition, for example *doclib*, or *pdf*. | 

### Return type

[**RenditionEntry**](RenditionEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSharedLinkRenditionContent**
> Uint8List getSharedLinkRenditionContent(sharedId, renditionId, attachment, ifModifiedSince, range)

Get shared link rendition content

**Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets the rendition content for file with shared link identifier **sharedId**.  **Note:** No authentication is required to call this endpoint. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new SharedLinksApi();
var sharedId = sharedId_example; // String | The identifier of a shared link to a file.
var renditionId = renditionId_example; // String | The name of a thumbnail rendition, for example *doclib*, or *pdf*.
var attachment = true; // bool | **true** enables a web browser to download the file as an attachment. **false** means a web browser may preview the file in a new tab or window, but not download the file.  You can only set this parameter to **false** if the content type of the file is in the supported list; for example, certain image files and PDF files.  If the content type is not supported for preview, then a value of **false**  is ignored, and the attachment will be returned in the response. 
var ifModifiedSince = 2013-10-20T19:20:30+01:00; // DateTime | Only returns the content if it has been modified since the date provided. Use the date format defined by HTTP. For example, `Wed, 09 Mar 2016 16:56:34 GMT`. 
var range = range_example; // String | The Range header indicates the part of a document that the server should return. Single part request supported, for example: bytes=1-10. 

try { 
    var result = api_instance.getSharedLinkRenditionContent(sharedId, renditionId, attachment, ifModifiedSince, range);
    print(result);
} catch (e) {
    print('Exception when calling SharedLinksApi->getSharedLinkRenditionContent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sharedId** | **String**| The identifier of a shared link to a file. | 
 **renditionId** | **String**| The name of a thumbnail rendition, for example *doclib*, or *pdf*. | 
 **attachment** | **bool**| **true** enables a web browser to download the file as an attachment. **false** means a web browser may preview the file in a new tab or window, but not download the file.  You can only set this parameter to **false** if the content type of the file is in the supported list; for example, certain image files and PDF files.  If the content type is not supported for preview, then a value of **false**  is ignored, and the attachment will be returned in the response.  | [optional] [default to true]
 **ifModifiedSince** | **DateTime**| Only returns the content if it has been modified since the date provided. Use the date format defined by HTTP. For example, `Wed, 09 Mar 2016 16:56:34 GMT`.  | [optional] 
 **range** | **String**| The Range header indicates the part of a document that the server should return. Single part request supported, for example: bytes=1-10.  | [optional] 

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSharedLinkRenditions**
> RenditionPaging listSharedLinkRenditions(sharedId)

List renditions for a shared link

**Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets a list of the rendition information for the file with shared link identifier **sharedId**.  This API method returns rendition information, including the rendition id, for each rendition where the rendition status is CREATED, which means the rendition is available to view/download.  **Note:** No authentication is required to call this endpoint. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new SharedLinksApi();
var sharedId = sharedId_example; // String | The identifier of a shared link to a file.

try { 
    var result = api_instance.listSharedLinkRenditions(sharedId);
    print(result);
} catch (e) {
    print('Exception when calling SharedLinksApi->listSharedLinkRenditions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sharedId** | **String**| The identifier of a shared link to a file. | 

### Return type

[**RenditionPaging**](RenditionPaging.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSharedLinks**
> SharedLinkPaging listSharedLinks(skipCount, maxItems, where, include, fields)

List shared links

**Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Get a list of links that the current user has read permission on source node.  The list is ordered in descending modified order.  **Note:** The list of links is eventually consistent so newly created shared links may not appear immediately. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new SharedLinksApi();
var skipCount = 56; // int | The number of entities that exist in the collection before those included in this list. If not supplied then the default value is 0. 
var maxItems = 56; // int | The maximum number of items to return in the list. If not supplied then the default value is 100. 
var where = where_example; // String | Optionally filter the list by \"sharedByUser\" userid of person who shared the link (can also use -me-)  *   ```where=(sharedByUser='jbloggs')```  *   ```where=(sharedByUser='-me-')``` 
var include = []; // BuiltList<String> | Returns additional information about the shared link, the following optional fields can be requested: * allowableOperations * path * properties * isFavorite * aspectNames 
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.listSharedLinks(skipCount, maxItems, where, include, fields);
    print(result);
} catch (e) {
    print('Exception when calling SharedLinksApi->listSharedLinks: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **skipCount** | **int**| The number of entities that exist in the collection before those included in this list. If not supplied then the default value is 0.  | [optional] [default to 0]
 **maxItems** | **int**| The maximum number of items to return in the list. If not supplied then the default value is 100.  | [optional] [default to 100]
 **where** | **String**| Optionally filter the list by \"sharedByUser\" userid of person who shared the link (can also use -me-)  *   ```where=(sharedByUser='jbloggs')```  *   ```where=(sharedByUser='-me-')```  | [optional] 
 **include** | [**BuiltList<String>**](String.md)| Returns additional information about the shared link, the following optional fields can be requested: * allowableOperations * path * properties * isFavorite * aspectNames  | [optional] 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**SharedLinkPaging**](SharedLinkPaging.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

