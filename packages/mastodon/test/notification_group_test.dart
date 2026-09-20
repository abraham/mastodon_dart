import 'package:test/test.dart';
import 'package:mastodon/mastodon.dart';

// tests for NotificationGroup
void main() {
  final NotificationGroup? instance = /* NotificationGroup(...) */ null;
  // TODO add properties to the entity

  group(NotificationGroup, () {
    // Group key identifying the grouped notifications. Should be treated as an opaque value.
    // String groupKey
    test('to test the property `groupKey`', () async {
      // TODO
    });

    // ID of the most recent notification in the group.
    // int mostRecentNotificationId
    test('to test the property `mostRecentNotificationId`', () async {
      // TODO
    });

    // Total number of individual notifications that are part of this notification group.
    // int notificationsCount
    test('to test the property `notificationsCount`', () async {
      // TODO
    });

    // IDs of some of the accounts who most recently triggered notifications in this group.
    // List<String> sampleAccountIds
    test('to test the property `sampleAccountIds`', () async {
      // TODO
    });

    // The type of event that resulted in the notifications in this group.
    // NotificationTypeEnum type
    test('to test the property `type`', () async {
      // TODO
    });

    // Collection that was the object of the notification. Attached when `type` of the notification is `added_to_collection` or `collection_update`.
    // Collection collection
    test('to test the property `collection`', () async {
      // TODO
    });

    // Summary of the event that caused follow relationships to be severed. Attached when `type` of the notification is `severed_relationships`.
    // RelationshipSeveranceEvent event
    test('to test the property `event`', () async {
      // TODO
    });

    // Fallback information available for some notification types that clients may not support. Only available for some notification types, and only if the `supported_types` parameter is used when querying.
    // NotificationFallback fallback
    test('to test the property `fallback`', () async {
      // TODO
    });

    // Date at which the most recent notification from this group within the current page has been created. This is only returned when paginating through notification groups.
    // DateTime latestPageNotificationAt
    test('to test the property `latestPageNotificationAt`', () async {
      // TODO
    });

    // Moderation warning that caused the notification. Attached when `type` of the notification is `moderation_warning`.
    // AccountWarning moderationWarning
    test('to test the property `moderationWarning`', () async {
      // TODO
    });

    // ID of the newest notification from this group represented within the current page. This is only returned when paginating through notification groups. Useful when polling new notifications.
    // String pageMaxId
    test('to test the property `pageMaxId`', () async {
      // TODO
    });

    // ID of the oldest notification from this group represented within the current page. This is only returned when paginating through notification groups. Useful when polling new notifications.
    // String pageMinId
    test('to test the property `pageMinId`', () async {
      // TODO
    });

    // Report that was the object of the notification. Attached when `type` of the notification is `admin.report`.
    // Report report
    test('to test the property `report`', () async {
      // TODO
    });

    // ID of the [Status](https://docs.joinmastodon.org/entities/Status/) that was the object of the notification. Attached when `type` of the notification is `favourite`, `reblog`, `status`, `mention`, `poll`, `update`, `quote` or `quoted_update`. In the case of `quoted_update`, your quote of the edited status is attached, not the status that was edited.
    // String statusId
    test('to test the property `statusId`', () async {
      // TODO
    });
  });
}
