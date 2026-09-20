import 'package:test/test.dart';
import 'package:mastodon/mastodon.dart';

// tests for UpdateStatusRequest
void main() {
  final UpdateStatusRequest? instance = /* UpdateStatusRequest(...) */ null;
  // TODO add properties to the entity

  group(UpdateStatusRequest, () {
    // ISO 639-1 language code for the status.
    // String language
    test('to test the property `language`', () async {
      // TODO
    });

    // Each array includes id, description, and focus.
    // List<String> mediaAttributesLeftSquareBracketRightSquareBracket
    test(
      'to test the property `mediaAttributesLeftSquareBracketRightSquareBracket`',
      () async {
        // TODO
      },
    );

    // Include Attachment IDs to be attached as media. If provided, `status` becomes optional, and `poll` cannot be used.
    // List<String> mediaIds
    test('to test the property `mediaIds`', () async {
      // TODO
    });

    // UpdateStatusRequestPoll poll
    test('to test the property `poll`', () async {
      // TODO
    });

    // String (Enumerable, oneOf). Sets who is allowed to quote the status. Ignored if `visibility` is `private` or `direct`, in which case the policy will always be set to `nobody`. Changing the policy does not invalidate past quotes. `public` = Anyone is allowed to quote this status and will have their quote automatically accepted, unless they are blocked. `followers` = Only followers and the author are allowed to quote this status, and will have their quote automatically accepted. `nobody` = Only the author is allowed to quote the status.
    // String quoteApprovalPolicy
    test('to test the property `quoteApprovalPolicy`', () async {
      // TODO
    });

    // Whether the status should be marked as sensitive.
    // bool sensitive
    test('to test the property `sensitive`', () async {
      // TODO
    });

    // The plain text subject or content warning of the status.
    // String spoilerText
    test('to test the property `spoilerText`', () async {
      // TODO
    });

    // The plain text content of the status.
    // String status
    test('to test the property `status`', () async {
      // TODO
    });
  });
}
