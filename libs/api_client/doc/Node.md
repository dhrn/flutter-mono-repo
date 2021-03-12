# api_client.model.Node

## Load the model package
```dart
import 'package:api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**name** | **String** | The name must not contain spaces or the following special characters: * \" < > \\ / ? : and |. The character . must not be used at the end of the name.  | 
**nodeType** | **String** |  | 
**isFolder** | **bool** |  | 
**isFile** | **bool** |  | 
**isLocked** | **bool** |  | [optional] [default to false]
**modifiedAt** | [**DateTime**](DateTime.md) |  | 
**modifiedByUser** | [**UserInfo**](UserInfo.md) |  | 
**createdAt** | [**DateTime**](DateTime.md) |  | 
**createdByUser** | [**UserInfo**](UserInfo.md) |  | 
**parentId** | **String** |  | [optional] 
**isLink** | **bool** |  | [optional] 
**isFavorite** | **bool** |  | [optional] 
**content** | [**ContentInfo**](ContentInfo.md) |  | [optional] 
**aspectNames** | **BuiltList<String>** |  | [optional] 
**properties** | [**JsonObject**](.md) |  | [optional] 
**allowableOperations** | **BuiltList<String>** |  | [optional] 
**path** | [**PathInfo**](PathInfo.md) |  | [optional] 
**permissions** | [**PermissionsInfo**](PermissionsInfo.md) |  | [optional] 
**definition** | [**Definition**](Definition.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


