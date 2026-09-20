import 'package:test/test.dart';
import 'package:mastodon/mastodon.dart';

// tests for Preferences
void main() {
  final Preferences? instance = /* Preferences(...) */ null;
  // TODO add properties to the entity

  group(Preferences, () {
    // Default sensitivity flag for new posts. Equivalent to [CredentialAccount#source\\[sensitive\\]](https://docs.joinmastodon.org/entities/Account/#source-sensitive).
    // bool postingColonDefaultColonSensitive
    test('to test the property `postingColonDefaultColonSensitive`', () async {
      // TODO
    });

    // Default visibility for new posts. Equivalent to [CredentialAccount#source\\[privacy\\]](https://docs.joinmastodon.org/entities/Account/#source-privacy).
    // StatusVisibilityEnum postingColonDefaultColonVisibility
    test('to test the property `postingColonDefaultColonVisibility`', () async {
      // TODO
    });

    // Whether media attachments should be automatically displayed or blurred/hidden.
    // PreferencesReadingExpandMediaEnum readingColonExpandColonMedia
    test('to test the property `readingColonExpandColonMedia`', () async {
      // TODO
    });

    // Whether CWs should be expanded by default.
    // bool readingColonExpandColonSpoilers
    test('to test the property `readingColonExpandColonSpoilers`', () async {
      // TODO
    });

    // Default language for new posts. Equivalent to [CredentialAccount#source\\[language\\]](https://docs.joinmastodon.org/entities/Account/#source-language)
    // String postingColonDefaultColonLanguage
    test('to test the property `postingColonDefaultColonLanguage`', () async {
      // TODO
    });
  });
}
