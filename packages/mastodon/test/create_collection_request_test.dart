import 'package:test/test.dart';
import 'package:mastodon/mastodon.dart';

// tests for CreateCollectionRequest
void main() {
  final CreateCollectionRequest? instance = /* CreateCollectionRequest(...) */
      null;
  // TODO add properties to the entity

  group(CreateCollectionRequest, () {
    // A name for this Collection, max. 40 characters. String is taken \"as is\", which means there is currently no special handling of URLs and hashtags and no support for custom emoji.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // IDs of the accounts to feature in this Collection
    // List<String> accountIds
    test('to test the property `accountIds`', () async {
      // TODO
    });

    // A longer description of this Collection, max. 100 characters. String is taken \"as is\", which means there is currently no special handling of URLs a nd hashtags and no support for custom emoji.
    // String description
    test('to test the property `description`', () async {
      // TODO
    });

    // Whether this Collection should appear on the user's profile, in search results and other discovery mechanisms
    // bool discoverable
    test('to test the property `discoverable`', () async {
      // TODO
    });

    // One of Mastodon's supported language codes (two letter ISO 639-1 plus exceptions)
    // String language
    test('to test the property `language`', () async {
      // TODO
    });

    // Whether this Collection should be marked as sensitive
    // bool sensitive
    test('to test the property `sensitive`', () async {
      // TODO
    });

    // A single hashtag that describes the Collection
    // String tagName
    test('to test the property `tagName`', () async {
      // TODO
    });
  });
}
