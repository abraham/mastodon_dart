import 'package:test/test.dart';
import 'package:mastodon/mastodon.dart';

// tests for UpdateListRequest
void main() {
  final UpdateListRequest? instance = /* UpdateListRequest(...) */ null;
  // TODO add properties to the entity

  group(UpdateListRequest, () {
    // The title of the list to be created.
    // String title
    test('to test the property `title`', () async {
      // TODO
    });

    // Whether members of this list need to get removed from the “Home” feed.
    // bool exclusive
    test('to test the property `exclusive`', () async {
      // TODO
    });

    // One of `followed`, `list`, or `none`. Defaults to `list`.
    // ListRepliesPolicyEnum repliesPolicy (default value: ListRepliesPolicyEnum.list)
    test('to test the property `repliesPolicy`', () async {
      // TODO
    });
  });
}
