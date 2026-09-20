import 'package:test/test.dart';
import 'package:mastodon/mastodon.dart';

// tests for MediaStatus
void main() {
  final MediaStatus? instance = /* MediaStatus(...) */ null;
  // TODO add properties to the entity

  group(MediaStatus, () {
    // Include Attachment IDs to be attached as media. If provided, `status` becomes optional, and `poll` cannot be used.
    // List<String> mediaIds
    test('to test the property `mediaIds`', () async {
      // TODO
    });

    // ID of the status being replied to, if status is a reply.
    // String inReplyToId
    test('to test the property `inReplyToId`', () async {
      // TODO
    });

    // ISO 639-1 language code for this status.
    // String language
    test('to test the property `language`', () async {
      // TODO
    });

    // String (Enumerable, oneOf). Sets who is allowed to quote the status. When omitted, the user's [default setting] will be used instead. Ignored if `visibility` is `private` or `direct`, in which case the policy will always be set to `nobody`. `public` = Anyone is allowed to quote this status and will have their quote automatically accepted, unless they are blocked. `followers` = Only followers and the author are allowed to quote this status, and will have their quote automatically accepted. `nobody` = Only the author is allowed to quote the status.
    // String quoteApprovalPolicy
    test('to test the property `quoteApprovalPolicy`', () async {
      // TODO
    });

    // ID of the status being quoted, if any. Will raise an error if the status does not exist, the author does not have access to it, or quoting is denied by Mastodon's understanding of the attached quote policy. All posts except Private Mentions (`direct` visibility) are quotable by their author. Quoting a `private` post will restrict the quoting post's `visibility` to `private` or `direct` (if the given `visibility` is `public` or `unlisted`, `private` will be used instead). An error will be returned when making a quote post with `direct` visibility and the quote author is not explicitly mentioned. If the `status` text doesn't include a link to the quoted post, Mastodon will prepend a `<p class=\"quote-inline\">RE: <a href=\"…\">…</a></p>` paragraph for backward compatibility (such a paragraph will be hidden by Mastodon's web interface).
    // String quotedStatusId
    test('to test the property `quotedStatusId`', () async {
      // TODO
    });

    // [Datetime] at which to schedule a status. Providing this parameter will cause ScheduledStatus to be returned instead of Status. Must be at least 5 minutes in the future.
    // DateTime scheduledAt
    test('to test the property `scheduledAt`', () async {
      // TODO
    });

    // Mark status and attached media as sensitive? Defaults to false.
    // bool sensitive (default value: false)
    test('to test the property `sensitive`', () async {
      // TODO
    });

    // Text to be shown as a warning or subject before the actual content. Statuses are generally collapsed behind this field.
    // String spoilerText
    test('to test the property `spoilerText`', () async {
      // TODO
    });

    // Sets the visibility of the posted status to `public`, `unlisted`, `private`, `direct`.
    // StatusVisibilityEnum visibility
    test('to test the property `visibility`', () async {
      // TODO
    });

    // The text content of the status. If `media_ids` is provided, this becomes optional. Attaching a `poll` is optional while `status` is provided.
    // String status
    test('to test the property `status`', () async {
      // TODO
    });
  });
}
