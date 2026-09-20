# mastodon.model.PatchAccountUpdateCredentialsRequestSource

## Load the model package
```dart
import 'package:mastodon/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**privacy** | [**StatusVisibilityEnum**](StatusVisibilityEnum.md) | String (Enumerable, oneOf `public`, `unlisted`, or `private`). Default post privacy for authored statuses. | [optional] 
**sensitive** | **bool** | Whether to mark authored statuses as sensitive by default. | [optional] 
**language** | **String** | Default language to use for authored statuses (ISO 639-1) | [optional] 
**quotePolicy** | **String** | String (Enumerable, oneOf `public` `followers` `nobody`). Default quote policy for new posts. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


