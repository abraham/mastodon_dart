# mastodon.model.StatusQuote

## Load the model package
```dart
import 'package:mastodon/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**state** | [**QuoteStateEnum**](QuoteStateEnum.md) | The state of the quote. Unknown values should be treated as `unauthorized`. | 
**quotedStatus** | [**Status**](Status.md) | The status being quoted, if the quote has been accepted. This will be `null`, unless the `state` attribute is `accepted`, `blocked_account`, `blocked_domain`, or `muted_account`, or the wrapping [Status](https://docs.joinmastodon.org/entities/status/) entity has been obtained by calling `DELETE /api/v1/statuses/:id`.. | [optional] 
**quotedStatusId** | **String** | The identifier of the status being quoted. This will be `null`, unless the `state` attribute is one of `accepted`, `blocked_account`, `blocked_domain` or `muted_account`, or the wrapping [Status](https://docs.joinmastodon.org/entities/status/) entity has been obtained by calling `DELETE /api/v1/statuses/:id`. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


