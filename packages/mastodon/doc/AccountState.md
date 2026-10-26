# mastodon.model.AccountState

## Load the model package
```dart
import 'package:mastodon/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**approved** | **bool** | Whether the current account has been approved by a moderator. | 
**confirmed** | **bool** | Whether the current account has confirmed their email address. | 
**functional** | **bool** | Whether the current account is fully usable. | 
**error** | **String** | Localized string explaining why the account is not functional, if applicable. | [optional] 
**errorCode** | **String** | Reason why the account is not functional, if applicable. Expressed as a code. Additional reasons can be added in the future. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


