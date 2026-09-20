# mastodon.model.Filter

## Load the model package
```dart
import 'package:mastodon/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**context** | [**List&lt;FilterContextEnum&gt;**](FilterContextEnum.md) | The contexts in which the filter should be applied. | 
**filterAction** | [**FilterFilterActionEnum**](FilterFilterActionEnum.md) | The action to be taken when a status matches this filter. | 
**id** | **String** | The ID of the Filter in the database. | 
**title** | **String** | A title given by the user to name the filter. | 
**expiresAt** | [**DateTime**](DateTime.md) | When the filter should no longer be applied. | [optional] 
**keywords** | [**List&lt;FilterKeyword&gt;**](FilterKeyword.md) | The keywords grouped under this filter. Omitted when part of a [FilterResult](https://docs.joinmastodon.org/entities/FilterResult/). | [optional] 
**statuses** | [**List&lt;FilterStatus&gt;**](FilterStatus.md) | The statuses grouped under this filter. Omitted when part of a [FilterResult](https://docs.joinmastodon.org/entities/FilterResult/). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


