# mastodon.model.PatchProfileRequest

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
**discoverable** | **bool** | Whether the account should be shown in the profile directory and be available for other discovery features, like being included in Collections. | [optional] 
**displayName** | **String** | The display name to use for the profile. | [optional] 
**fieldsAttributes** | [**Map&lt;String, PatchAccountUpdateCredentialsRequestFieldsAttributesValue&gt;**](PatchAccountUpdateCredentialsRequestFieldsAttributesValue.md) | The profile fields to be set. Each hash includes `name` and `value`. By default, max 4 fields (specified in [Instance#max_profile_fields]). | [optional] 
**header** | **String** | Header image encoded using `multipart/form-data` | [optional] 
**headerDescription** | **String** | A plain-text description of the header, for accessibility purposes. | [optional] 
**hideCollections** | **bool** | Whether to hide followers and followed accounts. This field predates the Collections feature and has nothing to do with it, despite the name. | [optional] 
**indexable** | **bool** | Whether public posts should be searchable to anyone. | [optional] 
**locked** | **bool** | Whether manual approval of follow requests is required. | [optional] 
**note** | **String** | The account bio. | [optional] 
**showFeatured** | **bool** | Whether a “Featured” tab should be shown on this profile. | [optional] 
**showMedia** | **bool** | Whether a “Media” tab with media attachments should be shown on this profile. | [optional] 
**showMediaReplies** | **bool** | Whether media attachments in replies should be shown in the “Media” tab of this profile. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


