# api_client.model.Property

## Load the model package
```dart
import 'package:api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**title** | **String** | the human-readable title | [optional] 
**description** | **String** | the human-readable description | [optional] 
**defaultValue** | **String** | the default value | [optional] 
**dataType** | **String** | the name of the property type (i.g. d:text) | [optional] 
**isMultiValued** | **bool** | define if the property is multi-valued | [optional] 
**isMandatory** | **bool** | define if the property is mandatory | [optional] 
**isMandatoryEnforced** | **bool** | define if the presence of mandatory properties is enforced | [optional] 
**isProtected** | **bool** | define if the property is system maintained | [optional] 
**constraints** | [**BuiltList<Constraint>**](Constraint.md) | list of constraints defined for the property | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


