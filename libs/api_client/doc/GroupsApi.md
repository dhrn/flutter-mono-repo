# api_client.api.GroupsApi

## Load the API package
```dart
import 'package:api_client/api.dart';
```

All URIs are relative to *http://localhost/alfresco/api/-default-/public/alfresco/versions/1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createGroup**](GroupsApi.md#createGroup) | **post** /groups | Create a group
[**createGroupMembership**](GroupsApi.md#createGroupMembership) | **post** /groups/{groupId}/members | Create a group membership
[**deleteGroup**](GroupsApi.md#deleteGroup) | **delete** /groups/{groupId} | Delete a group
[**deleteGroupMembership**](GroupsApi.md#deleteGroupMembership) | **delete** /groups/{groupId}/members/{groupMemberId} | Delete a group membership
[**getGroup**](GroupsApi.md#getGroup) | **get** /groups/{groupId} | Get group details
[**listGroupMemberships**](GroupsApi.md#listGroupMemberships) | **get** /groups/{groupId}/members | List memberships of a group
[**listGroupMembershipsForPerson**](GroupsApi.md#listGroupMembershipsForPerson) | **get** /people/{personId}/groups | List group memberships
[**listGroups**](GroupsApi.md#listGroups) | **get** /groups | List groups
[**updateGroup**](GroupsApi.md#updateGroup) | **put** /groups/{groupId} | Update group details


# **createGroup**
> GroupEntry createGroup(groupBodyCreate, include, fields)

Create a group

**Note:** this endpoint is available in Alfresco 5.2.1 and newer versions.  Create a group.  The group id must start with \"GROUP\\_\". If this is omitted it will be added automatically. This format is also returned when listing groups or group memberships. It should be noted that the other group-related operations also expect the id to start with \"GROUP\\_\".  If one or more parentIds are specified then the group will be created and become a member of each of the specified parent groups.  If no parentIds are specified then the group will be created as a root group.  The group will be created in the **APP.DEFAULT** and **AUTH.ALF** zones.  You must have admin rights to create a group. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new GroupsApi();
var groupBodyCreate = new GroupBodyCreate(); // GroupBodyCreate | The group to create.
var include = []; // BuiltList<String> | Returns additional information about the group. The following optional fields can be requested: * parentIds * zones 
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.createGroup(groupBodyCreate, include, fields);
    print(result);
} catch (e) {
    print('Exception when calling GroupsApi->createGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupBodyCreate** | [**GroupBodyCreate**](GroupBodyCreate.md)| The group to create. | 
 **include** | [**BuiltList<String>**](String.md)| Returns additional information about the group. The following optional fields can be requested: * parentIds * zones  | [optional] 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**GroupEntry**](GroupEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createGroupMembership**
> GroupMemberEntry createGroupMembership(groupId, groupMembershipBodyCreate, fields)

Create a group membership

**Note:** this endpoint is available in Alfresco 5.2.1 and newer versions.  Create a group membership (for an existing person or group) within a group **groupId**.  If the added group was previously a root group then it becomes a non-root group since it now has a parent.  It is an error to specify an **id** that does not exist.  You must have admin rights to create a group membership. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new GroupsApi();
var groupId = groupId_example; // String | The identifier of a group.
var groupMembershipBodyCreate = new GroupMembershipBodyCreate(); // GroupMembershipBodyCreate | The group membership to add (person or sub-group).
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.createGroupMembership(groupId, groupMembershipBodyCreate, fields);
    print(result);
} catch (e) {
    print('Exception when calling GroupsApi->createGroupMembership: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| The identifier of a group. | 
 **groupMembershipBodyCreate** | [**GroupMembershipBodyCreate**](GroupMembershipBodyCreate.md)| The group membership to add (person or sub-group). | 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**GroupMemberEntry**](GroupMemberEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteGroup**
> deleteGroup(groupId, cascade)

Delete a group

**Note:** this endpoint is available in Alfresco 5.2.1 and newer versions.  Delete group **groupId**.  The option to cascade delete applies this recursively to any hierarchy of group members. In this case, removing a group member does not delete the person or sub-group itself. If a removed sub-group no longer has any parent groups then it becomes a root group.  You must have admin rights to delete a group. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new GroupsApi();
var groupId = groupId_example; // String | The identifier of a group.
var cascade = true; // bool | If **true** then the delete will be applied in cascade to sub-groups. 

try { 
    api_instance.deleteGroup(groupId, cascade);
} catch (e) {
    print('Exception when calling GroupsApi->deleteGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| The identifier of a group. | 
 **cascade** | **bool**| If **true** then the delete will be applied in cascade to sub-groups.  | [optional] [default to false]

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteGroupMembership**
> deleteGroupMembership(groupId, groupMemberId)

Delete a group membership

**Note:** this endpoint is available in Alfresco 5.2.1 and newer versions.  Delete group member **groupMemberId** (person or sub-group) from group **groupId**.  Removing a group member does not delete the person or sub-group itself.  If a removed sub-group no longer has any parent groups then it becomes a root group.  You must have admin rights to delete a group membership. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new GroupsApi();
var groupId = groupId_example; // String | The identifier of a group.
var groupMemberId = groupMemberId_example; // String | The identifier of a person or group.

try { 
    api_instance.deleteGroupMembership(groupId, groupMemberId);
} catch (e) {
    print('Exception when calling GroupsApi->deleteGroupMembership: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| The identifier of a group. | 
 **groupMemberId** | **String**| The identifier of a person or group. | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroup**
> GroupEntry getGroup(groupId, include, fields)

Get group details

**Note:** this endpoint is available in Alfresco 5.2.1 and newer versions.  Get details for group **groupId**.  You can use the **include** parameter to return additional information. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new GroupsApi();
var groupId = groupId_example; // String | The identifier of a group.
var include = []; // BuiltList<String> | Returns additional information about the group. The following optional fields can be requested: * parentIds * zones 
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.getGroup(groupId, include, fields);
    print(result);
} catch (e) {
    print('Exception when calling GroupsApi->getGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| The identifier of a group. | 
 **include** | [**BuiltList<String>**](String.md)| Returns additional information about the group. The following optional fields can be requested: * parentIds * zones  | [optional] 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**GroupEntry**](GroupEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listGroupMemberships**
> GroupMemberPaging listGroupMemberships(groupId, skipCount, maxItems, orderBy, where, fields)

List memberships of a group

**Note:** this endpoint is available in Alfresco 5.2.1 and newer versions.  Gets a list of the group memberships for the group **groupId**.  You can use the **where** parameter to filter the returned groups by **memberType**.  Example to filter by **memberType**, use any one of:  ``` (memberType='GROUP') (memberType='PERSON') ```  The default sort order for the returned list is for group members to be sorted by ascending displayName. You can override the default by using the **orderBy** parameter. You can specify one of the following fields in the **orderBy** parameter: * id * displayName 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new GroupsApi();
var groupId = groupId_example; // String | The identifier of a group.
var skipCount = 56; // int | The number of entities that exist in the collection before those included in this list. If not supplied then the default value is 0. 
var maxItems = 56; // int | The maximum number of items to return in the list. If not supplied then the default value is 100. 
var orderBy = []; // BuiltList<String> | A string to control the order of the entities returned in a list. You can use the **orderBy** parameter to sort the list by one or more fields.  Each field has a default sort order, which is normally ascending order. Read the API method implementation notes above to check if any fields used in this method have a descending default search order.  To sort the entities in a specific order, you can use the **ASC** and **DESC** keywords for any field. 
var where = where_example; // String | A string to restrict the returned objects by using a predicate.
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.listGroupMemberships(groupId, skipCount, maxItems, orderBy, where, fields);
    print(result);
} catch (e) {
    print('Exception when calling GroupsApi->listGroupMemberships: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| The identifier of a group. | 
 **skipCount** | **int**| The number of entities that exist in the collection before those included in this list. If not supplied then the default value is 0.  | [optional] [default to 0]
 **maxItems** | **int**| The maximum number of items to return in the list. If not supplied then the default value is 100.  | [optional] [default to 100]
 **orderBy** | [**BuiltList<String>**](String.md)| A string to control the order of the entities returned in a list. You can use the **orderBy** parameter to sort the list by one or more fields.  Each field has a default sort order, which is normally ascending order. Read the API method implementation notes above to check if any fields used in this method have a descending default search order.  To sort the entities in a specific order, you can use the **ASC** and **DESC** keywords for any field.  | [optional] 
 **where** | **String**| A string to restrict the returned objects by using a predicate. | [optional] 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**GroupMemberPaging**](GroupMemberPaging.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listGroupMembershipsForPerson**
> GroupPaging listGroupMembershipsForPerson(personId, skipCount, maxItems, orderBy, include, where, fields)

List group memberships

**Note:** this endpoint is available in Alfresco 5.2.1 and newer versions.   Gets a list of group membership information for person **personId**.   You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user.   You can use the **include** parameter to return additional information.   You can use the **where** parameter to filter the returned groups by **isRoot**. For example, the following **where**  clause will return just the root groups:   ```  (isRoot=true)  ```   The **where** parameter can also be used to filter by ***zone***. This may be combined with isRoot to narrow  a result set even further. For example, the following where clause will only return groups belonging to the  `MY.ZONE` zone.   ```  where=(zones in ('MY.ZONE'))  ```   This may be combined with the isRoot filter, as shown below:   ```  where=(isRoot=false AND zones in ('MY.ZONE'))  ```   ***Note:*** restrictions include  * `AND` is the only supported operator when combining `isRoot` and `zones` filters  * Only one zone is supported by the filter  * The quoted zone name must be placed in parenthesis — a 400 error will result if these are omitted.    The default sort order for the returned list is for groups to be sorted by ascending displayName.  You can override the default by using the **orderBy** parameter. You can specify one or more of the following fields in the **orderBy** parameter:  * id  * displayName 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new GroupsApi();
var personId = personId_example; // String | The identifier of a person.
var skipCount = 56; // int | The number of entities that exist in the collection before those included in this list. If not supplied then the default value is 0. 
var maxItems = 56; // int | The maximum number of items to return in the list. If not supplied then the default value is 100. 
var orderBy = []; // BuiltList<String> | A string to control the order of the entities returned in a list. You can use the **orderBy** parameter to sort the list by one or more fields.  Each field has a default sort order, which is normally ascending order. Read the API method implementation notes above to check if any fields used in this method have a descending default search order.  To sort the entities in a specific order, you can use the **ASC** and **DESC** keywords for any field. 
var include = []; // BuiltList<String> | Returns additional information about the group. The following optional fields can be requested: * parentIds * zones 
var where = where_example; // String | A string to restrict the returned objects by using a predicate.
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.listGroupMembershipsForPerson(personId, skipCount, maxItems, orderBy, include, where, fields);
    print(result);
} catch (e) {
    print('Exception when calling GroupsApi->listGroupMembershipsForPerson: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **personId** | **String**| The identifier of a person. | 
 **skipCount** | **int**| The number of entities that exist in the collection before those included in this list. If not supplied then the default value is 0.  | [optional] [default to 0]
 **maxItems** | **int**| The maximum number of items to return in the list. If not supplied then the default value is 100.  | [optional] [default to 100]
 **orderBy** | [**BuiltList<String>**](String.md)| A string to control the order of the entities returned in a list. You can use the **orderBy** parameter to sort the list by one or more fields.  Each field has a default sort order, which is normally ascending order. Read the API method implementation notes above to check if any fields used in this method have a descending default search order.  To sort the entities in a specific order, you can use the **ASC** and **DESC** keywords for any field.  | [optional] 
 **include** | [**BuiltList<String>**](String.md)| Returns additional information about the group. The following optional fields can be requested: * parentIds * zones  | [optional] 
 **where** | **String**| A string to restrict the returned objects by using a predicate. | [optional] 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**GroupPaging**](GroupPaging.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listGroups**
> GroupPaging listGroups(skipCount, maxItems, orderBy, include, where, fields)

List groups

**Note:** this endpoint is available in Alfresco 5.2.1 and newer versions.  Gets a list of groups.  You can use the **include** parameter to return additional information.  You can use the **where** parameter to filter the returned groups by **isRoot**. For example, the following **where** clause will return just the root groups:  ``` (isRoot=true) ```  The **where** parameter can also be used to filter by ***zone***. This may be combined with isRoot to narrow a result set even further. For example, the following where clause will only return groups belonging to the `MY.ZONE` zone.  ``` where=(zones in ('MY.ZONE')) ```  This may be combined with the isRoot filter, as shown below:  ``` where=(isRoot=false AND zones in ('MY.ZONE')) ```  ***Note:*** restrictions include * `AND` is the only supported operator when combining `isRoot` and `zones` filters * Only one zone is supported by the filter * The quoted zone name must be placed in parenthesis — a 400 error will result if these are omitted.  The default sort order for the returned list is for groups to be sorted by ascending displayName. You can override the default by using the **orderBy** parameter. You can specify one of the following fields in the **orderBy** parameter: * id * displayName 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new GroupsApi();
var skipCount = 56; // int | The number of entities that exist in the collection before those included in this list. If not supplied then the default value is 0. 
var maxItems = 56; // int | The maximum number of items to return in the list. If not supplied then the default value is 100. 
var orderBy = []; // BuiltList<String> | A string to control the order of the entities returned in a list. You can use the **orderBy** parameter to sort the list by one or more fields.  Each field has a default sort order, which is normally ascending order. Read the API method implementation notes above to check if any fields used in this method have a descending default search order.  To sort the entities in a specific order, you can use the **ASC** and **DESC** keywords for any field. 
var include = []; // BuiltList<String> | Returns additional information about the group. The following optional fields can be requested: * parentIds * zones 
var where = where_example; // String | A string to restrict the returned objects by using a predicate.
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.listGroups(skipCount, maxItems, orderBy, include, where, fields);
    print(result);
} catch (e) {
    print('Exception when calling GroupsApi->listGroups: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **skipCount** | **int**| The number of entities that exist in the collection before those included in this list. If not supplied then the default value is 0.  | [optional] [default to 0]
 **maxItems** | **int**| The maximum number of items to return in the list. If not supplied then the default value is 100.  | [optional] [default to 100]
 **orderBy** | [**BuiltList<String>**](String.md)| A string to control the order of the entities returned in a list. You can use the **orderBy** parameter to sort the list by one or more fields.  Each field has a default sort order, which is normally ascending order. Read the API method implementation notes above to check if any fields used in this method have a descending default search order.  To sort the entities in a specific order, you can use the **ASC** and **DESC** keywords for any field.  | [optional] 
 **include** | [**BuiltList<String>**](String.md)| Returns additional information about the group. The following optional fields can be requested: * parentIds * zones  | [optional] 
 **where** | **String**| A string to restrict the returned objects by using a predicate. | [optional] 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**GroupPaging**](GroupPaging.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateGroup**
> GroupEntry updateGroup(groupId, groupBodyUpdate, include, fields)

Update group details

**Note:** this endpoint is available in Alfresco 5.2.1 and newer versions.  Update details (displayName) for group **groupId**.  You must have admin rights to update a group. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new GroupsApi();
var groupId = groupId_example; // String | The identifier of a group.
var groupBodyUpdate = new GroupBodyUpdate(); // GroupBodyUpdate | The group information to update.
var include = []; // BuiltList<String> | Returns additional information about the group. The following optional fields can be requested: * parentIds * zones 
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.updateGroup(groupId, groupBodyUpdate, include, fields);
    print(result);
} catch (e) {
    print('Exception when calling GroupsApi->updateGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| The identifier of a group. | 
 **groupBodyUpdate** | [**GroupBodyUpdate**](GroupBodyUpdate.md)| The group information to update. | 
 **include** | [**BuiltList<String>**](String.md)| Returns additional information about the group. The following optional fields can be requested: * parentIds * zones  | [optional] 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**GroupEntry**](GroupEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

