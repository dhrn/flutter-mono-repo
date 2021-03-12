# api_client.model.SharedLink

## Load the model package
```dart
import 'package:api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**expiresAt** | [**DateTime**](DateTime.md) |  | [optional] 
**nodeId** | **String** |  | [optional] 
**name** | **String** | The name must not contain spaces or the following special characters: * \" < > \\ / ? : and |. The character . must not be used at the end of the name.  | [optional] 
**title** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**modifiedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**modifiedByUser** | [**UserInfo**](UserInfo.md) |  | [optional] 
**sharedByUser** | [**UserInfo**](UserInfo.md) |  | [optional] 
**content** | [**ContentInfo**](ContentInfo.md) |  | [optional] 
**allowableOperations** | **BuiltList<String>** | The allowable operations for the Quickshare link itself. See allowableOperationsOnTarget for the allowable operations pertaining to the linked content node.  | [optional] 
**allowableOperationsOnTarget** | **BuiltList<String>** | The allowable operations for the content node being shared.  | [optional] 
**isFavorite** | **bool** |  | [optional] 
**properties** | [**JsonObject**](.md) | A subset of the target node's properties, system properties and properties already available in the SharedLink are excluded.  | [optional] 
**aspectNames** | **BuiltList<String>** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


