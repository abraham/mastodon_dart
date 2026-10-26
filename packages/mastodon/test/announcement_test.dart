import 'package:test/test.dart';
import 'package:mastodon/mastodon.dart';

// tests for Announcement
void main() {
  final Announcement? instance = /* Announcement(...) */ null;
  // TODO add properties to the entity

  group(Announcement, () {
    // Whether the announcement should start and end on dates only instead of datetimes. Will be false if there is no `starts_at` or `ends_at` time.
    // bool allDay
    test('to test the property `allDay`', () async {
      // TODO
    });

    // The text of the announcement.
    // String content
    test('to test the property `content`', () async {
      // TODO
    });

    // Custom emoji used in the announcement text.
    // List<CustomEmoji> emojis
    test('to test the property `emojis`', () async {
      // TODO
    });

    // The ID of the announcement in the database.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // Accounts mentioned in the announcement text.
    // List<AnnouncementAccount> mentions
    test('to test the property `mentions`', () async {
      // TODO
    });

    // When the announcement was published.
    // DateTime publishedAt
    test('to test the property `publishedAt`', () async {
      // TODO
    });

    // Emoji reactions attached to the announcement.
    // List<Reaction> reactions
    test('to test the property `reactions`', () async {
      // TODO
    });

    // Statuses linked in the announcement text.
    // List<AnnouncementStatus> statuses
    test('to test the property `statuses`', () async {
      // TODO
    });

    // Tags linked in the announcement text.
    // List<StatusTag> tags
    test('to test the property `tags`', () async {
      // TODO
    });

    // When the announcement was last updated.
    // DateTime updatedAt
    test('to test the property `updatedAt`', () async {
      // TODO
    });

    // When the announcement will end.
    // DateTime endsAt
    test('to test the property `endsAt`', () async {
      // TODO
    });

    // Whether emoji reactions on this announcement are allowed.
    // bool reactionsAllowed
    test('to test the property `reactionsAllowed`', () async {
      // TODO
    });

    // Whether the announcement has been read by the current user.
    // bool read
    test('to test the property `read`', () async {
      // TODO
    });

    // When the announcement will start.
    // DateTime startsAt
    test('to test the property `startsAt`', () async {
      // TODO
    });
  });
}
