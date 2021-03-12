# api_client.model.NodeBodyCreate

## Load the model package
```dart
import 'package:api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The name must not contain spaces or the following special characters: * \" < > \\ / ? : and |. The character . must not be used at the end of the name.  | 
**nodeType** | **String** |  | 
**aspectNames** | **BuiltList<String>** |  | [optional] 
**properties** | [**JsonObject**](.md) |  | [optional] 
**permissions** | [**PermissionsBody**](PermissionsBody.md) |  | [optional] 
**definition** | [**Definition**](Definition.md) |  | [optional] 
**relativePath** | **String** |  | [optional] 
**association** | [**NodeBodyCreateAssociation**](NodeBodyCreateAssociation.md) |  | [optional] 
**secondaryChildren** | [**BuiltList<ChildAssociationBody>**](ChildAssociationBody.md) |  | [optional] 
**targets** | [**BuiltList<AssociationBody>**](AssociationBody.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


