import 'package:test/test.dart';
import 'package:mastodon/mastodon.dart';

// tests for V1Filter
void main() {
  final V1Filter? instance = /* V1Filter(...) */ null;
  // TODO add properties to the entity

  group(V1Filter, () {
    // The contexts in which the filter should be applied.
    // List<FilterContextEnum> context
    test('to test the property `context`', () async {
      // TODO
    });

    // The ID of the filter in the database.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // Should matching entities in home and notifications be dropped by the server? See [implementation guidelines for filters](https://docs.joinmastodon.org/api/guidelines/#filters).
    // bool irreversible
    test('to test the property `irreversible`', () async {
      // TODO
    });

    // The text to be filtered.
    // String phrase
    test('to test the property `phrase`', () async {
      // TODO
    });

    // Should the filter consider word boundaries? See [implementation guidelines for filters](https://docs.joinmastodon.org/api/guidelines/#filters).
    // bool wholeWord
    test('to test the property `wholeWord`', () async {
      // TODO
    });

    // When the filter should no longer be applied.
    // DateTime expiresAt
    test('to test the property `expiresAt`', () async {
      // TODO
    });
  });
}
