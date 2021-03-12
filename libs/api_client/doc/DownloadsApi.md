# api_client.api.DownloadsApi

## Load the API package
```dart
import 'package:api_client/api.dart';
```

All URIs are relative to *http://localhost/alfresco/api/-default-/public/alfresco/versions/1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelDownload**](DownloadsApi.md#cancelDownload) | **delete** /downloads/{downloadId} | Cancel a download
[**createDownload**](DownloadsApi.md#createDownload) | **post** /downloads | Create a new download
[**getDownload**](DownloadsApi.md#getDownload) | **get** /downloads/{downloadId} | Get a download


# **cancelDownload**
> cancelDownload(downloadId)

Cancel a download

**Note:** this endpoint is available in Alfresco 5.2.1 and newer versions.  Cancels the creation of a download request.  **Note:** The download node can be deleted using the **DELETE /nodes/{downloadId}** endpoint  By default, if the download node is not deleted it will be picked up by a cleaner job which removes download nodes older than a configurable amount of time (default is 1 hour)  Information about the existing progress at the time of cancelling can be retrieved by calling the **GET /downloads/{downloadId}** endpoint  The cancel operation is done asynchronously. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new DownloadsApi();
var downloadId = downloadId_example; // String | The identifier of a download node.

try { 
    api_instance.cancelDownload(downloadId);
} catch (e) {
    print('Exception when calling DownloadsApi->cancelDownload: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **downloadId** | **String**| The identifier of a download node. | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createDownload**
> DownloadEntry createDownload(downloadBodyCreate, fields)

Create a new download

**Note:** this endpoint is available in Alfresco 5.2.1 and newer versions.  Creates a new download node asynchronously, the content of which will be the zipped content of the **nodeIds** specified in the JSON body like this:  ```JSON {     \"nodeIds\":      [        \"c8bb482a-ff3c-4704-a3a3-de1c83ccd84c\",        \"cffa62db-aa01-493d-9594-058bc058eeb1\"      ] } ```  **Note:** The content of the download node can be obtained using the **GET /nodes/{downloadId}/content** endpoint 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new DownloadsApi();
var downloadBodyCreate = new DownloadBodyCreate(); // DownloadBodyCreate | The nodeIds the content of which will be zipped, which zip will be set as the content of our download node.
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.createDownload(downloadBodyCreate, fields);
    print(result);
} catch (e) {
    print('Exception when calling DownloadsApi->createDownload: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **downloadBodyCreate** | [**DownloadBodyCreate**](DownloadBodyCreate.md)| The nodeIds the content of which will be zipped, which zip will be set as the content of our download node. | 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**DownloadEntry**](DownloadEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDownload**
> DownloadEntry getDownload(downloadId, fields)

Get a download

**Note:** this endpoint is available in Alfresco 5.2.1 and newer versions.  Retrieve status information for download node **downloadId** 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new DownloadsApi();
var downloadId = downloadId_example; // String | The identifier of a download node.
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.getDownload(downloadId, fields);
    print(result);
} catch (e) {
    print('Exception when calling DownloadsApi->getDownload: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **downloadId** | **String**| The identifier of a download node. | 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**DownloadEntry**](DownloadEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

