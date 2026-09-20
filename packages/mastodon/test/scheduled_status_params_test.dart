import 'package:test/test.dart';
import 'package:mastodon/mastodon.dart';

// tests for ScheduledStatusParams
void main() {
  final ScheduledStatusParams? instance = /* ScheduledStatusParams(...) */ null;
  // TODO add properties to the entity

  group(ScheduledStatusParams, () {
    // Internal ID of the Application that posted the status. Provided for historical compatibility only and can be ignored.
    // int applicationId
    test('to test the property `applicationId`', () async {
      // TODO
    });

    // Text to be used as status content.
    // String text
    test('to test the property `text`', () async {
      // TODO
    });

    // The visibility that the status will have once it is posted.
    // StatusVisibilityEnum visibility
    test('to test the property `visibility`', () async {
      // TODO
    });

    // Whether status creation is subject to rate limiting. Provided for historical compatibility only and can be ignored.
    // bool withRateLimit
    test('to test the property `withRateLimit`', () async {
      // TODO
    });

    // Idempotency key to prevent duplicate statuses.
    // String idempotency
    test('to test the property `idempotency`', () async {
      // TODO
    });

    // ID of the Status that will be replied to.
    // int inReplyToId
    test('to test the property `inReplyToId`', () async {
      // TODO
    });

    // The language that will be used for the status.
    // String language
    test('to test the property `language`', () async {
      // TODO
    });

    // IDs of the MediaAttachments that will be attached to the status.
    // List<String> mediaIds
    test('to test the property `mediaIds`', () async {
      // TODO
    });

    // ScheduledStatusParamsPoll poll
    test('to test the property `poll`', () async {
      // TODO
    });

    // The quote policy for the Status.
    // ScheduledStatusParamsQuoteApprovalPolicyEnum quoteApprovalPolicy
    test('to test the property `quoteApprovalPolicy`', () async {
      // TODO
    });

    // ID of the Status being quoted.
    // String quotedStatusId
    test('to test the property `quotedStatusId`', () async {
      // TODO
    });

    // When the status will be scheduled. This will be null because the status is only scheduled once.
    // Object scheduledAt
    test('to test the property `scheduledAt`', () async {
      // TODO
    });

    // Whether the status will be marked as sensitive.
    // bool sensitive
    test('to test the property `sensitive`', () async {
      // TODO
    });

    // The text of the content warning or summary for the status.
    // String spoilerText
    test('to test the property `spoilerText`', () async {
      // TODO
    });
  });
}
