# api_client.model.Pagination

## Load the model package
```dart
import 'package:api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**count** | **int** | The number of objects in the entries array.  | [optional] 
**hasMoreItems** | **bool** | A boolean value which is **true** if there are more entities in the collection beyond those in this response. A true value means a request with a larger value for the **skipCount** or the **maxItems** parameter will return more entities.  | [optional] 
**totalItems** | **int** | An integer describing the total number of entities in the collection. The API might not be able to determine this value, in which case this property will not be present.  | [optional] 
**skipCount** | **int** | An integer describing how many entities exist in the collection before those included in this list. If there was no **skipCount** parameter then the default value is 0.  | [optional] 
**maxItems** | **int** | The value of the **maxItems** parameter used to generate this list. If there was no **maxItems** parameter then the default value is 100.  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


