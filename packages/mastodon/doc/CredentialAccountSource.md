# mastodon.model.CredentialAccountSource

## Load the model package
```dart
import 'package:mastodon/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**fields** | [**List&lt;Field&gt;**](Field.md) | Metadata about the account. | 
**followRequestsCount** | **int** | The number of pending follow requests. | 
**indexable** | **bool** | Whether public posts should be searchable to anyone. | 
**note** | **String** | Profile bio, in plain text instead of HTML. | 
**privacy** | [**StatusVisibilityEnum**](StatusVisibilityEnum.md) | The default post privacy to be used for new statuses. | 
**sensitive** | **bool** | Whether new statuses should be marked sensitive by default. | 
**attributionDomains** | **List&lt;String&gt;** | Domains of websites allowed to credit the account. | [optional] 
**discoverable** | **bool** | Whether the account has opted into discovery features such as the profile directory. | [optional] 
**hideCollections** | **bool** | Whether the user hides the contents of their follows and followers collections. | [optional] 
**language** | **String** | The default posting language for new statuses. | [optional] 
**quotePolicy** | [**ScheduledStatusParamsQuoteApprovalPolicyEnum**](ScheduledStatusParamsQuoteApprovalPolicyEnum.md) | The default quote policy to be used for new statuses. | [optional] 
**spoilerField** | **bool** | Whether new statuses should have content warnings by default. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


