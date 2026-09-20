import 'package:test/test.dart';
import 'package:mastodon/mastodon.dart';

// tests for Application
void main() {
  final Application? instance = /* Application(...) */ null;
  // TODO add properties to the entity

  group(Application, () {
    // The numeric ID of the application.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // The name of the application.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // The registered redirection URI(s) for the application stored as a single string. Multiple URIs are separated by whitespace characters. May contain `\\n` characters when multiple redirect URIs are registered.
    // String redirectUri
    test('to test the property `redirectUri`', () async {
      // TODO
    });

    // The registered redirection URI(s) for the application.
    // List<Uri> redirectUris
    test('to test the property `redirectUris`', () async {
      // TODO
    });

    // The scopes for the application. This is the registered `scopes` string split on whitespace.
    // List<OAuthScope> scopes
    test('to test the property `scopes`', () async {
      // TODO
    });

    // Used for Push Streaming API. Returned with [POST /api/v1/apps](https://docs.joinmastodon.org/methods/apps/#create). Equivalent to [WebPushSubscription#server_key](https://docs.joinmastodon.org/entities/WebPushSubscription/#server_key) and [Instance#vapid_public_key](https://docs.joinmastodon.org/entities/Instance/#vapid_public_key)
    // String vapidKey
    test('to test the property `vapidKey`', () async {
      // TODO
    });

    // The website associated with the application.
    // Uri website
    test('to test the property `website`', () async {
      // TODO
    });
  });
}
