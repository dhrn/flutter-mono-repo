# api_client.model.ActionDefinition

## Load the model package
```dart
import 'package:api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Identifier of the action definition — used for example when executing an action | 
**name** | **String** | name of the action definition, e.g. \"move\" | [optional] 
**title** | **String** | title of the action definition, e.g. \"Move\" | [optional] 
**description** | **String** | describes the action definition, e.g. \"This will move the matched item to another space.\" | [optional] 
**applicableTypes** | **BuiltList<String>** | QNames of the types this action applies to | 
**trackStatus** | **bool** | whether the basic action definition supports action tracking or not | 
**parameterDefinitions** | [**BuiltList<ActionParameterDefinition>**](ActionParameterDefinition.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


