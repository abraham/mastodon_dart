# mastodon.model.Profile

## Load the model package
```dart
import 'package:mastodon/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attributionDomains** | **List&lt;String&gt;** | Domains of websites allowed to credit the account. | 
**avatarDescription** | **String** | A textual description of the avatar, to be used for the visually impaired or when avatars do not load. | 
**bot** | **bool** | Indicates that the account may perform automated actions, may not be monitored, or identifies as a robot. This is determined by the account's `actor_type` being set to 'Application' or 'Service'. | 
**displayName** | **String** | The profile's display name. | 
**fields** | [**List&lt;Field&gt;**](Field.md) | Metadata about the account. Those contain the raw unprocessed names and values. | 
**headerDescription** | **String** | A textual description of the profile header, to be used for the visually impaired or when avatars do not load. | 
**id** | **String** | The account id. | 
**indexable** | **bool** | Whether the account allows indexing by search engines. | 
**locked** | **bool** | Whether the account manually approves follow requests. | 
**note** | **String** | The profile's bio or description. Unlike for [Account](https://docs.joinmastodon.org/entities/Account/), this is the raw unprocessed text, not the rendered HTML. | 
**showFeatured** | **bool** | Whether the account wishes to have a “Featured” tab on their profile. | 
**showMedia** | **bool** | Whether the account wishes to have a “Media” tab with media attachments on their profile. | 
**showMediaReplies** | **bool** | Whether the account wishes to have replies in the “Media” tab on their profile. | 
**avatar** | [**Uri**](Uri.md) | An image icon that is shown next to statuses and in the profile. Unlike for [Account](https://docs.joinmastodon.org/entities/Account/), this is nullable and will be null if the avatar is unset. | [optional] 
**avatarStatic** | [**Uri**](Uri.md) | A static version of the avatar. Unlike for [Account](https://docs.joinmastodon.org/entities/Account/), this is nullable and will be null if the avatar is unset. | [optional] 
**discoverable** | **bool** | Whether the account has opted into discovery features such as the profile directory. | [optional] 
**header** | [**Uri**](Uri.md) | An image banner that is shown above the profile and in profile cards. Unlike for [Account](https://docs.joinmastodon.org/entities/Account/), this is nullable and will be null if the header is unset. | [optional] 
**headerStatic** | [**Uri**](Uri.md) | A static version of the header. Unlike for [Account](https://docs.joinmastodon.org/entities/Account/), this is nullable and will be null if the header is unset. | [optional] 
**hideCollections** | **bool** | Whether the user hides the contents of their follows and followers collections. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


