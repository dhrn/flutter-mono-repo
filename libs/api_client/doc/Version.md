# api_client.model.Version

## Load the model package
```dart
import 'package:api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**versionComment** | **String** |  | [optional] 
**name** | **String** | The name must not contain spaces or the following special characters: * \" < > \\ / ? : and |. The character . must not be used at the end of the name.  | 
**nodeType** | **String** |  | 
**isFolder** | **bool** |  | 
**isFile** | **bool** |  | 
**modifiedAt** | [**DateTime**](DateTime.md) |  | 
**modifiedByUser** | [**UserInfo**](UserInfo.md) |  | 
**content** | [**ContentInfo**](ContentInfo.md) |  | [optional] 
**aspectNames** | **BuiltList<String>** |  | [optional] 
**properties** | [**JsonObject**](.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


