# api_client.api.NodesApi

## Load the API package
```dart
import 'package:api_client/api.dart';
```

All URIs are relative to *http://localhost/alfresco/api/-default-/public/alfresco/versions/1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**copyNode**](NodesApi.md#copyNode) | **post** /nodes/{nodeId}/copy | Copy a node
[**createAssociation**](NodesApi.md#createAssociation) | **post** /nodes/{nodeId}/targets | Create node association
[**createNode**](NodesApi.md#createNode) | **post** /nodes/{nodeId}/children | Create a node
[**createSecondaryChildAssociation**](NodesApi.md#createSecondaryChildAssociation) | **post** /nodes/{nodeId}/secondary-children | Create secondary child
[**deleteAssociation**](NodesApi.md#deleteAssociation) | **delete** /nodes/{nodeId}/targets/{targetId} | Delete node association(s)
[**deleteNode**](NodesApi.md#deleteNode) | **delete** /nodes/{nodeId} | Delete a node
[**deleteSecondaryChildAssociation**](NodesApi.md#deleteSecondaryChildAssociation) | **delete** /nodes/{nodeId}/secondary-children/{childId} | Delete secondary child or children
[**getNode**](NodesApi.md#getNode) | **get** /nodes/{nodeId} | Get a node
[**getNodeContent**](NodesApi.md#getNodeContent) | **get** /nodes/{nodeId}/content | Get node content
[**listNodeChildren**](NodesApi.md#listNodeChildren) | **get** /nodes/{nodeId}/children | List node children
[**listParents**](NodesApi.md#listParents) | **get** /nodes/{nodeId}/parents | List parents
[**listSecondaryChildren**](NodesApi.md#listSecondaryChildren) | **get** /nodes/{nodeId}/secondary-children | List secondary children
[**listSourceAssociations**](NodesApi.md#listSourceAssociations) | **get** /nodes/{nodeId}/sources | List source associations
[**listTargetAssociations**](NodesApi.md#listTargetAssociations) | **get** /nodes/{nodeId}/targets | List target associations
[**lockNode**](NodesApi.md#lockNode) | **post** /nodes/{nodeId}/lock | Lock a node
[**moveNode**](NodesApi.md#moveNode) | **post** /nodes/{nodeId}/move | Move a node
[**requestContentUrl**](NodesApi.md#requestContentUrl) | **post** /nodes/{nodeId}/request-content-url | Generate a direct access content url
[**requestContentUrl_0**](NodesApi.md#requestContentUrl_0) | **post** /nodes/{nodeId}/renditions/{renditionId}/request-content-url | Generate a direct access content url
[**requestContentUrl_1**](NodesApi.md#requestContentUrl_1) | **post** /nodes/{nodeId}/versions/{versionId}/request-content-url | Generate a direct access content url
[**requestContentUrl_2**](NodesApi.md#requestContentUrl_2) | **post** /nodes/{nodeId}/versions/{versionId}/renditions/{renditionId}/request-content-url | Generate a direct access content url
[**unlockNode**](NodesApi.md#unlockNode) | **post** /nodes/{nodeId}/unlock | Unlock a node
[**updateNode**](NodesApi.md#updateNode) | **put** /nodes/{nodeId} | Update a node
[**updateNodeContent**](NodesApi.md#updateNodeContent) | **put** /nodes/{nodeId}/content | Update node content


# **copyNode**
> NodeEntry copyNode(nodeId, nodeBodyCopy, include, fields)

Copy a node

**Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Copies the node **nodeId** to the parent folder node **targetParentId**. You specify the **targetParentId** in the request body.  The new node has the same name as the source node unless you specify a new **name** in the request body.  If the source **nodeId** is a folder, then all of its children are also copied.  If the source **nodeId** is a file, it's properties, aspects and tags are copied, it's ratings, comments and locks are not. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new NodesApi();
var nodeId = nodeId_example; // String | The identifier of a node.
var nodeBodyCopy = new NodeBodyCopy(); // NodeBodyCopy | The targetParentId and, optionally, a new name which should include the file extension.
var include = []; // BuiltList<String> | Returns additional information about the node. The following optional fields can be requested: * allowableOperations * association * isLink * isFavorite * isLocked * path * permissions * definition 
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.copyNode(nodeId, nodeBodyCopy, include, fields);
    print(result);
} catch (e) {
    print('Exception when calling NodesApi->copyNode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nodeId** | **String**| The identifier of a node. | 
 **nodeBodyCopy** | [**NodeBodyCopy**](NodeBodyCopy.md)| The targetParentId and, optionally, a new name which should include the file extension. | 
 **include** | [**BuiltList<String>**](String.md)| Returns additional information about the node. The following optional fields can be requested: * allowableOperations * association * isLink * isFavorite * isLocked * path * permissions * definition  | [optional] 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**NodeEntry**](NodeEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createAssociation**
> AssociationEntry createAssociation(nodeId, associationBodyCreate, fields)

Create node association

**Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Create an association, with the given association type, between the source **nodeId** and a target node.  **Note:** You can create more than one association by specifying a list of associations in the JSON body like this:  ```JSON [   {      \"targetId\": \"string\",      \"assocType\": \"string\"   },   {     \"targetId\": \"string\",     \"assocType\": \"string\"   } ] ``` If you specify a list as input, then a paginated list rather than an entry is returned in the response body. For example:  ```JSON {   \"list\": {     \"pagination\": {       \"count\": 2,       \"hasMoreItems\": false,       \"totalItems\": 2,       \"skipCount\": 0,       \"maxItems\": 100     },     \"entries\": [       {         \"entry\": {           ...         }       },       {         \"entry\": {           ...         }       }     ]   } } ``` 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new NodesApi();
var nodeId = nodeId_example; // String | The identifier of a source node.
var associationBodyCreate = new AssociationBody(); // AssociationBody | The target node id and assoc type.
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.createAssociation(nodeId, associationBodyCreate, fields);
    print(result);
} catch (e) {
    print('Exception when calling NodesApi->createAssociation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nodeId** | **String**| The identifier of a source node. | 
 **associationBodyCreate** | [**AssociationBody**](AssociationBody.md)| The target node id and assoc type. | 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**AssociationEntry**](AssociationEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createNode**
> NodeEntry createNode(nodeId, autoRename, include, fields, nodeBodyCreate)

Create a node

**Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Create a node and add it as a primary child of node **nodeId**.  This endpoint supports both JSON and multipart/form-data (file upload).  **Using multipart/form-data**  Use the **filedata** field to represent the content to upload, for example, the following curl command will create a node with the contents of test.txt in the test user's home folder.  ```curl -utest:test -X POST host:port/alfresco/api/-default-/public/alfresco/versions/1/nodes/-my-/children -F filedata=@test.txt```  You can use the **name** field to give an alternative name for the new file.  You can use the **nodeType** field to create a specific type. The default is cm:content.  You can use the **renditions** field to create renditions (e.g. doclib) asynchronously upon upload. Also, as requesting rendition is a background process, any rendition failure (e.g. No transformer is currently available) will not fail the whole upload and has the potential to silently fail.  Use **overwrite** to overwrite an existing file, matched by name. If the file is versionable, the existing content is replaced.  When you overwrite existing content, you can set the **majorVersion** boolean field to **true** to indicate a major version should be created. The default for **majorVersion** is **false**. Setting  **majorVersion** enables versioning of the node, if it is not already versioned.  When you overwrite existing content, you can use the **comment** field to add a version comment that appears in the version history. This also enables versioning of this node, if it is not already versioned.  You can set the **autoRename** boolean field to automatically resolve name clashes. If there is a name clash, then the API method tries to create a unique name using an integer suffix.  You can use the **relativePath** field to specify the folder structure to create relative to the node **nodeId**. Folders in the **relativePath** that do not exist are created before the node is created.  Any other field provided will be treated as a property to set on the newly created node.  **Note:** setting properties of type d:content and d:category are not supported.  **Using JSON**  You must specify at least a **name** and **nodeType**. For example, to create a folder: ```JSON {   \"name\":\"My Folder\",   \"nodeType\":\"cm:folder\" } ```  You can create an empty file like this: ```JSON {   \"name\":\"My text file.txt\",   \"nodeType\":\"cm:content\" } ``` You can update binary content using the ```PUT /nodes/{nodeId}``` API method.  You can create a folder, or other node, inside a folder hierarchy: ```JSON {   \"name\":\"My Special Folder\",   \"nodeType\":\"cm:folder\",   \"relativePath\":\"X/Y/Z\" } ``` The **relativePath** specifies the folder structure to create relative to the node **nodeId**. Folders in the **relativePath** that do not exist are created before the node is created.  You can set properties when you create a new node: ```JSON {   \"name\":\"My Other Folder\",   \"nodeType\":\"cm:folder\",   \"properties\":   {     \"cm:title\":\"Folder title\",     \"cm:description\":\"This is an important folder\"   } } ```  You can set multi-value properties when you create a new node which supports properties of type multiple.  ```JSON {   \"name\":\"My Other Folder\",   \"nodeType\":\"custom:destination\",   \"properties\":   {     \"cm:title\":\"Folder title\",     \"cm:description\":\"This is an important folder\",     \"custom:locations\": [                          \"location X\",                          \"location Y\"                         ]   } } ```  Any missing aspects are applied automatically. For example, **cm:titled** in the JSON shown above. You can set aspects explicitly, if needed, using an **aspectNames** field.  **Note:** setting properties of type d:content and d:category are not supported.  You can also optionally disable (or enable) inherited permissions via *isInheritanceEnabled* flag: ```JSON {   \"permissions\":     {       \"isInheritanceEnabled\": false,       \"locallySet\":         [           {\"authorityId\": \"GROUP_special\", \"name\": \"Read\", \"accessStatus\":\"DENIED\"},           {\"authorityId\": \"testuser\", \"name\": \"Contributor\", \"accessStatus\":\"ALLOWED\"}         ]     } } ```  Typically, for files and folders, the primary children are created within the parent folder using the default \"cm:contains\" assocType. If the content model allows then it is also possible to create primary children with a different assoc type. For example: ```JSON {   \"name\":\"My Node\",   \"nodeType\":\"my:specialNodeType\",   \"association\":   {     \"assocType\":\"my:specialAssocType\"   } } ```  Additional associations can be added after creating a node. You can also add associations at the time the node is created. This is required, for example, if the content model specifies that a node has mandatory associations to one or more existing nodes. You can optionally specify an array of **secondaryChildren** to create one or more secondary child associations, such that the newly created node acts as a parent node. You can optionally specify an array of **targets** to create one or more peer associations such that the newly created node acts as a source node. For example, to associate one or more secondary children at time of creation: ```JSON {   \"name\":\"My Folder\",   \"nodeType\":\"cm:folder\",   \"secondaryChildren\":     [ {\"childId\":\"abcde-01234-...\", \"assocType\":\"my:specialChildAssocType\"} ] } ``` For example, to associate one or more targets at time of creation: ```JSON {   \"name\":\"My Folder\",   \"nodeType\":\"cm:folder\",   \"targets\":     [ {\"targetId\":\"abcde-01234-...\", \"assocType\":\"my:specialPeerAssocType\"} ] } ```  **Note:** You can create more than one child by specifying a list of nodes in the JSON body. For example, the following JSON body creates two folders inside the specified **nodeId**, if the **nodeId** identifies a folder:  ```JSON [   {     \"name\":\"My Folder 1\",     \"nodeType\":\"cm:folder\"   },   {     \"name\":\"My Folder 2\",     \"nodeType\":\"cm:folder\"   } ] ``` If you specify a list as input, then a paginated list rather than an entry is returned in the response body. For example:  ```JSON {   \"list\": {     \"pagination\": {       \"count\": 2,       \"hasMoreItems\": false,       \"totalItems\": 2,       \"skipCount\": 0,       \"maxItems\": 100     },     \"entries\": [       {         \"entry\": {           ...         }       },       {         \"entry\": {           ...         }       }     ]   } } ``` 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new NodesApi();
var nodeId = nodeId_example; // String | The identifier of a node. You can also use one of these well-known aliases: * -my- * -shared- * -root- 
var autoRename = true; // bool | If true, then  a name clash will cause an attempt to auto rename by finding a unique name using an integer suffix.
var include = []; // BuiltList<String> | Returns additional information about the node. The following optional fields can be requested: * allowableOperations * association * isLink * isFavorite * isLocked * path * permissions * definition 
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 
var nodeBodyCreate = new UNKNOWN_BASE_TYPE(); // UNKNOWN_BASE_TYPE | 

try { 
    var result = api_instance.createNode(nodeId, autoRename, include, fields, nodeBodyCreate);
    print(result);
} catch (e) {
    print('Exception when calling NodesApi->createNode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nodeId** | **String**| The identifier of a node. You can also use one of these well-known aliases: * -my- * -shared- * -root-  | 
 **autoRename** | **bool**| If true, then  a name clash will cause an attempt to auto rename by finding a unique name using an integer suffix. | [optional] 
 **include** | [**BuiltList<String>**](String.md)| Returns additional information about the node. The following optional fields can be requested: * allowableOperations * association * isLink * isFavorite * isLocked * path * permissions * definition  | [optional] 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 
 **nodeBodyCreate** | [**UNKNOWN_BASE_TYPE**](UNKNOWN_BASE_TYPE.md)|  | [optional] 

### Return type

[**NodeEntry**](NodeEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createSecondaryChildAssociation**
> ChildAssociationEntry createSecondaryChildAssociation(nodeId, secondaryChildAssociationBodyCreate, fields)

Create secondary child

**Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Create a secondary child association, with the given association type, between the parent **nodeId** and a child node.  **Note:** You can create more than one secondary child association by specifying a list of associations in the JSON body like this:  ```JSON [   {     \"childId\": \"string\",     \"assocType\": \"string\"   },   {     \"childId\": \"string\",     \"assocType\": \"string\"   } ] ``` If you specify a list as input, then a paginated list rather than an entry is returned in the response body. For example:  ```JSON {   \"list\": {     \"pagination\": {       \"count\": 2,       \"hasMoreItems\": false,       \"totalItems\": 2,       \"skipCount\": 0,       \"maxItems\": 100     },     \"entries\": [       {         \"entry\": {           ...         }       },       {         \"entry\": {           ...         }       }     ]   } } ``` 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new NodesApi();
var nodeId = nodeId_example; // String | The identifier of a parent node.
var secondaryChildAssociationBodyCreate = new ChildAssociationBody(); // ChildAssociationBody | The child node id and assoc type.
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.createSecondaryChildAssociation(nodeId, secondaryChildAssociationBodyCreate, fields);
    print(result);
} catch (e) {
    print('Exception when calling NodesApi->createSecondaryChildAssociation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nodeId** | **String**| The identifier of a parent node. | 
 **secondaryChildAssociationBodyCreate** | [**ChildAssociationBody**](ChildAssociationBody.md)| The child node id and assoc type. | 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**ChildAssociationEntry**](ChildAssociationEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAssociation**
> deleteAssociation(nodeId, targetId, assocType)

Delete node association(s)

**Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Delete an association, or associations, from the source **nodeId* to a target node for the given association type.  If the association type is **not** specified, then all peer associations, of any type, in the direction from source to target, are deleted.  **Note:** After removal of the peer association, or associations, from source to target, the two nodes may still have peer associations in the other direction. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new NodesApi();
var nodeId = nodeId_example; // String | The identifier of a source node.
var targetId = targetId_example; // String | The identifier of a target node.
var assocType = assocType_example; // String | Only delete associations of this type.

try { 
    api_instance.deleteAssociation(nodeId, targetId, assocType);
} catch (e) {
    print('Exception when calling NodesApi->deleteAssociation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nodeId** | **String**| The identifier of a source node. | 
 **targetId** | **String**| The identifier of a target node. | 
 **assocType** | **String**| Only delete associations of this type. | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteNode**
> deleteNode(nodeId, permanent)

Delete a node

**Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Deletes the node **nodeId**.  If **nodeId** is a folder, then its children are also deleted.  Deleted nodes move to the trashcan unless the **permanent** query parameter is **true** and the current user is the owner of the node or an admin.  Deleting a node deletes it from its primary parent and also from any secondary parents. Peer associations are also deleted, where the deleted node is either a source or target of an association. This applies recursively to any hierarchy of primary children of the deleted node.  **Note:** If the node is not permanently deleted, and is later successfully restored to its former primary parent, then the primary child association is restored. This applies recursively for any primary children. No other secondary child associations or peer associations are restored for any of the nodes in the primary parent-child hierarchy of restored nodes, regardless of whether the original associations were to nodes inside or outside the restored hierarchy. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new NodesApi();
var nodeId = nodeId_example; // String | The identifier of a node.
var permanent = true; // bool | If **true** then the node is deleted permanently, without moving to the trashcan. Only the owner of the node or an admin can permanently delete the node. 

try { 
    api_instance.deleteNode(nodeId, permanent);
} catch (e) {
    print('Exception when calling NodesApi->deleteNode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nodeId** | **String**| The identifier of a node. | 
 **permanent** | **bool**| If **true** then the node is deleted permanently, without moving to the trashcan. Only the owner of the node or an admin can permanently delete the node.  | [optional] [default to false]

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSecondaryChildAssociation**
> deleteSecondaryChildAssociation(nodeId, childId, assocType)

Delete secondary child or children

**Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Delete secondary child associations between the parent **nodeId** and child nodes for the given association type.  If the association type is **not** specified, then all secondary child associations, of any type in the direction from parent to secondary child, will be deleted. The child will still have a primary parent and may still be associated as a secondary child with other secondary parents. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new NodesApi();
var nodeId = nodeId_example; // String | The identifier of a parent node.
var childId = childId_example; // String | The identifier of a child node.
var assocType = assocType_example; // String | Only delete associations of this type.

try { 
    api_instance.deleteSecondaryChildAssociation(nodeId, childId, assocType);
} catch (e) {
    print('Exception when calling NodesApi->deleteSecondaryChildAssociation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nodeId** | **String**| The identifier of a parent node. | 
 **childId** | **String**| The identifier of a child node. | 
 **assocType** | **String**| Only delete associations of this type. | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNode**
> NodeEntry getNode(nodeId, include, relativePath, fields)

Get a node

**Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Get information for node **nodeId**.  You can use the **include** parameter to return additional information. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new NodesApi();
var nodeId = nodeId_example; // String | The identifier of a node. You can also use one of these well-known aliases: * -my- * -shared- * -root- 
var include = []; // BuiltList<String> | Returns additional information about the node. The following optional fields can be requested: * allowableOperations * association * isLink * isFavorite * isLocked * path * permissions * definition 
var relativePath = relativePath_example; // String | A path relative to the **nodeId**. If you set this, information is returned on the node resolved by this path. 
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.getNode(nodeId, include, relativePath, fields);
    print(result);
} catch (e) {
    print('Exception when calling NodesApi->getNode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nodeId** | **String**| The identifier of a node. You can also use one of these well-known aliases: * -my- * -shared- * -root-  | 
 **include** | [**BuiltList<String>**](String.md)| Returns additional information about the node. The following optional fields can be requested: * allowableOperations * association * isLink * isFavorite * isLocked * path * permissions * definition  | [optional] 
 **relativePath** | **String**| A path relative to the **nodeId**. If you set this, information is returned on the node resolved by this path.  | [optional] 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**NodeEntry**](NodeEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNodeContent**
> Uint8List getNodeContent(nodeId, attachment, ifModifiedSince, range)

Get node content

**Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets the content of the node with identifier **nodeId**. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new NodesApi();
var nodeId = nodeId_example; // String | The identifier of a node.
var attachment = true; // bool | **true** enables a web browser to download the file as an attachment. **false** means a web browser may preview the file in a new tab or window, but not download the file.  You can only set this parameter to **false** if the content type of the file is in the supported list; for example, certain image files and PDF files.  If the content type is not supported for preview, then a value of **false**  is ignored, and the attachment will be returned in the response. 
var ifModifiedSince = 2013-10-20T19:20:30+01:00; // DateTime | Only returns the content if it has been modified since the date provided. Use the date format defined by HTTP. For example, `Wed, 09 Mar 2016 16:56:34 GMT`. 
var range = range_example; // String | The Range header indicates the part of a document that the server should return. Single part request supported, for example: bytes=1-10. 

try { 
    var result = api_instance.getNodeContent(nodeId, attachment, ifModifiedSince, range);
    print(result);
} catch (e) {
    print('Exception when calling NodesApi->getNodeContent: $e\n');
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

# **listNodeChildren**
> NodeChildAssociationPaging listNodeChildren(nodeId, skipCount, maxItems, orderBy, where, include, relativePath, includeSource, fields)

List node children

**Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets a list of children of the parent node **nodeId**.  Minimal information for each child is returned by default.  You can use the **include** parameter to return additional information.  The list of child nodes includes primary children and secondary children, if there are any.  You can use the **include** parameter (include=association) to return child association details for each child, including the **assocTyp**e and the **isPrimary** flag.  The default sort order for the returned list is for folders to be sorted before files, and by ascending name.  You can override the default using **orderBy** to specify one or more fields to sort by. The default order is always ascending, but you can use an optional **ASC** or **DESC** modifier to specify an ascending or descending sort order.  For example, specifying ```orderBy=name DESC``` returns a mixed folder/file list in descending **name** order.  You can use any of the following fields to order the results: * isFolder * name * mimeType * nodeType * sizeInBytes * modifiedAt * createdAt * modifiedByUser * createdByUser 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new NodesApi();
var nodeId = nodeId_example; // String | The identifier of a node. You can also use one of these well-known aliases: * -my- * -shared- * -root- 
var skipCount = 56; // int | The number of entities that exist in the collection before those included in this list. If not supplied then the default value is 0. 
var maxItems = 56; // int | The maximum number of items to return in the list. If not supplied then the default value is 100. 
var orderBy = []; // BuiltList<String> | A string to control the order of the entities returned in a list. You can use the **orderBy** parameter to sort the list by one or more fields.  Each field has a default sort order, which is normally ascending order. Read the API method implementation notes above to check if any fields used in this method have a descending default search order.  To sort the entities in a specific order, you can use the **ASC** and **DESC** keywords for any field. 
var where = where_example; // String | Optionally filter the list. Here are some examples:  *   ```where=(isFolder=true)```  *   ```where=(isFile=true)```  *   ```where=(nodeType='my:specialNodeType')```  *   ```where=(nodeType='my:specialNodeType INCLUDESUBTYPES')```  *   ```where=(isPrimary=true)```  *   ```where=(assocType='my:specialAssocType')```  *   ```where=(isPrimary=false and assocType='my:specialAssocType')``` 
var include = []; // BuiltList<String> | Returns additional information about the node. The following optional fields can be requested: * allowableOperations * aspectNames * association * isLink * isFavorite * isLocked * path * properties * permissions 
var relativePath = relativePath_example; // String | Return information on children in the folder resolved by this path. The path is relative to **nodeId**.
var includeSource = true; // bool | Also include **source** in addition to **entries** with folder information on the parent node – either the specified parent **nodeId**, or as resolved by **relativePath**.
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.listNodeChildren(nodeId, skipCount, maxItems, orderBy, where, include, relativePath, includeSource, fields);
    print(result);
} catch (e) {
    print('Exception when calling NodesApi->listNodeChildren: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nodeId** | **String**| The identifier of a node. You can also use one of these well-known aliases: * -my- * -shared- * -root-  | 
 **skipCount** | **int**| The number of entities that exist in the collection before those included in this list. If not supplied then the default value is 0.  | [optional] [default to 0]
 **maxItems** | **int**| The maximum number of items to return in the list. If not supplied then the default value is 100.  | [optional] [default to 100]
 **orderBy** | [**BuiltList<String>**](String.md)| A string to control the order of the entities returned in a list. You can use the **orderBy** parameter to sort the list by one or more fields.  Each field has a default sort order, which is normally ascending order. Read the API method implementation notes above to check if any fields used in this method have a descending default search order.  To sort the entities in a specific order, you can use the **ASC** and **DESC** keywords for any field.  | [optional] 
 **where** | **String**| Optionally filter the list. Here are some examples:  *   ```where=(isFolder=true)```  *   ```where=(isFile=true)```  *   ```where=(nodeType='my:specialNodeType')```  *   ```where=(nodeType='my:specialNodeType INCLUDESUBTYPES')```  *   ```where=(isPrimary=true)```  *   ```where=(assocType='my:specialAssocType')```  *   ```where=(isPrimary=false and assocType='my:specialAssocType')```  | [optional] 
 **include** | [**BuiltList<String>**](String.md)| Returns additional information about the node. The following optional fields can be requested: * allowableOperations * aspectNames * association * isLink * isFavorite * isLocked * path * properties * permissions  | [optional] 
 **relativePath** | **String**| Return information on children in the folder resolved by this path. The path is relative to **nodeId**. | [optional] 
 **includeSource** | **bool**| Also include **source** in addition to **entries** with folder information on the parent node – either the specified parent **nodeId**, or as resolved by **relativePath**. | [optional] 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**NodeChildAssociationPaging**](NodeChildAssociationPaging.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listParents**
> NodeAssociationPaging listParents(nodeId, where, include, skipCount, maxItems, includeSource, fields)

List parents

**Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets a list of parent nodes that are associated with the current child **nodeId**.  The list includes both the primary parent and any secondary parents. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new NodesApi();
var nodeId = nodeId_example; // String | The identifier of a child node. You can also use one of these well-known aliases: * -my- * -shared- * -root- 
var where = where_example; // String | Optionally filter the list by **assocType** and/or **isPrimary**. Here are some example filters:  *   ```where=(assocType='my:specialAssocType')```  *   ```where=(isPrimary=true)```  *   ```where=(isPrimary=false and assocType='my:specialAssocType')``` 
var include = []; // BuiltList<String> | Returns additional information about the node. The following optional fields can be requested: * allowableOperations * aspectNames * isLink * isFavorite * isLocked * path * properties 
var skipCount = 56; // int | The number of entities that exist in the collection before those included in this list. If not supplied then the default value is 0. 
var maxItems = 56; // int | The maximum number of items to return in the list. If not supplied then the default value is 100. 
var includeSource = true; // bool | Also include **source** (in addition to **entries**) with folder information on **nodeId**
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.listParents(nodeId, where, include, skipCount, maxItems, includeSource, fields);
    print(result);
} catch (e) {
    print('Exception when calling NodesApi->listParents: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nodeId** | **String**| The identifier of a child node. You can also use one of these well-known aliases: * -my- * -shared- * -root-  | 
 **where** | **String**| Optionally filter the list by **assocType** and/or **isPrimary**. Here are some example filters:  *   ```where=(assocType='my:specialAssocType')```  *   ```where=(isPrimary=true)```  *   ```where=(isPrimary=false and assocType='my:specialAssocType')```  | [optional] 
 **include** | [**BuiltList<String>**](String.md)| Returns additional information about the node. The following optional fields can be requested: * allowableOperations * aspectNames * isLink * isFavorite * isLocked * path * properties  | [optional] 
 **skipCount** | **int**| The number of entities that exist in the collection before those included in this list. If not supplied then the default value is 0.  | [optional] [default to 0]
 **maxItems** | **int**| The maximum number of items to return in the list. If not supplied then the default value is 100.  | [optional] [default to 100]
 **includeSource** | **bool**| Also include **source** (in addition to **entries**) with folder information on **nodeId** | [optional] 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**NodeAssociationPaging**](NodeAssociationPaging.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSecondaryChildren**
> NodeChildAssociationPaging listSecondaryChildren(nodeId, where, include, skipCount, maxItems, includeSource, fields)

List secondary children

**Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets a list of secondary child nodes that are associated with the current parent **nodeId**, via a secondary child association. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new NodesApi();
var nodeId = nodeId_example; // String | The identifier of a parent node. You can also use one of these well-known aliases: * -my- * -shared- * -root- 
var where = where_example; // String | Optionally filter the list by assocType. Here's an example:  *   ```where=(assocType='my:specialAssocType')``` 
var include = []; // BuiltList<String> | Returns additional information about the node. The following optional fields can be requested: * allowableOperations * aspectNames * isLink * isFavorite * isLocked * path * properties 
var skipCount = 56; // int | The number of entities that exist in the collection before those included in this list. If not supplied then the default value is 0. 
var maxItems = 56; // int | The maximum number of items to return in the list. If not supplied then the default value is 100. 
var includeSource = true; // bool | Also include **source** (in addition to **entries**) with folder information on **nodeId**
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.listSecondaryChildren(nodeId, where, include, skipCount, maxItems, includeSource, fields);
    print(result);
} catch (e) {
    print('Exception when calling NodesApi->listSecondaryChildren: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nodeId** | **String**| The identifier of a parent node. You can also use one of these well-known aliases: * -my- * -shared- * -root-  | 
 **where** | **String**| Optionally filter the list by assocType. Here's an example:  *   ```where=(assocType='my:specialAssocType')```  | [optional] 
 **include** | [**BuiltList<String>**](String.md)| Returns additional information about the node. The following optional fields can be requested: * allowableOperations * aspectNames * isLink * isFavorite * isLocked * path * properties  | [optional] 
 **skipCount** | **int**| The number of entities that exist in the collection before those included in this list. If not supplied then the default value is 0.  | [optional] [default to 0]
 **maxItems** | **int**| The maximum number of items to return in the list. If not supplied then the default value is 100.  | [optional] [default to 100]
 **includeSource** | **bool**| Also include **source** (in addition to **entries**) with folder information on **nodeId** | [optional] 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**NodeChildAssociationPaging**](NodeChildAssociationPaging.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSourceAssociations**
> NodeAssociationPaging listSourceAssociations(nodeId, where, include, fields)

List source associations

**Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets a list of source nodes that are associated with the current target **nodeId**. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new NodesApi();
var nodeId = nodeId_example; // String | The identifier of a target node.
var where = where_example; // String | Optionally filter the list by **assocType**. Here's an example:  *   ```where=(assocType='my:specialAssocType')``` 
var include = []; // BuiltList<String> | Returns additional information about the node. The following optional fields can be requested: * allowableOperations * aspectNames * isLink * isFavorite * isLocked * path * properties 
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.listSourceAssociations(nodeId, where, include, fields);
    print(result);
} catch (e) {
    print('Exception when calling NodesApi->listSourceAssociations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nodeId** | **String**| The identifier of a target node. | 
 **where** | **String**| Optionally filter the list by **assocType**. Here's an example:  *   ```where=(assocType='my:specialAssocType')```  | [optional] 
 **include** | [**BuiltList<String>**](String.md)| Returns additional information about the node. The following optional fields can be requested: * allowableOperations * aspectNames * isLink * isFavorite * isLocked * path * properties  | [optional] 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**NodeAssociationPaging**](NodeAssociationPaging.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTargetAssociations**
> NodeAssociationPaging listTargetAssociations(nodeId, where, include, fields)

List target associations

**Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets a list of target nodes that are associated with the current source **nodeId**. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new NodesApi();
var nodeId = nodeId_example; // String | The identifier of a source node.
var where = where_example; // String | Optionally filter the list by **assocType**. Here's an example:  *   ```where=(assocType='my:specialAssocType')``` 
var include = []; // BuiltList<String> | Returns additional information about the node. The following optional fields can be requested: * allowableOperations * aspectNames * isLink * isFavorite * isLocked * path * properties 
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.listTargetAssociations(nodeId, where, include, fields);
    print(result);
} catch (e) {
    print('Exception when calling NodesApi->listTargetAssociations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nodeId** | **String**| The identifier of a source node. | 
 **where** | **String**| Optionally filter the list by **assocType**. Here's an example:  *   ```where=(assocType='my:specialAssocType')```  | [optional] 
 **include** | [**BuiltList<String>**](String.md)| Returns additional information about the node. The following optional fields can be requested: * allowableOperations * aspectNames * isLink * isFavorite * isLocked * path * properties  | [optional] 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**NodeAssociationPaging**](NodeAssociationPaging.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **lockNode**
> NodeEntry lockNode(nodeId, nodeBodyLock, include, fields)

Lock a node

**Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Places a lock on node **nodeId**.  **Note:** you can only lock files. More specifically, a node can only be locked if it is of type `cm:content` or a subtype of `cm:content`.  The lock is owned by the current user, and prevents other users or processes from making updates to the node until the lock is released.  If the **timeToExpire** is not set or is zero, then the lock never expires.  Otherwise, the **timeToExpire** is the number of seconds before the lock expires.  When a lock expires, the lock is released.  If the node is already locked, and the user is the lock owner, then the lock is renewed with the new **timeToExpire**.  By default, a lock is applied that allows the owner to update or delete the node. You can use **type** to change the lock type to one of the following: * **ALLOW_OWNER_CHANGES** (default) changes to the node can be made only by the lock owner. This enum is the same value as the deprecated WRITE_LOCK described in `org.alfresco.service.cmr.lock.LockType` in the Alfresco Public Java API. This is the default value. * **FULL** no changes by any user are allowed. This enum is the same value as the deprecated READ_ONLY_LOCK described in `org.alfresco.service.cmr.lock.LockType` in the Alfresco Public Java API.  By default, a lock is persisted in the database. You can create a volatile in-memory lock by setting the **lifetime** property to EPHEMERAL. You might choose use EPHEMERAL locks, for example, if you are taking frequent short-term locks that you don't need to be kept over a restart of the repository. In this case you don't need the overhead of writing the locks to the database.  If a lock on the node cannot be taken, then an error is returned. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new NodesApi();
var nodeId = nodeId_example; // String | The identifier of a node.
var nodeBodyLock = new NodeBodyLock(); // NodeBodyLock | Lock details.
var include = []; // BuiltList<String> | Returns additional information about the node. The following optional fields can be requested: * allowableOperations * association * isLink * isFavorite * isLocked * path * permissions * definition 
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.lockNode(nodeId, nodeBodyLock, include, fields);
    print(result);
} catch (e) {
    print('Exception when calling NodesApi->lockNode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nodeId** | **String**| The identifier of a node. | 
 **nodeBodyLock** | [**NodeBodyLock**](NodeBodyLock.md)| Lock details. | 
 **include** | [**BuiltList<String>**](String.md)| Returns additional information about the node. The following optional fields can be requested: * allowableOperations * association * isLink * isFavorite * isLocked * path * permissions * definition  | [optional] 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**NodeEntry**](NodeEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **moveNode**
> NodeEntry moveNode(nodeId, nodeBodyMove, include, fields)

Move a node

**Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Move the node **nodeId** to the parent folder node **targetParentId**.  The **targetParentId** is specified in the in request body.  The moved node retains its name unless you specify a new **name** in the request body.  If the source **nodeId** is a folder, then its children are also moved.  The move will effectively change the primary parent. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new NodesApi();
var nodeId = nodeId_example; // String | The identifier of a node.
var nodeBodyMove = new NodeBodyMove(); // NodeBodyMove | The targetParentId and, optionally, a new name which should include the file extension.
var include = []; // BuiltList<String> | Returns additional information about the node. The following optional fields can be requested: * allowableOperations * association * isLink * isFavorite * isLocked * path * permissions * definition 
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.moveNode(nodeId, nodeBodyMove, include, fields);
    print(result);
} catch (e) {
    print('Exception when calling NodesApi->moveNode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nodeId** | **String**| The identifier of a node. | 
 **nodeBodyMove** | [**NodeBodyMove**](NodeBodyMove.md)| The targetParentId and, optionally, a new name which should include the file extension. | 
 **include** | [**BuiltList<String>**](String.md)| Returns additional information about the node. The following optional fields can be requested: * allowableOperations * association * isLink * isFavorite * isLocked * path * permissions * definition  | [optional] 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**NodeEntry**](NodeEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **requestContentUrl**
> DirectAccessUrlEntry requestContentUrl(nodeId, requestContentUrlBodyCreate)

Generate a direct access content url

**Note:** this endpoint is available in Alfresco 7.0 and newer versions.  Generate a direct access content url for the given **nodeId**. Optionally the expiry at date could be set, so the direct access link would become invalid when the expiry date is reached. For example:  ```JSON  {    \"expiresAt\": \"2017-03-23T23:00:00.000+0000\"  } ``` Or optionally the validFor (in seconds) could be set, so the direct access link is valid for that length of time.  ```JSON  {    \"validFor\": \"60\"  } ```  **Note:** If an expiryAt date or validFor time length isn't provided then a default of 300 seconds (5 minutes) validity time is used if not configured otherwise. **Note:** It is up to the actual ContentStore implementation if it can fulfil this request or not. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new NodesApi();
var nodeId = nodeId_example; // String | The identifier of a node.
var requestContentUrlBodyCreate = new DirectAccessUrlBodyCreate(); // DirectAccessUrlBodyCreate | Optionally, specify the expiry at date or the length of time in seconds that the link is valid for. Note: It is up to the actual ContentStore implementation if it can fulfil this request or not. 

try { 
    var result = api_instance.requestContentUrl(nodeId, requestContentUrlBodyCreate);
    print(result);
} catch (e) {
    print('Exception when calling NodesApi->requestContentUrl: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nodeId** | **String**| The identifier of a node. | 
 **requestContentUrlBodyCreate** | [**DirectAccessUrlBodyCreate**](DirectAccessUrlBodyCreate.md)| Optionally, specify the expiry at date or the length of time in seconds that the link is valid for. Note: It is up to the actual ContentStore implementation if it can fulfil this request or not.  | [optional] 

### Return type

[**DirectAccessUrlEntry**](DirectAccessUrlEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **requestContentUrl_0**
> DirectAccessUrlEntry requestContentUrl_0(nodeId, renditionId, requestContentUrlBodyCreate)

Generate a direct access content url

**Note:** this endpoint is available in Alfresco 7.0 and newer versions.  Generate a direct access content url for the given **nodeId**. Optionally the expiry at date could be set, so the direct access link would become invalid when the expiry date is reached. For example:  ```JSON  {    \"expiresAt\": \"2017-03-23T23:00:00.000+0000\"  } ``` Or optionally the validFor (in seconds) could be set, so the direct access link is valid for that length of time.  ```JSON  {    \"validFor\": \"60\"  } ```  **Note:** If an expiryAt date or validFor time length isn't provided then a default of 300 seconds (5 minutes) validity time is used if not configured otherwise. **Note:** It is up to the actual ContentStore implementation if it can fulfil this request or not. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new NodesApi();
var nodeId = nodeId_example; // String | The identifier of a node.
var renditionId = renditionId_example; // String | The name of a thumbnail rendition, for example *doclib*, or *pdf*.
var requestContentUrlBodyCreate = new DirectAccessUrlBodyCreate(); // DirectAccessUrlBodyCreate | Optionally, specify the expiry at date or the length of time in seconds that the link is valid for. Note: It is up to the actual ContentStore implementation if it can fulfil this request or not. 

try { 
    var result = api_instance.requestContentUrl_0(nodeId, renditionId, requestContentUrlBodyCreate);
    print(result);
} catch (e) {
    print('Exception when calling NodesApi->requestContentUrl_0: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nodeId** | **String**| The identifier of a node. | 
 **renditionId** | **String**| The name of a thumbnail rendition, for example *doclib*, or *pdf*. | 
 **requestContentUrlBodyCreate** | [**DirectAccessUrlBodyCreate**](DirectAccessUrlBodyCreate.md)| Optionally, specify the expiry at date or the length of time in seconds that the link is valid for. Note: It is up to the actual ContentStore implementation if it can fulfil this request or not.  | [optional] 

### Return type

[**DirectAccessUrlEntry**](DirectAccessUrlEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **requestContentUrl_1**
> DirectAccessUrlEntry requestContentUrl_1(nodeId, versionId, requestContentUrlBodyCreate)

Generate a direct access content url

**Note:** this endpoint is available in Alfresco 7.0 and newer versions.  Generate a direct access content url for the given **nodeId**. Optionally the expiry at date could be set, so the direct access link would become invalid when the expiry date is reached. For example:  ```JSON  {    \"expiresAt\": \"2017-03-23T23:00:00.000+0000\"  } ``` Or optionally the validFor (in seconds) could be set, so the direct access link is valid for that length of time.  ```JSON  {    \"validFor\": \"60\"  } ```  **Note:** If an expiryAt date or validFor time length isn't provided then a default of 300 seconds (5 minutes) validity time is used if not configured otherwise. **Note:** It is up to the actual ContentStore implementation if it can fulfil this request or not. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new NodesApi();
var nodeId = nodeId_example; // String | The identifier of a node.
var versionId = versionId_example; // String | The identifier of a version, ie. version label, within the version history of a node.
var requestContentUrlBodyCreate = new DirectAccessUrlBodyCreate(); // DirectAccessUrlBodyCreate | Optionally, specify the expiry at date or the length of time in seconds that the link is valid for. Note: It is up to the actual ContentStore implementation if it can fulfil this request or not. 

try { 
    var result = api_instance.requestContentUrl_1(nodeId, versionId, requestContentUrlBodyCreate);
    print(result);
} catch (e) {
    print('Exception when calling NodesApi->requestContentUrl_1: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nodeId** | **String**| The identifier of a node. | 
 **versionId** | **String**| The identifier of a version, ie. version label, within the version history of a node. | 
 **requestContentUrlBodyCreate** | [**DirectAccessUrlBodyCreate**](DirectAccessUrlBodyCreate.md)| Optionally, specify the expiry at date or the length of time in seconds that the link is valid for. Note: It is up to the actual ContentStore implementation if it can fulfil this request or not.  | [optional] 

### Return type

[**DirectAccessUrlEntry**](DirectAccessUrlEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **requestContentUrl_2**
> DirectAccessUrlEntry requestContentUrl_2(nodeId, versionId, renditionId, requestContentUrlBodyCreate)

Generate a direct access content url

**Note:** this endpoint is available in Alfresco 7.0 and newer versions.  Generate a direct access content url for the given **nodeId**. Optionally the expiry at date could be set, so the direct access link would become invalid when the expiry date is reached. For example:  ```JSON  {    \"expiresAt\": \"2017-03-23T23:00:00.000+0000\"  } ``` Or optionally the validFor (in seconds) could be set, so the direct access link is valid for that length of time.  ```JSON  {    \"validFor\": \"60\"  } ```  **Note:** If an expiryAt date or validFor time length isn't provided then a default of 300 seconds (5 minutes) validity time is used if not configured otherwise. **Note:** It is up to the actual ContentStore implementation if it can fulfil this request or not. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new NodesApi();
var nodeId = nodeId_example; // String | The identifier of a node.
var versionId = versionId_example; // String | The identifier of a version, ie. version label, within the version history of a node.
var renditionId = renditionId_example; // String | The name of a thumbnail rendition, for example *doclib*, or *pdf*.
var requestContentUrlBodyCreate = new DirectAccessUrlBodyCreate(); // DirectAccessUrlBodyCreate | Optionally, specify the expiry at date or the length of time in seconds that the link is valid for. Note: It is up to the actual ContentStore implementation if it can fulfil this request or not. 

try { 
    var result = api_instance.requestContentUrl_2(nodeId, versionId, renditionId, requestContentUrlBodyCreate);
    print(result);
} catch (e) {
    print('Exception when calling NodesApi->requestContentUrl_2: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nodeId** | **String**| The identifier of a node. | 
 **versionId** | **String**| The identifier of a version, ie. version label, within the version history of a node. | 
 **renditionId** | **String**| The name of a thumbnail rendition, for example *doclib*, or *pdf*. | 
 **requestContentUrlBodyCreate** | [**DirectAccessUrlBodyCreate**](DirectAccessUrlBodyCreate.md)| Optionally, specify the expiry at date or the length of time in seconds that the link is valid for. Note: It is up to the actual ContentStore implementation if it can fulfil this request or not.  | [optional] 

### Return type

[**DirectAccessUrlEntry**](DirectAccessUrlEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unlockNode**
> NodeEntry unlockNode(nodeId, include, fields)

Unlock a node

**Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Deletes a lock on node **nodeId**.  The current user must be the owner of the locks or have admin rights, otherwise an error is returned.  If a lock on the node cannot be released, then an error is returned. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new NodesApi();
var nodeId = nodeId_example; // String | The identifier of a node.
var include = []; // BuiltList<String> | Returns additional information about the node. The following optional fields can be requested: * allowableOperations * association * isLink * isFavorite * isLocked * path * permissions * definition 
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.unlockNode(nodeId, include, fields);
    print(result);
} catch (e) {
    print('Exception when calling NodesApi->unlockNode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nodeId** | **String**| The identifier of a node. | 
 **include** | [**BuiltList<String>**](String.md)| Returns additional information about the node. The following optional fields can be requested: * allowableOperations * association * isLink * isFavorite * isLocked * path * permissions * definition  | [optional] 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**NodeEntry**](NodeEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateNode**
> NodeEntry updateNode(nodeId, nodeBodyUpdate, include, fields)

Update a node

**Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Updates the node **nodeId**. For example, you can rename a file or folder: ```JSON {   \"name\":\"My new name\" } ``` You can also set or update one or more properties: ```JSON {   \"properties\":   {     \"cm:title\":\"Folder title\"   } } ``` You can update multi-value properties of a node which supports properties of type multiple.  ```JSON {   \"name\":\"My Other Folder\",   \"nodeType\":\"custom:destination\",   \"properties\":   {     \"cm:title\":\"Folder title\",     \"cm:description\":\"This is an important folder\",     \"custom:locations\": [                          \"location NewX\",                          \"location NewY\"                         ]   } } ```  **Note:** setting properties of type d:content and d:category are not supported.  **Note:** if you want to add or remove aspects, then you must use **GET /nodes/{nodeId}** first to get the complete set of *aspectNames*.  You can add (or remove) *locallySet* permissions, if any, in addition to any inherited permissions. You can also optionally disable (or re-enable) inherited permissions via *isInheritanceEnabled* flag: ```JSON {   \"permissions\":     {       \"isInheritanceEnabled\": false,       \"locallySet\":         [           {\"authorityId\": \"GROUP_special\", \"name\": \"Read\", \"accessStatus\":\"DENIED\"},           {\"authorityId\": \"testuser\", \"name\": \"Contributor\", \"accessStatus\":\"ALLOWED\"}         ]     } } ``` **Note:** if you want to add or remove locally set permissions then you must use **GET /nodes/{nodeId}** first to get the complete set of *locallySet* permissions.  **Note:** Currently there is no optimistic locking for updates, so they are applied in \"last one wins\" order. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new NodesApi();
var nodeId = nodeId_example; // String | The identifier of a node.
var nodeBodyUpdate = new NodeBodyUpdate(); // NodeBodyUpdate | The node information to update.
var include = []; // BuiltList<String> | Returns additional information about the node. The following optional fields can be requested: * allowableOperations * association * isLink * isFavorite * isLocked * path * permissions * definition 
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.updateNode(nodeId, nodeBodyUpdate, include, fields);
    print(result);
} catch (e) {
    print('Exception when calling NodesApi->updateNode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nodeId** | **String**| The identifier of a node. | 
 **nodeBodyUpdate** | [**NodeBodyUpdate**](NodeBodyUpdate.md)| The node information to update. | 
 **include** | [**BuiltList<String>**](String.md)| Returns additional information about the node. The following optional fields can be requested: * allowableOperations * association * isLink * isFavorite * isLocked * path * permissions * definition  | [optional] 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**NodeEntry**](NodeEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateNodeContent**
> NodeEntry updateNodeContent(nodeId, contentBodyUpdate, majorVersion, comment, name, include, fields)

Update node content

**Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Updates the content of the node with identifier **nodeId**.  The request body for this endpoint can be any text or binary stream.  The **majorVersion** and **comment** parameters can be used to control versioning behaviour. If the content is versionable, a new minor version is created by default.  Optionally a new **name** parameter can also be specified that must be unique within the parent folder. If specified and valid then this will rename the node. If invalid then an error is returned and the content is not updated.  **Note:** This API method accepts any content type, but for testing with this tool text based content can be provided. This is because the OpenAPI Specification does not allow a wildcard to be provided or the ability for tooling to accept an arbitrary file. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new NodesApi();
var nodeId = nodeId_example; // String | The identifier of a node.
var contentBodyUpdate = new Uint8List(); // Uint8List | The binary content
var majorVersion = true; // bool | If **true**, create a major version. Setting this parameter also enables versioning of this node, if it is not already versioned. 
var comment = comment_example; // String | Add a version comment which will appear in version history. Setting this parameter also enables versioning of this node, if it is not already versioned. 
var name = name_example; // String | Optional new name. This should include the file extension. The name must not contain spaces or the following special characters: * \" < > \\ / ? : and |. The character `.` must not be used at the end of the name. 
var include = []; // BuiltList<String> | Returns additional information about the node. The following optional fields can be requested: * allowableOperations * association * isLink * isFavorite * isLocked * path * permissions * definition 
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.updateNodeContent(nodeId, contentBodyUpdate, majorVersion, comment, name, include, fields);
    print(result);
} catch (e) {
    print('Exception when calling NodesApi->updateNodeContent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nodeId** | **String**| The identifier of a node. | 
 **contentBodyUpdate** | **Uint8List**| The binary content | 
 **majorVersion** | **bool**| If **true**, create a major version. Setting this parameter also enables versioning of this node, if it is not already versioned.  | [optional] [default to false]
 **comment** | **String**| Add a version comment which will appear in version history. Setting this parameter also enables versioning of this node, if it is not already versioned.  | [optional] 
 **name** | **String**| Optional new name. This should include the file extension. The name must not contain spaces or the following special characters: * \" < > \\ / ? : and |. The character `.` must not be used at the end of the name.  | [optional] 
 **include** | [**BuiltList<String>**](String.md)| Returns additional information about the node. The following optional fields can be requested: * allowableOperations * association * isLink * isFavorite * isLocked * path * permissions * definition  | [optional] 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**NodeEntry**](NodeEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

