# mastodon.model.UpdateStatusInteractionPolicyRequest

## Load the model package
```dart
import 'package:mastodon/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**quoteApprovalPolicy** | **String** | String (Enumerable, oneOf). Sets who is allowed to quote the status. Ignored if `visibility` is `private` or `direct`, in which case the policy will always be set to `nobody`. Changing the policy does not invalidate past quotes. `public` = Anyone is allowed to quote this status and will have their quote automatically accepted, unless they are blocked. `followers` = Only followers and the author are allowed to quote this status, and will have their quote automatically accepted. `nobody` = Only the author is allowed to quote the status. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


