# mastodon.model.InstanceRegistrations

## Load the model package
```dart
import 'package:mastodon/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**approvalRequired** | **bool** | Whether registrations require moderator approval. | 
**enabled** | **bool** | Whether registrations are enabled. This will be `false` if `registrations_mode` is `none` or if the server is in `single_user_mode`. | 
**message** | **String** | A custom message to be shown when registrations are closed. Will be `null` if registrations are open. | [optional] 
**minAge** | **int** | A minimum age required to register, if configured. | [optional] 
**oauth** | **bool** | Signals whether the OAuth registration flow (`prompt=create`) is supported. | [optional] 
**reasonRequired** | **bool** | Whether registrations require the user to provide a reason for joining. Only applicable when `registrations[approval_required]` is true. | [optional] 
**url** | [**Uri**](Uri.md) | A custom URL for account registration, when using external authentication. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


