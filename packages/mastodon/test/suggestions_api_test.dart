import 'package:test/test.dart';
import 'package:mastodon/mastodon.dart';

/// tests for SuggestionsApi
void main() {
  final instance = Mastodon().getSuggestionsApi();

  group(SuggestionsApi, () {
    // Remove a suggestion
    //
    // Remove an account from follow suggestions.  Version history:  2.4.3 - added
    //
    //Future deleteSuggestion(String accountId) async
    test('test deleteSuggestion', () async {
      // TODO
    });

    // View follow suggestions (v1)
    //
    // Accounts the user has had past positive interactions with, but is not yet following.  Version history:  2.4.3 - added\\ 3.4.0 - deprecated
    //
    //Future<List<Account>> getSuggestions({ int limit }) async
    test('test getSuggestions', () async {
      // TODO
    });

    // View follow suggestions (v2)
    //
    // Accounts that are promoted by staff, or that the user has had past positive interactions with, but is not yet following.  Version history:  3.4.0 - added
    //
    //Future<List<Suggestion>> getSuggestionsV2({ int limit }) async
    test('test getSuggestionsV2', () async {
      // TODO
    });
  });
}
