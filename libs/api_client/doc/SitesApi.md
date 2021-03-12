# api_client.api.SitesApi

## Load the API package
```dart
import 'package:api_client/api.dart';
```

All URIs are relative to *http://localhost/alfresco/api/-default-/public/alfresco/versions/1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**approveSiteMembershipRequest**](SitesApi.md#approveSiteMembershipRequest) | **post** /sites/{siteId}/site-membership-requests/{inviteeId}/approve | Approve a site membership request
[**createSite**](SitesApi.md#createSite) | **post** /sites | Create a site
[**createSiteGroupMembership**](SitesApi.md#createSiteGroupMembership) | **post** /sites/{siteId}/group-members | Create a site membership for group
[**createSiteMembership**](SitesApi.md#createSiteMembership) | **post** /sites/{siteId}/members | Create a site membership
[**createSiteMembershipRequestForPerson**](SitesApi.md#createSiteMembershipRequestForPerson) | **post** /people/{personId}/site-membership-requests | Create a site membership request
[**deleteSite**](SitesApi.md#deleteSite) | **delete** /sites/{siteId} | Delete a site
[**deleteSiteGroupMembership**](SitesApi.md#deleteSiteGroupMembership) | **delete** /sites/{siteId}/group-members/{groupId} | Delete a group membership for site
[**deleteSiteMembership**](SitesApi.md#deleteSiteMembership) | **delete** /sites/{siteId}/members/{personId} | Delete a site membership
[**deleteSiteMembershipForPerson**](SitesApi.md#deleteSiteMembershipForPerson) | **delete** /people/{personId}/sites/{siteId} | Delete a site membership
[**deleteSiteMembershipRequestForPerson**](SitesApi.md#deleteSiteMembershipRequestForPerson) | **delete** /people/{personId}/site-membership-requests/{siteId} | Delete a site membership request
[**getSite**](SitesApi.md#getSite) | **get** /sites/{siteId} | Get a site
[**getSiteContainer**](SitesApi.md#getSiteContainer) | **get** /sites/{siteId}/containers/{containerId} | Get a site container
[**getSiteGroupMembership**](SitesApi.md#getSiteGroupMembership) | **get** /sites/{siteId}/group-members/{groupId} | Get information about site membership of group
[**getSiteMembership**](SitesApi.md#getSiteMembership) | **get** /sites/{siteId}/members/{personId} | Get a site membership
[**getSiteMembershipForPerson**](SitesApi.md#getSiteMembershipForPerson) | **get** /people/{personId}/sites/{siteId} | Get a site membership
[**getSiteMembershipRequestForPerson**](SitesApi.md#getSiteMembershipRequestForPerson) | **get** /people/{personId}/site-membership-requests/{siteId} | Get a site membership request
[**getSiteMembershipRequests**](SitesApi.md#getSiteMembershipRequests) | **get** /site-membership-requests | Get site membership requests
[**listSiteContainers**](SitesApi.md#listSiteContainers) | **get** /sites/{siteId}/containers | List site containers
[**listSiteGroups**](SitesApi.md#listSiteGroups) | **get** /sites/{siteId}/group-members | List group membership for site
[**listSiteMembershipRequestsForPerson**](SitesApi.md#listSiteMembershipRequestsForPerson) | **get** /people/{personId}/site-membership-requests | List site membership requests
[**listSiteMemberships**](SitesApi.md#listSiteMemberships) | **get** /sites/{siteId}/members | List site memberships
[**listSiteMembershipsForPerson**](SitesApi.md#listSiteMembershipsForPerson) | **get** /people/{personId}/sites | List site memberships
[**listSites**](SitesApi.md#listSites) | **get** /sites | List sites
[**rejectSiteMembershipRequest**](SitesApi.md#rejectSiteMembershipRequest) | **post** /sites/{siteId}/site-membership-requests/{inviteeId}/reject | Reject a site membership request
[**updateSite**](SitesApi.md#updateSite) | **put** /sites/{siteId} | Update a site
[**updateSiteGroupMembership**](SitesApi.md#updateSiteGroupMembership) | **put** /sites/{siteId}/group-members/{groupId} | Update site membership of group
[**updateSiteMembership**](SitesApi.md#updateSiteMembership) | **put** /sites/{siteId}/members/{personId} | Update a site membership
[**updateSiteMembershipRequestForPerson**](SitesApi.md#updateSiteMembershipRequestForPerson) | **put** /people/{personId}/site-membership-requests/{siteId} | Update a site membership request


# **approveSiteMembershipRequest**
> approveSiteMembershipRequest(siteId, inviteeId, siteMembershipApprovalBody)

Approve a site membership request

Approve a site membership request. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new SitesApi();
var siteId = siteId_example; // String | The identifier of a site.
var inviteeId = inviteeId_example; // String | The invitee user name.
var siteMembershipApprovalBody = new SiteMembershipApprovalBody(); // SiteMembershipApprovalBody | Accepting a request to join, optionally, allows assignment of a role to the user. 

try { 
    api_instance.approveSiteMembershipRequest(siteId, inviteeId, siteMembershipApprovalBody);
} catch (e) {
    print('Exception when calling SitesApi->approveSiteMembershipRequest: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **siteId** | **String**| The identifier of a site. | 
 **inviteeId** | **String**| The invitee user name. | 
 **siteMembershipApprovalBody** | [**SiteMembershipApprovalBody**](SiteMembershipApprovalBody.md)| Accepting a request to join, optionally, allows assignment of a role to the user.  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createSite**
> SiteEntry createSite(siteBodyCreate, skipConfiguration, skipAddToFavorites, fields)

Create a site

**Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Creates a default site with the given details.  Unless explicitly specified, the site id will be generated from the site title. The site id must be unique and only contain alphanumeric and/or dash characters.  Note: the id of a site cannot be updated once the site has been created.  For example, to create a public site called \"Marketing\" the following body could be used: ```JSON {   \"title\": \"Marketing\",   \"visibility\": \"PUBLIC\" } ```  The creation of the (surf) configuration files required by Share can be skipped via the **skipConfiguration** query parameter.  **Note:** if skipped then such a site will **not** work within Share.  The addition of the site to the user's site favorites can be skipped via the **skipAddToFavorites** query parameter.  The creator will be added as a member with Site Manager role.  When you create a site, a container called **documentLibrary** is created for you in the new site. This container is the root folder for content stored in the site. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new SitesApi();
var siteBodyCreate = new SiteBodyCreate(); // SiteBodyCreate | The site details
var skipConfiguration = true; // bool | Flag to indicate whether the Share-specific (surf) configuration files for the site should not be created.
var skipAddToFavorites = true; // bool | Flag to indicate whether the site should not be added to the user's site favorites.
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.createSite(siteBodyCreate, skipConfiguration, skipAddToFavorites, fields);
    print(result);
} catch (e) {
    print('Exception when calling SitesApi->createSite: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **siteBodyCreate** | [**SiteBodyCreate**](SiteBodyCreate.md)| The site details | 
 **skipConfiguration** | **bool**| Flag to indicate whether the Share-specific (surf) configuration files for the site should not be created. | [optional] [default to false]
 **skipAddToFavorites** | **bool**| Flag to indicate whether the site should not be added to the user's site favorites. | [optional] [default to false]
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**SiteEntry**](SiteEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createSiteGroupMembership**
> SiteGroupEntry createSiteGroupMembership(siteId, siteMembershipBodyCreate, fields)

Create a site membership for group

**Note:** this endpoint is available in Alfresco 7.0.0 and newer versions.  Creates a site membership for group **groupId** on site **siteId**. You can set the **role** to one of four types: * SiteConsumer * SiteCollaborator * SiteContributor * SiteManager **Note:** You can create more than one site membership by specifying a list of group in the JSON body like this:  ```JSON   [    {      \"role\": \"SiteConsumer\",      \"id\": \"authorityId\"    },    {      \"role\": \"SiteConsumer\",      \"id\": \"authorityId\"    }   ] ``` If you specify a list as input, then a paginated list rather than an entry is returned in the response body. For example: ```JSON   {     \"list\": {       \"pagination\": {         \"count\": 2,         \"hasMoreItems\": false,         \"totalItems\": 2,         \"skipCount\": 0,         \"maxItems\": 100       },       \"entries\": [         {           \"entry\": {             ...           }         },         {           \"entry\": {             ...           }         }       ]     }   } ``` 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new SitesApi();
var siteId = siteId_example; // String | The identifier of a site.
var siteMembershipBodyCreate = new SiteMembershipBodyCreate(); // SiteMembershipBodyCreate | The group to add and their role
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.createSiteGroupMembership(siteId, siteMembershipBodyCreate, fields);
    print(result);
} catch (e) {
    print('Exception when calling SitesApi->createSiteGroupMembership: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **siteId** | **String**| The identifier of a site. | 
 **siteMembershipBodyCreate** | [**SiteMembershipBodyCreate**](SiteMembershipBodyCreate.md)| The group to add and their role | 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**SiteGroupEntry**](SiteGroupEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createSiteMembership**
> SiteMemberEntry createSiteMembership(siteId, siteMembershipBodyCreate, fields)

Create a site membership

Creates a site membership for person **personId** on site **siteId**.  You can set the **role** to one of four types:  * SiteConsumer * SiteCollaborator * SiteContributor * SiteManager  **Note:** You can create more than one site membership by specifying a list of people in the JSON body like this:  ```JSON [   {     \"role\": \"SiteConsumer\",     \"id\": \"joe\"   },   {     \"role\": \"SiteConsumer\",     \"id\": \"fred\"   } ] ``` If you specify a list as input, then a paginated list rather than an entry is returned in the response body. For example:  ```JSON {   \"list\": {     \"pagination\": {       \"count\": 2,       \"hasMoreItems\": false,       \"totalItems\": 2,       \"skipCount\": 0,       \"maxItems\": 100     },     \"entries\": [       {         \"entry\": {           ...         }       },       {         \"entry\": {           ...         }       }     ]   } } ``` 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new SitesApi();
var siteId = siteId_example; // String | The identifier of a site.
var siteMembershipBodyCreate = new SiteMembershipBodyCreate(); // SiteMembershipBodyCreate | The person to add and their role
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.createSiteMembership(siteId, siteMembershipBodyCreate, fields);
    print(result);
} catch (e) {
    print('Exception when calling SitesApi->createSiteMembership: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **siteId** | **String**| The identifier of a site. | 
 **siteMembershipBodyCreate** | [**SiteMembershipBodyCreate**](SiteMembershipBodyCreate.md)| The person to add and their role | 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**SiteMemberEntry**](SiteMemberEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createSiteMembershipRequestForPerson**
> SiteMembershipRequestEntry createSiteMembershipRequestForPerson(personId, siteMembershipRequestBodyCreate, fields)

Create a site membership request

Create a site membership request for yourself on the site with the identifier of **id**, specified in the JSON body. The result of the request differs depending on the type of site.  * For a **public** site, you join the site immediately as a SiteConsumer. * For a **moderated** site, your request is added to the site membership request list. The request waits for approval from the Site Manager. * You cannot request membership of a **private** site. Members are invited by the site administrator.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user.   **Note:** You can create site membership requests for more than one site by specifying a list of sites in the JSON body like this:  ```JSON [   {     \"message\": \"Please can you add me\",     \"id\": \"test-site-1\",     \"title\": \"Request for test site 1\",   },   {     \"message\": \"Please can you add me\",     \"id\": \"test-site-2\",     \"title\": \"Request for test site 2\",   } ] ``` If you specify a list as input, then a paginated list rather than an entry is returned in the response body. For example:  ```JSON {   \"list\": {     \"pagination\": {       \"count\": 2,       \"hasMoreItems\": false,       \"totalItems\": 2,       \"skipCount\": 0,       \"maxItems\": 100     },     \"entries\": [       {         \"entry\": {           ...         }       },       {         \"entry\": {           ...         }       }     ]   } } ``` 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new SitesApi();
var personId = personId_example; // String | The identifier of a person.
var siteMembershipRequestBodyCreate = new SiteMembershipRequestBodyCreate(); // SiteMembershipRequestBodyCreate | Site membership request details
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.createSiteMembershipRequestForPerson(personId, siteMembershipRequestBodyCreate, fields);
    print(result);
} catch (e) {
    print('Exception when calling SitesApi->createSiteMembershipRequestForPerson: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **personId** | **String**| The identifier of a person. | 
 **siteMembershipRequestBodyCreate** | [**SiteMembershipRequestBodyCreate**](SiteMembershipRequestBodyCreate.md)| Site membership request details | 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**SiteMembershipRequestEntry**](SiteMembershipRequestEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSite**
> deleteSite(siteId, permanent)

Delete a site

**Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Deletes the site with **siteId**. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new SitesApi();
var siteId = siteId_example; // String | The identifier of a site.
var permanent = true; // bool | Flag to indicate whether the site should be permanently deleted i.e. bypass the trashcan.

try { 
    api_instance.deleteSite(siteId, permanent);
} catch (e) {
    print('Exception when calling SitesApi->deleteSite: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **siteId** | **String**| The identifier of a site. | 
 **permanent** | **bool**| Flag to indicate whether the site should be permanently deleted i.e. bypass the trashcan. | [optional] [default to false]

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSiteGroupMembership**
> deleteSiteGroupMembership(siteId, groupId)

Delete a group membership for site

**Note:** this endpoint is available in Alfresco 7.0.0 and newer versions.  Deletes group **groupId** as a member of site **siteId**. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new SitesApi();
var siteId = siteId_example; // String | The identifier of a site.
var groupId = groupId_example; // String | The identifier of a group.

try { 
    api_instance.deleteSiteGroupMembership(siteId, groupId);
} catch (e) {
    print('Exception when calling SitesApi->deleteSiteGroupMembership: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **siteId** | **String**| The identifier of a site. | 
 **groupId** | **String**| The identifier of a group. | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSiteMembership**
> deleteSiteMembership(siteId, personId)

Delete a site membership

Deletes person **personId** as a member of site **siteId**.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new SitesApi();
var siteId = siteId_example; // String | The identifier of a site.
var personId = personId_example; // String | The identifier of a person.

try { 
    api_instance.deleteSiteMembership(siteId, personId);
} catch (e) {
    print('Exception when calling SitesApi->deleteSiteMembership: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **siteId** | **String**| The identifier of a site. | 
 **personId** | **String**| The identifier of a person. | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSiteMembershipForPerson**
> deleteSiteMembershipForPerson(personId, siteId)

Delete a site membership

Deletes person **personId** as a member of site **siteId**.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new SitesApi();
var personId = personId_example; // String | The identifier of a person.
var siteId = siteId_example; // String | The identifier of a site.

try { 
    api_instance.deleteSiteMembershipForPerson(personId, siteId);
} catch (e) {
    print('Exception when calling SitesApi->deleteSiteMembershipForPerson: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **personId** | **String**| The identifier of a person. | 
 **siteId** | **String**| The identifier of a site. | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSiteMembershipRequestForPerson**
> deleteSiteMembershipRequestForPerson(personId, siteId)

Delete a site membership request

Deletes the site membership request to site **siteId** for person **personId**.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new SitesApi();
var personId = personId_example; // String | The identifier of a person.
var siteId = siteId_example; // String | The identifier of a site.

try { 
    api_instance.deleteSiteMembershipRequestForPerson(personId, siteId);
} catch (e) {
    print('Exception when calling SitesApi->deleteSiteMembershipRequestForPerson: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **personId** | **String**| The identifier of a person. | 
 **siteId** | **String**| The identifier of a site. | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSite**
> SiteEntry getSite(siteId, relations, fields)

Get a site

Gets information for site **siteId**.  You can use the **relations** parameter to include one or more related entities in a single response and so reduce network traffic.  The entity types in Alfresco are organized in a tree structure. The **sites** entity has two children, **containers** and **members**. The following relations parameter returns all the container and member objects related to the site **siteId**:  ``` containers,members ``` 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new SitesApi();
var siteId = siteId_example; // String | The identifier of a site.
var relations = []; // BuiltList<String> | Use the relations parameter to include one or more related entities in a single response.
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.getSite(siteId, relations, fields);
    print(result);
} catch (e) {
    print('Exception when calling SitesApi->getSite: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **siteId** | **String**| The identifier of a site. | 
 **relations** | [**BuiltList<String>**](String.md)| Use the relations parameter to include one or more related entities in a single response. | [optional] 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**SiteEntry**](SiteEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSiteContainer**
> SiteContainerEntry getSiteContainer(siteId, containerId, fields)

Get a site container

Gets information on the container **containerId** in site **siteId**.

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new SitesApi();
var siteId = siteId_example; // String | The identifier of a site.
var containerId = containerId_example; // String | The unique identifier of a site container.
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.getSiteContainer(siteId, containerId, fields);
    print(result);
} catch (e) {
    print('Exception when calling SitesApi->getSiteContainer: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **siteId** | **String**| The identifier of a site. | 
 **containerId** | **String**| The unique identifier of a site container. | 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**SiteContainerEntry**](SiteContainerEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSiteGroupMembership**
> SiteGroupEntry getSiteGroupMembership(siteId, groupId, fields)

Get information about site membership of group

**Note:** this endpoint is available in Alfresco 7.0.0 and newer versions.  Gets site membership information for group **groupId** on site **siteId**. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new SitesApi();
var siteId = siteId_example; // String | The identifier of a site.
var groupId = groupId_example; // String | The identifier of a group.
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.getSiteGroupMembership(siteId, groupId, fields);
    print(result);
} catch (e) {
    print('Exception when calling SitesApi->getSiteGroupMembership: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **siteId** | **String**| The identifier of a site. | 
 **groupId** | **String**| The identifier of a group. | 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**SiteGroupEntry**](SiteGroupEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSiteMembership**
> SiteMemberEntry getSiteMembership(siteId, personId, fields)

Get a site membership

Gets site membership information for person **personId** on site **siteId**.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new SitesApi();
var siteId = siteId_example; // String | The identifier of a site.
var personId = personId_example; // String | The identifier of a person.
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.getSiteMembership(siteId, personId, fields);
    print(result);
} catch (e) {
    print('Exception when calling SitesApi->getSiteMembership: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **siteId** | **String**| The identifier of a site. | 
 **personId** | **String**| The identifier of a person. | 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**SiteMemberEntry**](SiteMemberEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSiteMembershipForPerson**
> SiteRoleEntry getSiteMembershipForPerson(personId, siteId)

Get a site membership

Gets site membership information for person **personId** on site **siteId**.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new SitesApi();
var personId = personId_example; // String | The identifier of a person.
var siteId = siteId_example; // String | The identifier of a site.

try { 
    var result = api_instance.getSiteMembershipForPerson(personId, siteId);
    print(result);
} catch (e) {
    print('Exception when calling SitesApi->getSiteMembershipForPerson: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **personId** | **String**| The identifier of a person. | 
 **siteId** | **String**| The identifier of a site. | 

### Return type

[**SiteRoleEntry**](SiteRoleEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSiteMembershipRequestForPerson**
> SiteMembershipRequestEntry getSiteMembershipRequestForPerson(personId, siteId, fields)

Get a site membership request

Gets the site membership request for site **siteId** for person **personId**, if one exists.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new SitesApi();
var personId = personId_example; // String | The identifier of a person.
var siteId = siteId_example; // String | The identifier of a site.
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.getSiteMembershipRequestForPerson(personId, siteId, fields);
    print(result);
} catch (e) {
    print('Exception when calling SitesApi->getSiteMembershipRequestForPerson: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **personId** | **String**| The identifier of a person. | 
 **siteId** | **String**| The identifier of a site. | 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**SiteMembershipRequestEntry**](SiteMembershipRequestEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSiteMembershipRequests**
> SiteMembershipRequestWithPersonPaging getSiteMembershipRequests(skipCount, maxItems, where, fields)

Get site membership requests

Get the list of site membership requests the user can action.  You can use the **where** parameter to filter the returned site membership requests by **siteId**. For example:  ``` (siteId=mySite) ```  The **where** parameter can also be used to filter by ***personId***. For example:  ``` where=(personId=person) ```  This may be combined with the siteId filter, as shown below:  ``` where=(siteId=mySite AND personId=person)) ``` 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new SitesApi();
var skipCount = 56; // int | The number of entities that exist in the collection before those included in this list. If not supplied then the default value is 0. 
var maxItems = 56; // int | The maximum number of items to return in the list. If not supplied then the default value is 100. 
var where = where_example; // String | A string to restrict the returned objects by using a predicate.
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.getSiteMembershipRequests(skipCount, maxItems, where, fields);
    print(result);
} catch (e) {
    print('Exception when calling SitesApi->getSiteMembershipRequests: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **skipCount** | **int**| The number of entities that exist in the collection before those included in this list. If not supplied then the default value is 0.  | [optional] [default to 0]
 **maxItems** | **int**| The maximum number of items to return in the list. If not supplied then the default value is 100.  | [optional] [default to 100]
 **where** | **String**| A string to restrict the returned objects by using a predicate. | [optional] 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**SiteMembershipRequestWithPersonPaging**](SiteMembershipRequestWithPersonPaging.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSiteContainers**
> SiteContainerPaging listSiteContainers(siteId, skipCount, maxItems, fields)

List site containers

Gets a list of containers for the site **siteId**.

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new SitesApi();
var siteId = siteId_example; // String | The identifier of a site.
var skipCount = 56; // int | The number of entities that exist in the collection before those included in this list. If not supplied then the default value is 0. 
var maxItems = 56; // int | The maximum number of items to return in the list. If not supplied then the default value is 100. 
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.listSiteContainers(siteId, skipCount, maxItems, fields);
    print(result);
} catch (e) {
    print('Exception when calling SitesApi->listSiteContainers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **siteId** | **String**| The identifier of a site. | 
 **skipCount** | **int**| The number of entities that exist in the collection before those included in this list. If not supplied then the default value is 0.  | [optional] [default to 0]
 **maxItems** | **int**| The maximum number of items to return in the list. If not supplied then the default value is 100.  | [optional] [default to 100]
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**SiteContainerPaging**](SiteContainerPaging.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSiteGroups**
> SiteGroupPaging listSiteGroups(siteId, skipCount, maxItems, fields)

List group membership for site

**Note:** this endpoint is available in Alfresco 7.0.0 and newer versions.  Gets a list of group membership for site **siteId**. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new SitesApi();
var siteId = siteId_example; // String | The identifier of a site.
var skipCount = 56; // int | The number of entities that exist in the collection before those included in this list. If not supplied then the default value is 0. 
var maxItems = 56; // int | The maximum number of items to return in the list. If not supplied then the default value is 100. 
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.listSiteGroups(siteId, skipCount, maxItems, fields);
    print(result);
} catch (e) {
    print('Exception when calling SitesApi->listSiteGroups: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **siteId** | **String**| The identifier of a site. | 
 **skipCount** | **int**| The number of entities that exist in the collection before those included in this list. If not supplied then the default value is 0.  | [optional] [default to 0]
 **maxItems** | **int**| The maximum number of items to return in the list. If not supplied then the default value is 100.  | [optional] [default to 100]
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**SiteGroupPaging**](SiteGroupPaging.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSiteMembershipRequestsForPerson**
> SiteMembershipRequestPaging listSiteMembershipRequestsForPerson(personId, skipCount, maxItems, fields)

List site membership requests

Gets a list of the current site membership requests for person **personId**.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new SitesApi();
var personId = personId_example; // String | The identifier of a person.
var skipCount = 56; // int | The number of entities that exist in the collection before those included in this list. If not supplied then the default value is 0. 
var maxItems = 56; // int | The maximum number of items to return in the list. If not supplied then the default value is 100. 
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.listSiteMembershipRequestsForPerson(personId, skipCount, maxItems, fields);
    print(result);
} catch (e) {
    print('Exception when calling SitesApi->listSiteMembershipRequestsForPerson: $e\n');
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

[**SiteMembershipRequestPaging**](SiteMembershipRequestPaging.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSiteMemberships**
> SiteMemberPaging listSiteMemberships(siteId, skipCount, maxItems, fields, where)

List site memberships

Gets a list of site memberships for site **siteId**.

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new SitesApi();
var siteId = siteId_example; // String | The identifier of a site.
var skipCount = 56; // int | The number of entities that exist in the collection before those included in this list. If not supplied then the default value is 0. 
var maxItems = 56; // int | The maximum number of items to return in the list. If not supplied then the default value is 100. 
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 
var where = where_example; // String | Optionally filter the list. **Note:** this option is available in Alfresco 7.0.0 and newer versions. *   ```where=(isMemberOfGroup=false|true)``` 

try { 
    var result = api_instance.listSiteMemberships(siteId, skipCount, maxItems, fields, where);
    print(result);
} catch (e) {
    print('Exception when calling SitesApi->listSiteMemberships: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **siteId** | **String**| The identifier of a site. | 
 **skipCount** | **int**| The number of entities that exist in the collection before those included in this list. If not supplied then the default value is 0.  | [optional] [default to 0]
 **maxItems** | **int**| The maximum number of items to return in the list. If not supplied then the default value is 100.  | [optional] [default to 100]
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 
 **where** | **String**| Optionally filter the list. **Note:** this option is available in Alfresco 7.0.0 and newer versions. *   ```where=(isMemberOfGroup=false|true)```  | [optional] 

### Return type

[**SiteMemberPaging**](SiteMemberPaging.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSiteMembershipsForPerson**
> SiteRolePaging listSiteMembershipsForPerson(personId, skipCount, maxItems, orderBy, relations, fields, where)

List site memberships

Gets a list of site membership information for person **personId**.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user.  You can use the **where** parameter to filter the returned sites by **visibility** or site **preset**.  Example to filter by **visibility**, use any one of:  ``` (visibility='PRIVATE') (visibility='PUBLIC') (visibility='MODERATED') ```  Example to filter by site **preset**:  ``` (preset='site-dashboard') ```  The default sort order for the returned list is for sites to be sorted by ascending title. You can override the default by using the **orderBy** parameter. You can specify one or more of the following fields in the **orderBy** parameter: * id * title * role 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new SitesApi();
var personId = personId_example; // String | The identifier of a person.
var skipCount = 56; // int | The number of entities that exist in the collection before those included in this list. If not supplied then the default value is 0. 
var maxItems = 56; // int | The maximum number of items to return in the list. If not supplied then the default value is 100. 
var orderBy = []; // BuiltList<String> | A string to control the order of the entities returned in a list. You can use the **orderBy** parameter to sort the list by one or more fields.  Each field has a default sort order, which is normally ascending order. Read the API method implementation notes above to check if any fields used in this method have a descending default search order.  To sort the entities in a specific order, you can use the **ASC** and **DESC** keywords for any field. 
var relations = []; // BuiltList<String> | Use the relations parameter to include one or more related entities in a single response.
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 
var where = where_example; // String | A string to restrict the returned objects by using a predicate.

try { 
    var result = api_instance.listSiteMembershipsForPerson(personId, skipCount, maxItems, orderBy, relations, fields, where);
    print(result);
} catch (e) {
    print('Exception when calling SitesApi->listSiteMembershipsForPerson: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **personId** | **String**| The identifier of a person. | 
 **skipCount** | **int**| The number of entities that exist in the collection before those included in this list. If not supplied then the default value is 0.  | [optional] [default to 0]
 **maxItems** | **int**| The maximum number of items to return in the list. If not supplied then the default value is 100.  | [optional] [default to 100]
 **orderBy** | [**BuiltList<String>**](String.md)| A string to control the order of the entities returned in a list. You can use the **orderBy** parameter to sort the list by one or more fields.  Each field has a default sort order, which is normally ascending order. Read the API method implementation notes above to check if any fields used in this method have a descending default search order.  To sort the entities in a specific order, you can use the **ASC** and **DESC** keywords for any field.  | [optional] 
 **relations** | [**BuiltList<String>**](String.md)| Use the relations parameter to include one or more related entities in a single response. | [optional] 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 
 **where** | **String**| A string to restrict the returned objects by using a predicate. | [optional] 

### Return type

[**SiteRolePaging**](SiteRolePaging.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSites**
> SitePaging listSites(skipCount, maxItems, orderBy, relations, fields, where)

List sites

Gets a list of sites in this repository.  You can use the **where** parameter to filter the returned sites by **visibility** or site **preset**.  Example to filter by **visibility**, use any one of:  ``` (visibility='PRIVATE') (visibility='PUBLIC') (visibility='MODERATED') ```  Example to filter by site **preset**:  ``` (preset='site-dashboard') ```  The default sort order for the returned list is for sites to be sorted by ascending title. You can override the default by using the **orderBy** parameter. You can specify one or more of the following fields in the **orderBy** parameter: * id * title * description  You can use the **relations** parameter to include one or more related entities in a single response and so reduce network traffic.  The entity types in Alfresco are organized in a tree structure. The **sites** entity has two children, **containers** and **members**. The following relations parameter returns all the container and member objects related to each site:  ``` containers,members ``` 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new SitesApi();
var skipCount = 56; // int | The number of entities that exist in the collection before those included in this list. If not supplied then the default value is 0. 
var maxItems = 56; // int | The maximum number of items to return in the list. If not supplied then the default value is 100. 
var orderBy = []; // BuiltList<String> | A string to control the order of the entities returned in a list. You can use the **orderBy** parameter to sort the list by one or more fields.  Each field has a default sort order, which is normally ascending order. Read the API method implementation notes above to check if any fields used in this method have a descending default search order.  To sort the entities in a specific order, you can use the **ASC** and **DESC** keywords for any field. 
var relations = []; // BuiltList<String> | Use the relations parameter to include one or more related entities in a single response.
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 
var where = where_example; // String | A string to restrict the returned objects by using a predicate.

try { 
    var result = api_instance.listSites(skipCount, maxItems, orderBy, relations, fields, where);
    print(result);
} catch (e) {
    print('Exception when calling SitesApi->listSites: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **skipCount** | **int**| The number of entities that exist in the collection before those included in this list. If not supplied then the default value is 0.  | [optional] [default to 0]
 **maxItems** | **int**| The maximum number of items to return in the list. If not supplied then the default value is 100.  | [optional] [default to 100]
 **orderBy** | [**BuiltList<String>**](String.md)| A string to control the order of the entities returned in a list. You can use the **orderBy** parameter to sort the list by one or more fields.  Each field has a default sort order, which is normally ascending order. Read the API method implementation notes above to check if any fields used in this method have a descending default search order.  To sort the entities in a specific order, you can use the **ASC** and **DESC** keywords for any field.  | [optional] 
 **relations** | [**BuiltList<String>**](String.md)| Use the relations parameter to include one or more related entities in a single response. | [optional] 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 
 **where** | **String**| A string to restrict the returned objects by using a predicate. | [optional] 

### Return type

[**SitePaging**](SitePaging.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rejectSiteMembershipRequest**
> rejectSiteMembershipRequest(siteId, inviteeId, siteMembershipRejectionBody)

Reject a site membership request

Reject a site membership request. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new SitesApi();
var siteId = siteId_example; // String | The identifier of a site.
var inviteeId = inviteeId_example; // String | The invitee user name.
var siteMembershipRejectionBody = new SiteMembershipRejectionBody(); // SiteMembershipRejectionBody | Rejecting a request to join, optionally, allows the inclusion of comment. 

try { 
    api_instance.rejectSiteMembershipRequest(siteId, inviteeId, siteMembershipRejectionBody);
} catch (e) {
    print('Exception when calling SitesApi->rejectSiteMembershipRequest: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **siteId** | **String**| The identifier of a site. | 
 **inviteeId** | **String**| The invitee user name. | 
 **siteMembershipRejectionBody** | [**SiteMembershipRejectionBody**](SiteMembershipRejectionBody.md)| Rejecting a request to join, optionally, allows the inclusion of comment.  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSite**
> SiteEntry updateSite(siteId, siteBodyUpdate, fields)

Update a site

**Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Update the details for the given site **siteId**. Site Manager or otherwise a (site) admin can update title, description or visibility.  Note: the id of a site cannot be updated once the site has been created. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new SitesApi();
var siteId = siteId_example; // String | The identifier of a site.
var siteBodyUpdate = new SiteBodyUpdate(); // SiteBodyUpdate | The site information to update.
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.updateSite(siteId, siteBodyUpdate, fields);
    print(result);
} catch (e) {
    print('Exception when calling SitesApi->updateSite: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **siteId** | **String**| The identifier of a site. | 
 **siteBodyUpdate** | [**SiteBodyUpdate**](SiteBodyUpdate.md)| The site information to update. | 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**SiteEntry**](SiteEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSiteGroupMembership**
> SiteGroupEntry updateSiteGroupMembership(siteId, groupId, siteMembershipBodyUpdate, fields)

Update site membership of group

**Note:** this endpoint is available in Alfresco 7.0.0 and newer versions.  Update the membership of person **groupId** in site **siteId**. You can set the **role** to one of four types: * SiteConsumer * SiteCollaborator * SiteContributor * SiteManager 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new SitesApi();
var siteId = siteId_example; // String | The identifier of a site.
var groupId = groupId_example; // String | The identifier of a group.
var siteMembershipBodyUpdate = new SiteMembershipBodyUpdate(); // SiteMembershipBodyUpdate | The groupId new role
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.updateSiteGroupMembership(siteId, groupId, siteMembershipBodyUpdate, fields);
    print(result);
} catch (e) {
    print('Exception when calling SitesApi->updateSiteGroupMembership: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **siteId** | **String**| The identifier of a site. | 
 **groupId** | **String**| The identifier of a group. | 
 **siteMembershipBodyUpdate** | [**SiteMembershipBodyUpdate**](SiteMembershipBodyUpdate.md)| The groupId new role | 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**SiteGroupEntry**](SiteGroupEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSiteMembership**
> SiteMemberEntry updateSiteMembership(siteId, personId, siteMembershipBodyUpdate, fields)

Update a site membership

Update the membership of person **personId** in site **siteId**.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user.  You can set the **role** to one of four types:  * SiteConsumer * SiteCollaborator * SiteContributor * SiteManager 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new SitesApi();
var siteId = siteId_example; // String | The identifier of a site.
var personId = personId_example; // String | The identifier of a person.
var siteMembershipBodyUpdate = new SiteMembershipBodyUpdate(); // SiteMembershipBodyUpdate | The persons new role
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.updateSiteMembership(siteId, personId, siteMembershipBodyUpdate, fields);
    print(result);
} catch (e) {
    print('Exception when calling SitesApi->updateSiteMembership: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **siteId** | **String**| The identifier of a site. | 
 **personId** | **String**| The identifier of a person. | 
 **siteMembershipBodyUpdate** | [**SiteMembershipBodyUpdate**](SiteMembershipBodyUpdate.md)| The persons new role | 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**SiteMemberEntry**](SiteMemberEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSiteMembershipRequestForPerson**
> SiteMembershipRequestEntry updateSiteMembershipRequestForPerson(personId, siteId, siteMembershipRequestBodyUpdate, fields)

Update a site membership request

Updates the message for the site membership request to site **siteId** for person **personId**.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new SitesApi();
var personId = personId_example; // String | The identifier of a person.
var siteId = siteId_example; // String | The identifier of a site.
var siteMembershipRequestBodyUpdate = new SiteMembershipRequestBodyUpdate(); // SiteMembershipRequestBodyUpdate | The new message to display
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.updateSiteMembershipRequestForPerson(personId, siteId, siteMembershipRequestBodyUpdate, fields);
    print(result);
} catch (e) {
    print('Exception when calling SitesApi->updateSiteMembershipRequestForPerson: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **personId** | **String**| The identifier of a person. | 
 **siteId** | **String**| The identifier of a site. | 
 **siteMembershipRequestBodyUpdate** | [**SiteMembershipRequestBodyUpdate**](SiteMembershipRequestBodyUpdate.md)| The new message to display | 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**SiteMembershipRequestEntry**](SiteMembershipRequestEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

