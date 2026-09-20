# mastodon.model.ScheduledStatusParams

## Load the model package
```dart
import 'package:mastodon/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**applicationId** | **int** | Internal ID of the Application that posted the status. Provided for historical compatibility only and can be ignored. | 
**text** | **String** | Text to be used as status content. | 
**visibility** | [**StatusVisibilityEnum**](StatusVisibilityEnum.md) | The visibility that the status will have once it is posted. | 
**withRateLimit** | **bool** | Whether status creation is subject to rate limiting. Provided for historical compatibility only and can be ignored. | 
**idempotency** | **String** | Idempotency key to prevent duplicate statuses. | [optional] 
**inReplyToId** | **int** | ID of the Status that will be replied to. | [optional] 
**language** | **String** | The language that will be used for the status. | [optional] 
**mediaIds** | **List&lt;String&gt;** | IDs of the MediaAttachments that will be attached to the status. | [optional] 
**poll** | [**ScheduledStatusParamsPoll**](ScheduledStatusParamsPoll.md) |  | [optional] 
**quoteApprovalPolicy** | [**ScheduledStatusParamsQuoteApprovalPolicyEnum**](ScheduledStatusParamsQuoteApprovalPolicyEnum.md) | The quote policy for the Status. | [optional] 
**quotedStatusId** | **String** | ID of the Status being quoted. | [optional] 
**scheduledAt** | **Object** | When the status will be scheduled. This will be null because the status is only scheduled once. | [optional] 
**sensitive** | **bool** | Whether the status will be marked as sensitive. | [optional] 
**spoilerText** | **String** | The text of the content warning or summary for the status. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


