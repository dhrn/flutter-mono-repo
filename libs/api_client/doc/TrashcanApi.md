# api_client.api.TrashcanApi

## Load the API package
```dart
import 'package:api_client/api.dart';
```

All URIs are relative to *http://localhost/alfresco/api/-default-/public/alfresco/versions/1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteDeletedNode**](TrashcanApi.md#deleteDeletedNode) | **delete** /deleted-nodes/{nodeId} | Permanently delete a deleted node
[**getArchivedNodeRendition**](TrashcanApi.md#getArchivedNodeRendition) | **get** /deleted-nodes/{nodeId}/renditions/{renditionId} | Get rendition information for a deleted node
[**getArchivedNodeRenditionContent**](TrashcanApi.md#getArchivedNodeRenditionContent) | **get** /deleted-nodes/{nodeId}/renditions/{renditionId}/content | Get rendition content of a deleted node
[**getDeletedNode**](TrashcanApi.md#getDeletedNode) | **get** /deleted-nodes/{nodeId} | Get a deleted node
[**getDeletedNodeContent**](TrashcanApi.md#getDeletedNodeContent) | **get** /deleted-nodes/{nodeId}/content | Get deleted node content
[**listDeletedNodeRenditions**](TrashcanApi.md#listDeletedNodeRenditions) | **get** /deleted-nodes/{nodeId}/renditions | List renditions for a deleted node
[**listDeletedNodes**](TrashcanApi.md#listDeletedNodes) | **get** /deleted-nodes | List deleted nodes
[**restoreDeletedNode**](TrashcanApi.md#restoreDeletedNode) | **post** /deleted-nodes/{nodeId}/restore | Restore a deleted node


# **deleteDeletedNode**
> deleteDeletedNode(nodeId)

Permanently delete a deleted node

**Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Permanently deletes the deleted node **nodeId**. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new TrashcanApi();
var nodeId = nodeId_example; // String | The identifier of a node.

try { 
    api_instance.deleteDeletedNode(nodeId);
} catch (e) {
    print('Exception when calling TrashcanApi->deleteDeletedNode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nodeId** | **String**| The identifier of a node. | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getArchivedNodeRendition**
> RenditionEntry getArchivedNodeRendition(nodeId, renditionId)

Get rendition information for a deleted node

**Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets the rendition information for **renditionId** of file **nodeId**. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new TrashcanApi();
var nodeId = nodeId_example; // String | The identifier of a node.
var renditionId = renditionId_example; // String | The name of a thumbnail rendition, for example *doclib*, or *pdf*.

try { 
    var result = api_instance.getArchivedNodeRendition(nodeId, renditionId);
    print(result);
} catch (e) {
    print('Exception when calling TrashcanApi->getArchivedNodeRendition: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nodeId** | **String**| The identifier of a node. | 
 **renditionId** | **String**| The name of a thumbnail rendition, for example *doclib*, or *pdf*. | 

### Return type

[**RenditionEntry**](RenditionEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getArchivedNodeRenditionContent**
> Uint8List getArchivedNodeRenditionContent(nodeId, renditionId, attachment, ifModifiedSince, range, placeholder)

Get rendition content of a deleted node

**Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets the rendition content for **renditionId** of file **nodeId**. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new TrashcanApi();
var nodeId = nodeId_example; // String | The identifier of a node.
var renditionId = renditionId_example; // String | The name of a thumbnail rendition, for example *doclib*, or *pdf*.
var attachment = true; // bool | **true** enables a web browser to download the file as an attachment. **false** means a web browser may preview the file in a new tab or window, but not download the file.  You can only set this parameter to **false** if the content type of the file is in the supported list; for example, certain image files and PDF files.  If the content type is not supported for preview, then a value of **false**  is ignored, and the attachment will be returned in the response. 
var ifModifiedSince = 2013-10-20T19:20:30+01:00; // DateTime | Only returns the content if it has been modified since the date provided. Use the date format defined by HTTP. For example, `Wed, 09 Mar 2016 16:56:34 GMT`. 
var range = range_example; // String | The Range header indicates the part of a document that the server should return. Single part request supported, for example: bytes=1-10. 
var placeholder = true; // bool | If **true** and there is no rendition for this **nodeId** and **renditionId**, then the placeholder image for the mime type of this rendition is returned, rather than a 404 response. 

try { 
    var result = api_instance.getArchivedNodeRenditionContent(nodeId, renditionId, attachment, ifModifiedSince, range, placeholder);
    print(result);
} catch (e) {
    print('Exception when calling TrashcanApi->getArchivedNodeRenditionContent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nodeId** | **String**| The identifier of a node. | 
 **renditionId** | **String**| The name of a thumbnail rendition, for example *doclib*, or *pdf*. | 
 **attachment** | **bool**| **true** enables a web browser to download the file as an attachment. **false** means a web browser may preview the file in a new tab or window, but not download the file.  You can only set this parameter to **false** if the content type of the file is in the supported list; for example, certain image files and PDF files.  If the content type is not supported for preview, then a value of **false**  is ignored, and the attachment will be returned in the response.  | [optional] [default to true]
 **ifModifiedSince** | **DateTime**| Only returns the content if it has been modified since the date provided. Use the date format defined by HTTP. For example, `Wed, 09 Mar 2016 16:56:34 GMT`.  | [optional] 
 **range** | **String**| The Range header indicates the part of a document that the server should return. Single part request supported, for example: bytes=1-10.  | [optional] 
 **placeholder** | **bool**| If **true** and there is no rendition for this **nodeId** and **renditionId**, then the placeholder image for the mime type of this rendition is returned, rather than a 404 response.  | [optional] [default to false]

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeletedNode**
> DeletedNodeEntry getDeletedNode(nodeId, include)

Get a deleted node

**Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets the specific deleted node **nodeId**. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new TrashcanApi();
var nodeId = nodeId_example; // String | The identifier of a node.
var include = []; // BuiltList<String> | Returns additional information about the node. The following optional fields can be requested: * allowableOperations * association * isLink * isFavorite * isLocked * path * permissions * definition 

try { 
    var result = api_instance.getDeletedNode(nodeId, include);
    print(result);
} catch (e) {
    print('Exception when calling TrashcanApi->getDeletedNode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nodeId** | **String**| The identifier of a node. | 
 **include** | [**BuiltList<String>**](String.md)| Returns additional information about the node. The following optional fields can be requested: * allowableOperations * association * isLink * isFavorite * isLocked * path * permissions * definition  | [optional] 

### Return type

[**DeletedNodeEntry**](DeletedNodeEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeletedNodeContent**
> Uint8List getDeletedNodeContent(nodeId, attachment, ifModifiedSince, range)

Get deleted node content

**Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets the content of the deleted node with identifier **nodeId**. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new TrashcanApi();
var nodeId = nodeId_example; // String | The identifier of a node.
var attachment = true; // bool | **true** enables a web browser to download the file as an attachment. **false** means a web browser may preview the file in a new tab or window, but not download the file.  You can only set this parameter to **false** if the content type of the file is in the supported list; for example, certain image files and PDF files.  If the content type is not supported for preview, then a value of **false**  is ignored, and the attachment will be returned in the response. 
var ifModifiedSince = 2013-10-20T19:20:30+01:00; // DateTime | Only returns the content if it has been modified since the date provided. Use the date format defined by HTTP. For example, `Wed, 09 Mar 2016 16:56:34 GMT`. 
var range = range_example; // String | The Range header indicates the part of a document that the server should return. Single part request supported, for example: bytes=1-10. 

try { 
    var result = api_instance.getDeletedNodeContent(nodeId, attachment, ifModifiedSince, range);
    print(result);
} catch (e) {
    print('Exception when calling TrashcanApi->getDeletedNodeContent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nodeId** | **String**| The identifier of a node. | 
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

# **listDeletedNodeRenditions**
> RenditionPaging listDeletedNodeRenditions(nodeId, where)

List renditions for a deleted node

**Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets a list of the rendition information for each rendition of the file **nodeId**, including the rendition id.  Each rendition returned has a **status**: CREATED means it is available to view or download, NOT_CREATED means the rendition can be requested.  You can use the **where** parameter to filter the returned renditions by **status**. For example, the following **where** clause will return just the CREATED renditions:  ``` (status='CREATED') ``` 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new TrashcanApi();
var nodeId = nodeId_example; // String | The identifier of a node.
var where = where_example; // String | A string to restrict the returned objects by using a predicate.

try { 
    var result = api_instance.listDeletedNodeRenditions(nodeId, where);
    print(result);
} catch (e) {
    print('Exception when calling TrashcanApi->listDeletedNodeRenditions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nodeId** | **String**| The identifier of a node. | 
 **where** | **String**| A string to restrict the returned objects by using a predicate. | [optional] 

### Return type

[**RenditionPaging**](RenditionPaging.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDeletedNodes**
> DeletedNodesPaging listDeletedNodes(skipCount, maxItems, include)

List deleted nodes

**Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets a list of deleted nodes for the current user.  If the current user is an administrator deleted nodes for all users will be returned.  The list of deleted nodes will be ordered with the most recently deleted node at the top of the list. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new TrashcanApi();
var skipCount = 56; // int | The number of entities that exist in the collection before those included in this list. If not supplied then the default value is 0. 
var maxItems = 56; // int | The maximum number of items to return in the list. If not supplied then the default value is 100. 
var include = []; // BuiltList<String> | Returns additional information about the node. The following optional fields can be requested: * allowableOperations * aspectNames * association * isLink * isFavorite * isLocked * path * properties * permissions 

try { 
    var result = api_instance.listDeletedNodes(skipCount, maxItems, include);
    print(result);
} catch (e) {
    print('Exception when calling TrashcanApi->listDeletedNodes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **skipCount** | **int**| The number of entities that exist in the collection before those included in this list. If not supplied then the default value is 0.  | [optional] [default to 0]
 **maxItems** | **int**| The maximum number of items to return in the list. If not supplied then the default value is 100.  | [optional] [default to 100]
 **include** | [**BuiltList<String>**](String.md)| Returns additional information about the node. The following optional fields can be requested: * allowableOperations * aspectNames * association * isLink * isFavorite * isLocked * path * properties * permissions  | [optional] 

### Return type

[**DeletedNodesPaging**](DeletedNodesPaging.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restoreDeletedNode**
> NodeEntry restoreDeletedNode(nodeId, fields, deletedNodeBodyRestore)

Restore a deleted node

**Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Attempts to restore the deleted node **nodeId** to its original location or to a new location.  If the node is successfully restored to its former primary parent, then only the primary child association will be restored, including recursively for any primary children. It should be noted that no other secondary child associations or peer associations will be restored, for any of the nodes within the primary parent-child hierarchy of restored nodes, irrespective of whether these associations were to nodes within or outside of the restored hierarchy.  Also, any previously shared link will not be restored since it is deleted at the time of delete of each node. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new TrashcanApi();
var nodeId = nodeId_example; // String | The identifier of a node.
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 
var deletedNodeBodyRestore = new DeletedNodeBodyRestore(); // DeletedNodeBodyRestore | The targetParentId if the node is restored to a new location.

try { 
    var result = api_instance.restoreDeletedNode(nodeId, fields, deletedNodeBodyRestore);
    print(result);
} catch (e) {
    print('Exception when calling TrashcanApi->restoreDeletedNode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nodeId** | **String**| The identifier of a node. | 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 
 **deletedNodeBodyRestore** | [**DeletedNodeBodyRestore**](DeletedNodeBodyRestore.md)| The targetParentId if the node is restored to a new location. | [optional] 

### Return type

[**NodeEntry**](NodeEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

