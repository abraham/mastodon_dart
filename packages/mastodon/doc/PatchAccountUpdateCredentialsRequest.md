# mastodon.model.PatchAccountUpdateCredentialsRequest

## Load the model package
```dart
import 'package:mastodon/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attributionDomains** | **List&lt;String&gt;** | Domains of websites allowed to credit the account. Maximum of 10 domains. | [optional] 
**avatar** | **String** | Avatar image encoded using `multipart/form-data` | [optional] 
**avatarDescription** | **String** | A plain-text description of the avatar, for accessibility purposes. | [optional] 
**bot** | **bool** | Whether the account has a bot flag. | [optional] 
**discoverable** | **bool** | Whether the account should be shown in the profile directory. | [optional] 
**displayName** | **String** | The display name to use for the profile. | [optional] 
**fieldsAttributes** | [**Map&lt;String, PatchAccountUpdateCredentialsRequestFieldsAttributesValue&gt;**](PatchAccountUpdateCredentialsRequestFieldsAttributesValue.md) | The profile fields to be set. Inside this hash, the key is an integer cast to a string (although the exact integer does not matter), and the value is another hash including `name` and `value`. By default, max 4 fields (specified in [Instance#max_profile_fields]). | [optional] 
**header** | **String** | Header image encoded using `multipart/form-data` | [optional] 
**headerDescription** | **String** | A plain-text description of the header, for accessibility purposes. | [optional] 
**hideCollections** | **bool** | Whether to hide followers and followed accounts. | [optional] 
**indexable** | **bool** | Whether public posts should be searchable to anyone. | [optional] 
**locked** | **bool** | Whether manual approval of follow requests is required. | [optional] 
**note** | **String** | The account bio. | [optional] 
**source_** | [**PatchAccountUpdateCredentialsRequestSource**](PatchAccountUpdateCredentialsRequestSource.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


