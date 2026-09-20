import 'package:test/test.dart';
import 'package:mastodon/mastodon.dart';

// tests for ShallowQuote
void main() {
  final ShallowQuote? instance = /* ShallowQuote(...) */ null;
  // TODO add properties to the entity

  group(ShallowQuote, () {
    // The state of the quote. Unknown values should be treated as `unauthorized`.
    // QuoteStateEnum state
    test('to test the property `state`', () async {
      // TODO
    });

    // The identifier of the status being quoted. This will be `null`, unless the `state` attribute is one of `accepted`, `blocked_account`, `blocked_domain` or `muted_account`, or the wrapping [Status](https://docs.joinmastodon.org/entities/status/) entity has been obtained by calling `DELETE /api/v1/statuses/:id`.
    // String quotedStatusId
    test('to test the property `quotedStatusId`', () async {
      // TODO
    });
  });
}
