import 'package:test/test.dart';
import 'package:mastodon/mastodon.dart';

// tests for PatchAccountUpdateCredentialsRequestSource
void main() {
  final PatchAccountUpdateCredentialsRequestSource?
  instance = /* PatchAccountUpdateCredentialsRequestSource(...) */ null;
  // TODO add properties to the entity

  group(PatchAccountUpdateCredentialsRequestSource, () {
    // String (Enumerable, oneOf `public`, `unlisted`, or `private`). Default post privacy for authored statuses.
    // StatusVisibilityEnum privacy
    test('to test the property `privacy`', () async {
      // TODO
    });

    // Whether to mark authored statuses as sensitive by default.
    // bool sensitive
    test('to test the property `sensitive`', () async {
      // TODO
    });

    // Default language to use for authored statuses (ISO 639-1)
    // String language
    test('to test the property `language`', () async {
      // TODO
    });

    // String (Enumerable, oneOf `public` `followers` `nobody`). Default quote policy for new posts.
    // String quotePolicy
    test('to test the property `quotePolicy`', () async {
      // TODO
    });
  });
}
