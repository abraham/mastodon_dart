# mastodon.model.UpdateStatusRequest

## Load the model package
```dart
import 'package:mastodon/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**language** | **String** | ISO 639-1 language code for the status. | [optional] 
**mediaAttributesLeftSquareBracketRightSquareBracket** | **List&lt;String&gt;** | Each array includes id, description, and focus. | [optional] 
**mediaIds** | **List&lt;String&gt;** | Include Attachment IDs to be attached as media. If provided, `status` becomes optional, and `poll` cannot be used. | [optional] 
**poll** | [**UpdateStatusRequestPoll**](UpdateStatusRequestPoll.md) |  | [optional] 
**quoteApprovalPolicy** | **String** | String (Enumerable, oneOf). Sets who is allowed to quote the status. Ignored if `visibility` is `private` or `direct`, in which case the policy will always be set to `nobody`. Changing the policy does not invalidate past quotes. `public` = Anyone is allowed to quote this status and will have their quote automatically accepted, unless they are blocked. `followers` = Only followers and the author are allowed to quote this status, and will have their quote automatically accepted. `nobody` = Only the author is allowed to quote the status. | [optional] 
**sensitive** | **bool** | Whether the status should be marked as sensitive. | [optional] 
**spoilerText** | **String** | The plain text subject or content warning of the status. | [optional] 
**status** | **String** | The plain text content of the status. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


