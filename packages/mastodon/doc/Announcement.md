# mastodon.model.Announcement

## Load the model package
```dart
import 'package:mastodon/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allDay** | **bool** | Whether the announcement should start and end on dates only instead of datetimes. Will be false if there is no `starts_at` or `ends_at` time. | 
**content** | **String** | The text of the announcement. | 
**emojis** | [**List&lt;CustomEmoji&gt;**](CustomEmoji.md) | Custom emoji used in the announcement text. | 
**id** | **String** | The ID of the announcement in the database. | 
**mentions** | [**List&lt;AnnouncementAccount&gt;**](AnnouncementAccount.md) | Accounts mentioned in the announcement text. | 
**publishedAt** | [**DateTime**](DateTime.md) | When the announcement was published. | 
**reactions** | [**List&lt;Reaction&gt;**](Reaction.md) | Emoji reactions attached to the announcement. | 
**statuses** | [**List&lt;AnnouncementStatus&gt;**](AnnouncementStatus.md) | Statuses linked in the announcement text. | 
**tags** | [**List&lt;StatusTag&gt;**](StatusTag.md) | Tags linked in the announcement text. | 
**updatedAt** | [**DateTime**](DateTime.md) | When the announcement was last updated. | 
**endsAt** | [**DateTime**](DateTime.md) | When the announcement will end. | [optional] 
**reactionsAllowed** | **bool** | Whether emoji reactions on this announcement are allowed. | [optional] 
**read** | **bool** | Whether the announcement has been read by the current user. | [optional] 
**startsAt** | [**DateTime**](DateTime.md) | When the announcement will start. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


