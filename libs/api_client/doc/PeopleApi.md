# api_client.api.PeopleApi

## Load the API package
```dart
import 'package:api_client/api.dart';
```

All URIs are relative to *http://localhost/alfresco/api/-default-/public/alfresco/versions/1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPerson**](PeopleApi.md#createPerson) | **post** /people | Create person
[**deleteAvatarImage**](PeopleApi.md#deleteAvatarImage) | **delete** /people/{personId}/avatar | Delete avatar image
[**getAvatarImage**](PeopleApi.md#getAvatarImage) | **get** /people/{personId}/avatar | Get avatar image
[**getPerson**](PeopleApi.md#getPerson) | **get** /people/{personId} | Get a person
[**listPeople**](PeopleApi.md#listPeople) | **get** /people | List people
[**requestPasswordReset**](PeopleApi.md#requestPasswordReset) | **post** /people/{personId}/request-password-reset | Request password reset
[**resetPassword**](PeopleApi.md#resetPassword) | **post** /people/{personId}/reset-password | Reset password
[**updateAvatarImage**](PeopleApi.md#updateAvatarImage) | **put** /people/{personId}/avatar | Update avatar image
[**updatePerson**](PeopleApi.md#updatePerson) | **put** /people/{personId} | Update person


# **createPerson**
> PersonEntry createPerson(personBodyCreate, fields)

Create person

**Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Create a person.  If applicable, the given person's login access can also be optionally disabled.  You must have admin rights to create a person.  You can set custom properties when you create a person: ```JSON {   \"id\": \"abeecher\",   \"firstName\": \"Alice\",   \"lastName\": \"Beecher\",   \"displayName\": \"Alice Beecher\",   \"email\": \"abeecher@example.com\",   \"password\": \"secret\",   \"properties\":   {     \"my:property\": \"The value\"   } } ``` **Note:** setting properties of type d:content and d:category are not supported. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new PeopleApi();
var personBodyCreate = new PersonBodyCreate(); // PersonBodyCreate | The person details.
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.createPerson(personBodyCreate, fields);
    print(result);
} catch (e) {
    print('Exception when calling PeopleApi->createPerson: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **personBodyCreate** | [**PersonBodyCreate**](PersonBodyCreate.md)| The person details. | 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**PersonEntry**](PersonEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAvatarImage**
> deleteAvatarImage(personId)

Delete avatar image

**Note:** this endpoint is available in Alfresco 5.2.2 and newer versions.  Deletes the avatar image related to person **personId**.  You must be the person or have admin rights to update a person's avatar.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new PeopleApi();
var personId = personId_example; // String | The identifier of a person.

try { 
    api_instance.deleteAvatarImage(personId);
} catch (e) {
    print('Exception when calling PeopleApi->deleteAvatarImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **personId** | **String**| The identifier of a person. | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAvatarImage**
> Uint8List getAvatarImage(personId, attachment, ifModifiedSince, placeholder)

Get avatar image

**Note:** this endpoint is available in Alfresco 5.2.2 and newer versions.  Gets the avatar image related to the person **personId**. If the person has no related avatar then the **placeholder** query parameter can be optionally used to request a placeholder image to be returned.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new PeopleApi();
var personId = personId_example; // String | The identifier of a person.
var attachment = true; // bool | **true** enables a web browser to download the file as an attachment. **false** means a web browser may preview the file in a new tab or window, but not download the file.  You can only set this parameter to **false** if the content type of the file is in the supported list; for example, certain image files and PDF files.  If the content type is not supported for preview, then a value of **false**  is ignored, and the attachment will be returned in the response. 
var ifModifiedSince = 2013-10-20T19:20:30+01:00; // DateTime | Only returns the content if it has been modified since the date provided. Use the date format defined by HTTP. For example, `Wed, 09 Mar 2016 16:56:34 GMT`. 
var placeholder = true; // bool | If **true** and there is no avatar for this **personId** then the placeholder image is returned, rather than a 404 response. 

try { 
    var result = api_instance.getAvatarImage(personId, attachment, ifModifiedSince, placeholder);
    print(result);
} catch (e) {
    print('Exception when calling PeopleApi->getAvatarImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **personId** | **String**| The identifier of a person. | 
 **attachment** | **bool**| **true** enables a web browser to download the file as an attachment. **false** means a web browser may preview the file in a new tab or window, but not download the file.  You can only set this parameter to **false** if the content type of the file is in the supported list; for example, certain image files and PDF files.  If the content type is not supported for preview, then a value of **false**  is ignored, and the attachment will be returned in the response.  | [optional] [default to true]
 **ifModifiedSince** | **DateTime**| Only returns the content if it has been modified since the date provided. Use the date format defined by HTTP. For example, `Wed, 09 Mar 2016 16:56:34 GMT`.  | [optional] 
 **placeholder** | **bool**| If **true** and there is no avatar for this **personId** then the placeholder image is returned, rather than a 404 response.  | [optional] [default to true]

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPerson**
> PersonEntry getPerson(personId, fields)

Get a person

Gets information for the person **personId**.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new PeopleApi();
var personId = personId_example; // String | The identifier of a person.
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.getPerson(personId, fields);
    print(result);
} catch (e) {
    print('Exception when calling PeopleApi->getPerson: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **personId** | **String**| The identifier of a person. | 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**PersonEntry**](PersonEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPeople**
> PersonPaging listPeople(skipCount, maxItems, orderBy, include, fields)

List people

**Note:** this endpoint is available in Alfresco 5.2 and newer versions.  List people.  You can use the **include** parameter to return any additional information.  The default sort order for the returned list is for people to be sorted by ascending id. You can override the default by using the **orderBy** parameter.  You can use any of the following fields to order the results: * id * firstName * lastName 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new PeopleApi();
var skipCount = 56; // int | The number of entities that exist in the collection before those included in this list. If not supplied then the default value is 0. 
var maxItems = 56; // int | The maximum number of items to return in the list. If not supplied then the default value is 100. 
var orderBy = []; // BuiltList<String> | A string to control the order of the entities returned in a list. You can use the **orderBy** parameter to sort the list by one or more fields.  Each field has a default sort order, which is normally ascending order. Read the API method implementation notes above to check if any fields used in this method have a descending default search order.  To sort the entities in a specific order, you can use the **ASC** and **DESC** keywords for any field. 
var include = []; // BuiltList<String> | Returns additional information about the person. The following optional fields can be requested: * properties * aspectNames * capabilities 
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.listPeople(skipCount, maxItems, orderBy, include, fields);
    print(result);
} catch (e) {
    print('Exception when calling PeopleApi->listPeople: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **skipCount** | **int**| The number of entities that exist in the collection before those included in this list. If not supplied then the default value is 0.  | [optional] [default to 0]
 **maxItems** | **int**| The maximum number of items to return in the list. If not supplied then the default value is 100.  | [optional] [default to 100]
 **orderBy** | [**BuiltList<String>**](String.md)| A string to control the order of the entities returned in a list. You can use the **orderBy** parameter to sort the list by one or more fields.  Each field has a default sort order, which is normally ascending order. Read the API method implementation notes above to check if any fields used in this method have a descending default search order.  To sort the entities in a specific order, you can use the **ASC** and **DESC** keywords for any field.  | [optional] 
 **include** | [**BuiltList<String>**](String.md)| Returns additional information about the person. The following optional fields can be requested: * properties * aspectNames * capabilities  | [optional] 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**PersonPaging**](PersonPaging.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **requestPasswordReset**
> requestPasswordReset(personId, clientBody)

Request password reset

**Note:** this endpoint is available in Alfresco 5.2.1 and newer versions.  Initiates the reset password workflow to send an email with reset password instruction to the user's registered email.  The client is mandatory in the request body. For example: ```JSON {   \"client\": \"myClient\" } ``` **Note:** The client must be registered before this API can send an email. See [server documentation]. However, out-of-the-box share is registered as a default client, so you could pass **share** as the client name: ```JSON {   \"client\": \"share\" } ``` **Note:** No authentication is required to call this endpoint. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new PeopleApi();
var personId = personId_example; // String | The identifier of a person.
var clientBody = new ClientBody(); // ClientBody | The client name to send email with app-specific url.

try { 
    api_instance.requestPasswordReset(personId, clientBody);
} catch (e) {
    print('Exception when calling PeopleApi->requestPasswordReset: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **personId** | **String**| The identifier of a person. | 
 **clientBody** | [**ClientBody**](ClientBody.md)| The client name to send email with app-specific url. | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resetPassword**
> resetPassword(personId, passwordResetBody)

Reset password

**Note:** this endpoint is available in Alfresco 5.2.1 and newer versions.  Resets user's password  The password, id and key properties are mandatory in the request body. For example: ```JSON {   \"password\":\"newPassword\",   \"id\":\"activiti$10\",   \"key\":\"4dad6d00-0daf-413a-b200-f64af4e12345\" } ``` **Note:** No authentication is required to call this endpoint. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new PeopleApi();
var personId = personId_example; // String | The identifier of a person.
var passwordResetBody = new PasswordResetBody(); // PasswordResetBody | The reset password details

try { 
    api_instance.resetPassword(personId, passwordResetBody);
} catch (e) {
    print('Exception when calling PeopleApi->resetPassword: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **personId** | **String**| The identifier of a person. | 
 **passwordResetBody** | [**PasswordResetBody**](PasswordResetBody.md)| The reset password details | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAvatarImage**
> updateAvatarImage(personId, contentBodyUpdate)

Update avatar image

**Note:** this endpoint is available in Alfresco 5.2.2 and newer versions.  Updates the avatar image related to the person **personId**.  The request body should be the binary stream for the avatar image. The content type of the file should be an image file. This will be used to generate an \"avatar\" thumbnail rendition.  You must be the person or have admin rights to update a person's avatar.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new PeopleApi();
var personId = personId_example; // String | The identifier of a person.
var contentBodyUpdate = new Uint8List(); // Uint8List | The binary content

try { 
    api_instance.updateAvatarImage(personId, contentBodyUpdate);
} catch (e) {
    print('Exception when calling PeopleApi->updateAvatarImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **personId** | **String**| The identifier of a person. | 
 **contentBodyUpdate** | **Uint8List**| The binary content | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePerson**
> PersonEntry updatePerson(personId, personBodyUpdate, fields)

Update person

**Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Update the given person's details.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user.  If applicable, the given person's login access can also be optionally disabled or re-enabled.  You must have admin rights to update a person — unless updating your own details.  If you are changing your password, as a non-admin user, then the existing password must also be supplied (using the oldPassword field in addition to the new password value).  Admin users cannot be disabled by setting enabled to false.  Non-admin users may not disable themselves.  You can set custom properties when you update a person: ```JSON {   \"firstName\": \"Alice\",   \"properties\":   {     \"my:property\": \"The value\"   } } ``` **Note:** setting properties of type d:content and d:category are not supported. 

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = new PeopleApi();
var personId = personId_example; // String | The identifier of a person.
var personBodyUpdate = new PersonBodyUpdate(); // PersonBodyUpdate | The person details.
var fields = []; // BuiltList<String> | A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter. 

try { 
    var result = api_instance.updatePerson(personId, personBodyUpdate, fields);
    print(result);
} catch (e) {
    print('Exception when calling PeopleApi->updatePerson: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **personId** | **String**| The identifier of a person. | 
 **personBodyUpdate** | [**PersonBodyUpdate**](PersonBodyUpdate.md)| The person details. | 
 **fields** | [**BuiltList<String>**](String.md)| A list of field names.  You can use this parameter to restrict the fields returned within a response if, for example, you want to save on overall bandwidth.  The list applies to a returned individual entity or entries within a collection.  If the API method also supports the **include** parameter, then the fields specified in the **include** parameter are returned in addition to those specified in the **fields** parameter.  | [optional] 

### Return type

[**PersonEntry**](PersonEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

