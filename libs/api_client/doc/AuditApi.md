# api_client.api.AuditApi

## Load the API package
```dart
import 'package:api_client/api.dart';
```

All URIs are relative to *http://localhost/alfresco/api/-default-/public/alfresco/versions/1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteAuditEntriesForAuditApp**](AuditApi.md#deleteAuditEntriesForAuditApp) | **delete** /audit-applications/{auditApplicationId}/audit-entries | Permanently delete audit entries for an audit application
[**deleteAuditEntry**](AuditApi.md#deleteAuditEntry) | **delete** /audit-applications/{auditApplicationId}/audit-entries/{auditEntryId} | Permanently delete an audit entry
[**getAuditApp**](AuditApi.md#getAuditApp) | **get** /audit-applications/{auditApplicationId} | Get audit application info
[**getAuditEntry**](AuditApi.md#getAuditEntry) | **get** /audit-applications/{auditApplicationId}/audit-entries/{auditEntryId} | Get audit entry
[**listAuditApps**](AuditApi.md#listAuditApps) | **get** /audit-applications | List audit applications
[**listAuditEntriesForAuditApp**](AuditApi.md#listAuditEntriesForAuditApp) | **get** /audit-applications/{auditApplicationId}/audit-entries | List audit entries for an audit application
[**listAuditEntriesForNode**](AuditApi.md#listAuditEntriesForNode) | **get** /nodes/{nodeId}/audit-entries | List audit entries for a node
[**updateAuditApp**](AuditApi.md#updateAuditApp) | **put** /audit-applications/{auditApplicationId} | Update audit application info


# **deleteAuditEntriesForAuditApp**
> deleteAuditEntriesForAuditApp(auditApplicationId, where)

Permanently delete audit entries for an audit application

**Note:** this endpoint is available in Alfresco 5.2.2 and newer versions.  Permanently delete audit entries for an audit application **auditApplicationId**.  The **where** clause must be specified, either with an inclusive time period or for an inclusive range of ids. The delete is within the context of the given audit application.  For example:  *   ```where=(createdAt BETWEEN ('2017-06-02T12:13:51.593+01:00' , '2017-06-04T10:05:16.536+01:00')``` *   ```where=(id BETWEEN ('1234', '4321')```  You must have admin rights to delete audit information. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new AuditApi();
var auditApplicationId = auditApplicationId_example; // String | The identifier of an audit application.
var where = where_example; // String | Audit entries to permanently delete for an audit application, given an inclusive time period or range of ids. For example:  *   ```where=(createdAt BETWEEN ('2017-06-02T12:13:51.593+01:00' , '2017-06-04T10:05:16.536+01:00')``` *   ```where=(id BETWEEN ('1234', '4321')``` 

try { 
    api_instance.deleteAuditEntriesForAuditApp(auditApplicationId, where);
} catch (e) {
    print('Exception when calling AuditApi->deleteAuditEntriesForAuditApp: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **auditApplicationId** | **String**| The identifier of an audit application. | 
 **where** | **String**| Audit entries to permanently delete for an audit application, given an inclusive time period or range of ids. For example:  *   ```where=(createdAt BETWEEN ('2017-06-02T12:13:51.593+01:00' , '2017-06-04T10:05:16.536+01:00')``` *   ```where=(id BETWEEN ('1234', '4321')```  | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAuditEntry**
> deleteAuditEntry(auditApplicationId, auditEntryId)

Permanently delete an audit entry

**Note:** this endpoint is available in Alfresco 5.2.2 and newer versions.  Permanently delete a single audit entry **auditEntryId**.  You must have admin rights to delete audit information. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new AuditApi();
var auditApplicationId = auditApplicationId_example; // String | The identifier of an audit application.
var auditEntryId = auditEntryId_example; // String | The identifier of an audit entry.

try { 
    api_instance.deleteAuditEntry(auditApplicationId, auditEntryId);
} catch (e) {
    print('Exception when calling AuditApi->deleteAuditEntry: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **auditApplicationId** | **String**| The identifier of an audit application. | 
 **auditEntryId** | **String**| The identifier of an audit entry. | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAuditApp**
> AuditApp getAuditApp(auditApplicationId, fields, include)

Get audit application info

**Note:** this endpoint is available in Alfresco 5.2.2 and newer versions.  Get status of an audit application **auditApplicationId**.  You must have admin rights to retrieve audit information.  You can use the **include** parameter to return the minimum and/or maximum audit record id for the application. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new AuditApi();
var auditApplicationId = auditApplicationId_example; // String | The identifier of an audit application.
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 
var include = []; // BuiltList<String> | Also include the current minimum and/or maximum audit entry ids for the application. The following optional fields can be requested: * max * min 

try { 
    var result = api_instance.getAuditApp(auditApplicationId, fields, include);
    print(result);
} catch (e) {
    print('Exception when calling AuditApi->getAuditApp: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **auditApplicationId** | **String**| The identifier of an audit application. | 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 
 **include** | [**BuiltList<String>**](String.md)| Also include the current minimum and/or maximum audit entry ids for the application. The following optional fields can be requested: * max * min  | [optional] 

### Return type

[**AuditApp**](AuditApp.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAuditEntry**
> AuditEntryEntry getAuditEntry(auditApplicationId, auditEntryId, fields)

Get audit entry

**Note:** this endpoint is available in Alfresco 5.2.2 and newer versions.  Gets audit entry **auditEntryId**.  You must have admin rights to access audit information. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new AuditApi();
var auditApplicationId = auditApplicationId_example; // String | The identifier of an audit application.
var auditEntryId = auditEntryId_example; // String | The identifier of an audit entry.
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.getAuditEntry(auditApplicationId, auditEntryId, fields);
    print(result);
} catch (e) {
    print('Exception when calling AuditApi->getAuditEntry: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **auditApplicationId** | **String**| The identifier of an audit application. | 
 **auditEntryId** | **String**| The identifier of an audit entry. | 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**AuditEntryEntry**](AuditEntryEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAuditApps**
> AuditAppPaging listAuditApps(skipCount, maxItems, fields)

List audit applications

**Note:** this endpoint is available in Alfresco 5.2.2 and newer versions.  Gets a list of audit applications in this repository.  This list may include pre-configured audit applications, if enabled, such as:  * alfresco-access * CMISChangeLog * Alfresco Tagging Service * Alfresco Sync Service (used by Enterprise Cloud Sync)  You must have admin rights to retrieve audit information. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new AuditApi();
var skipCount = 56; // int | The number of entities that exist in the collection before those included in this list. If not supplied then the default value is 0. 
var maxItems = 56; // int | The maximum number of items to return in the list. If not supplied then the default value is 100. 
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.listAuditApps(skipCount, maxItems, fields);
    print(result);
} catch (e) {
    print('Exception when calling AuditApi->listAuditApps: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **skipCount** | **int**| The number of entities that exist in the collection before those included in this list. If not supplied then the default value is 0.  | [optional] [default to 0]
 **maxItems** | **int**| The maximum number of items to return in the list. If not supplied then the default value is 100.  | [optional] [default to 100]
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**AuditAppPaging**](AuditAppPaging.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAuditEntriesForAuditApp**
> AuditEntryPaging listAuditEntriesForAuditApp(auditApplicationId, skipCount, orderBy, maxItems, where, include, fields)

List audit entries for an audit application

**Note:** this endpoint is available in Alfresco 5.2.2 and newer versions.  Gets a list of audit entries for audit application **auditApplicationId**.  You can use the **include** parameter to return additional **values** information.  The list can be filtered by one or more of: * **createdByUser** person id * **createdAt** inclusive time period * **id** inclusive range of ids * **valuesKey** audit entry values contains the exact matching key * **valuesValue** audit entry values contains the exact matching value  The default sort order is **createdAt** ascending, but you can use an optional **ASC** or **DESC** modifier to specify an ascending or descending sort order.  For example, specifying ```orderBy=createdAt DESC``` returns audit entries in descending **createdAt** order.  You must have admin rights to retrieve audit information. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new AuditApi();
var auditApplicationId = auditApplicationId_example; // String | The identifier of an audit application.
var skipCount = 56; // int | The number of entities that exist in the collection before those included in this list. If not supplied then the default value is 0. 
var orderBy = []; // BuiltList<String> | A string to control the order of the entities returned in a list. You can use the **orderBy** parameter to sort the list by one or more fields.  Each field has a default sort order, which is normally ascending order. Read the API method implementation notes above to check if any fields used in this method have a descending default search order.  To sort the entities in a specific order, you can use the **ASC** and **DESC** keywords for any field. 
var maxItems = 56; // int | The maximum number of items to return in the list. If not supplied then the default value is 100. 
var where = where_example; // String | Optionally filter the list. Here are some examples:  *   ```where=(createdByUser='jbloggs')```  *   ```where=(id BETWEEN ('1234', '4321')```  *   ```where=(createdAt BETWEEN ('2017-06-02T12:13:51.593+01:00' , '2017-06-04T10:05:16.536+01:00')```  *   ```where=(createdByUser='jbloggs' and createdAt BETWEEN ('2017-06-02T12:13:51.593+01:00' , '2017-06-04T10:05:16.536+01:00')```  *   ```where=(valuesKey='/alfresco-access/login/user')```  *   ```where=(valuesKey='/alfresco-access/transaction/action' and valuesValue='DELETE')``` 
var include = []; // BuiltList<String> | Returns additional information about the audit entry. The following optional fields can be requested: * values 
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.listAuditEntriesForAuditApp(auditApplicationId, skipCount, orderBy, maxItems, where, include, fields);
    print(result);
} catch (e) {
    print('Exception when calling AuditApi->listAuditEntriesForAuditApp: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **auditApplicationId** | **String**| The identifier of an audit application. | 
 **skipCount** | **int**| The number of entities that exist in the collection before those included in this list. If not supplied then the default value is 0.  | [optional] [default to 0]
 **orderBy** | [**BuiltList<String>**](String.md)| A string to control the order of the entities returned in a list. You can use the **orderBy** parameter to sort the list by one or more fields.  Each field has a default sort order, which is normally ascending order. Read the API method implementation notes above to check if any fields used in this method have a descending default search order.  To sort the entities in a specific order, you can use the **ASC** and **DESC** keywords for any field.  | [optional] 
 **maxItems** | **int**| The maximum number of items to return in the list. If not supplied then the default value is 100.  | [optional] [default to 100]
 **where** | **String**| Optionally filter the list. Here are some examples:  *   ```where=(createdByUser='jbloggs')```  *   ```where=(id BETWEEN ('1234', '4321')```  *   ```where=(createdAt BETWEEN ('2017-06-02T12:13:51.593+01:00' , '2017-06-04T10:05:16.536+01:00')```  *   ```where=(createdByUser='jbloggs' and createdAt BETWEEN ('2017-06-02T12:13:51.593+01:00' , '2017-06-04T10:05:16.536+01:00')```  *   ```where=(valuesKey='/alfresco-access/login/user')```  *   ```where=(valuesKey='/alfresco-access/transaction/action' and valuesValue='DELETE')```  | [optional] 
 **include** | [**BuiltList<String>**](String.md)| Returns additional information about the audit entry. The following optional fields can be requested: * values  | [optional] 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**AuditEntryPaging**](AuditEntryPaging.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAuditEntriesForNode**
> AuditEntryPaging listAuditEntriesForNode(nodeId, skipCount, orderBy, maxItems, where, include, fields)

List audit entries for a node

**Note:** this endpoint is available in Alfresco 5.2.2 and newer versions.  Gets a list of audit entries for node **nodeId**.  The list can be filtered by **createdByUser** and for a given inclusive time period.  The default sort order is **createdAt** ascending, but you can use an optional **ASC** or **DESC** modifier to specify an ascending or descending sort order.  For example, specifying ```orderBy=createdAt DESC``` returns audit entries in descending **createdAt** order.  This relies on the pre-configured 'alfresco-access' audit application. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new AuditApi();
var nodeId = nodeId_example; // String | The identifier of a node.
var skipCount = 56; // int | The number of entities that exist in the collection before those included in this list. If not supplied then the default value is 0. 
var orderBy = []; // BuiltList<String> | A string to control the order of the entities returned in a list. You can use the **orderBy** parameter to sort the list by one or more fields.  Each field has a default sort order, which is normally ascending order. Read the API method implementation notes above to check if any fields used in this method have a descending default search order.  To sort the entities in a specific order, you can use the **ASC** and **DESC** keywords for any field. 
var maxItems = 56; // int | The maximum number of items to return in the list. If not supplied then the default value is 100. 
var where = where_example; // String | Optionally filter the list. Here are some examples:  *   ```where=(createdByUser='-me-')```  *   ```where=(createdAt BETWEEN ('2017-06-02T12:13:51.593+01:00' , '2017-06-04T10:05:16.536+01:00')```  *   ```where=(createdByUser='jbloggs' and createdAt BETWEEN ('2017-06-02T12:13:51.593+01:00' , '2017-06-04T10:05:16.536+01:00')``` 
var include = []; // BuiltList<String> | Returns additional information about the audit entry. The following optional fields can be requested: * values 
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.listAuditEntriesForNode(nodeId, skipCount, orderBy, maxItems, where, include, fields);
    print(result);
} catch (e) {
    print('Exception when calling AuditApi->listAuditEntriesForNode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nodeId** | **String**| The identifier of a node. | 
 **skipCount** | **int**| The number of entities that exist in the collection before those included in this list. If not supplied then the default value is 0.  | [optional] [default to 0]
 **orderBy** | [**BuiltList<String>**](String.md)| A string to control the order of the entities returned in a list. You can use the **orderBy** parameter to sort the list by one or more fields.  Each field has a default sort order, which is normally ascending order. Read the API method implementation notes above to check if any fields used in this method have a descending default search order.  To sort the entities in a specific order, you can use the **ASC** and **DESC** keywords for any field.  | [optional] 
 **maxItems** | **int**| The maximum number of items to return in the list. If not supplied then the default value is 100.  | [optional] [default to 100]
 **where** | **String**| Optionally filter the list. Here are some examples:  *   ```where=(createdByUser='-me-')```  *   ```where=(createdAt BETWEEN ('2017-06-02T12:13:51.593+01:00' , '2017-06-04T10:05:16.536+01:00')```  *   ```where=(createdByUser='jbloggs' and createdAt BETWEEN ('2017-06-02T12:13:51.593+01:00' , '2017-06-04T10:05:16.536+01:00')```  | [optional] 
 **include** | [**BuiltList<String>**](String.md)| Returns additional information about the audit entry. The following optional fields can be requested: * values  | [optional] 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**AuditEntryPaging**](AuditEntryPaging.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAuditApp**
> AuditApp updateAuditApp(auditApplicationId, auditAppBodyUpdate, fields)

Update audit application info

**Note:** this endpoint is available in Alfresco 5.2.2 and newer versions.  Disable or re-enable the audit application **auditApplicationId**.  New audit entries will not be created for a disabled audit application until it is re-enabled (and system-wide auditing is also enabled).  Note, it is still possible to query &/or delete any existing audit entries even if auditing is disabled for the audit application.  You must have admin rights to update audit application. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new AuditApi();
var auditApplicationId = auditApplicationId_example; // String | The identifier of an audit application.
var auditAppBodyUpdate = new AuditBodyUpdate(); // AuditBodyUpdate | The audit application to update.
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.updateAuditApp(auditApplicationId, auditAppBodyUpdate, fields);
    print(result);
} catch (e) {
    print('Exception when calling AuditApi->updateAuditApp: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **auditApplicationId** | **String**| The identifier of an audit application. | 
 **auditAppBodyUpdate** | [**AuditBodyUpdate**](AuditBodyUpdate.md)| The audit application to update. | 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**AuditApp**](AuditApp.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

