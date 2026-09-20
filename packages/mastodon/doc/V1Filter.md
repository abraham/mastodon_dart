# mastodon.model.V1Filter

## Load the model package
```dart
import 'package:mastodon/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**context** | [**List&lt;FilterContextEnum&gt;**](FilterContextEnum.md) | The contexts in which the filter should be applied. | 
**id** | **String** | The ID of the filter in the database. | 
**irreversible** | **bool** | Should matching entities in home and notifications be dropped by the server? See [implementation guidelines for filters](https://docs.joinmastodon.org/api/guidelines/#filters). | 
**phrase** | **String** | The text to be filtered. | 
**wholeWord** | **bool** | Should the filter consider word boundaries? See [implementation guidelines for filters](https://docs.joinmastodon.org/api/guidelines/#filters). | 
**expiresAt** | [**DateTime**](DateTime.md) | When the filter should no longer be applied. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


