import 'package:test/test.dart';
import 'package:mastodon/mastodon.dart';

/// tests for StatusesApi
void main() {
  final instance = Mastodon().getStatusesApi();

  group(StatusesApi, () {
    // Post a new status
    //
    // Publish a status with the given parameters.  Version history:  0.0.0 - added\\ 2.7.0 - `scheduled_at` added\\ 2.8.0 - `poll` added\\ 4.5.0 (`mastodon` [API version] 7) - `quoted_status_id` and `quote_approval_policy` added
    //
    //Future<CreateStatus200Response> createStatus(CreateStatusRequest createStatusRequest, { Object idempotencyKey }) async
    test('test createStatus', () async {
      // TODO
    });

    // Delete a status
    //
    // Delete one of your own statuses.  Version history:  0.0.0 - added\\ 2.9.0 - return source properties, for use with delete and redraft\\ 4.4.0 (`mastodon` [API version] 4) - added `delete_media` optional parameter
    //
    //Future<Status> deleteStatus(String id, { bool deleteMedia }) async
    test('test deleteStatus', () async {
      // TODO
    });

    // View a single status
    //
    // Obtain information about a status.  Version history:  0.0.0 - added\\ 2.7.0 - public statuses no longer require token
    //
    //Future<Status> getStatus(String id) async
    test('test getStatus', () async {
      // TODO
    });

    // Get parent and child statuses in context
    //
    // View statuses above and below this status in the thread.  Version history:  0.0.0 - added\\ 4.0.0 - limit unauthenticated requests\\ 4.5.0 - added experimental `Mastodon-Async-Refresh` header
    //
    //Future<Context> getStatusContext(String id) async
    test('test getStatusContext', () async {
      // TODO
    });

    // See who favourited a status
    //
    // View who favourited a given status.  Version history:  0.0.0 - added
    //
    //Future<List<Account>> getStatusFavouritedBy(String id, { int limit, String maxId, String sinceId }) async
    test('test getStatusFavouritedBy', () async {
      // TODO
    });

    // View edit history of a status
    //
    // Get all known versions of a status, including the initial and current states.  Version history:  3.5.0 - added
    //
    //Future<List<StatusEdit>> getStatusHistory(String id) async
    test('test getStatusHistory', () async {
      // TODO
    });

    // See quotes of a status
    //
    // View quotes of a status.  Version history:  4.5.0 (`mastodon` [API version] 7) - added
    //
    //Future<List<Status>> getStatusQuotes(String id, { int limit, String maxId, String sinceId }) async
    test('test getStatusQuotes', () async {
      // TODO
    });

    // See who boosted a status
    //
    // View who boosted a given status.  Version history:  0.0.0 - added
    //
    //Future<List<Account>> getStatusRebloggedBy(String id, { int limit, String maxId, String sinceId }) async
    test('test getStatusRebloggedBy', () async {
      // TODO
    });

    // View status source
    //
    // Obtain the source properties for a status so that it can be edited.  Version history:  3.5.0 - added
    //
    //Future<StatusSource> getStatusSource(String id) async
    test('test getStatusSource', () async {
      // TODO
    });

    // View multiple statuses
    //
    // Obtain information about multiple statuses.  Version history:  4.3.0 - added
    //
    //Future<List<Status>> getStatuses({ List<String> id }) async
    test('test getStatuses', () async {
      // TODO
    });

    // Bookmark a status
    //
    // Privately bookmark a status.  Version history:  3.1.0 - added
    //
    //Future<Status> postStatusBookmark(String id) async
    test('test postStatusBookmark', () async {
      // TODO
    });

    // Favourite a status
    //
    // Add a status to your favourites list.  Version history:  0.0.0 - added
    //
    //Future<Status> postStatusFavourite(String id) async
    test('test postStatusFavourite', () async {
      // TODO
    });

    // Mute a conversation
    //
    // Do not receive notifications for the thread that this status is part of. Must be a thread in which you are a participant.  Version history:  1.4.2 - added
    //
    //Future<Status> postStatusMute(String id) async
    test('test postStatusMute', () async {
      // TODO
    });

    // Pin status to profile
    //
    // Feature one of your own public statuses at the top of your profile.  Version history:  1.6.0 - added\\ 3.5.0 - you can now pin private posts
    //
    //Future<Status> postStatusPin(String id) async
    test('test postStatusPin', () async {
      // TODO
    });

    // Revoke a quote post
    //
    // Revoke quote authorization of status `quoting_status_id`, detaching status `id`.  Version history:  4.5.0 (`mastodon` [API version] 7) - added
    //
    //Future<Status> postStatusQuoteRevoke(String id, String quotingStatusId) async
    test('test postStatusQuoteRevoke', () async {
      // TODO
    });

    // Boost a status
    //
    // Reshare a status on your own profile.  Version history:  0.0.0 - added\\ 2.8.0 - add `visibility` parameter
    //
    //Future<Status> postStatusReblog(String id, { PostStatusReblogRequest postStatusReblogRequest }) async
    test('test postStatusReblog', () async {
      // TODO
    });

    // Translate a status
    //
    // Translate the status content into some language. Only statuses with Public and Unlisted visibility can be translated.  Version history:  4.0.0 - added
    //
    //Future<Translation> postStatusTranslate(String id, { PostStatusTranslateRequest postStatusTranslateRequest }) async
    test('test postStatusTranslate', () async {
      // TODO
    });

    // Undo bookmark of a status
    //
    // Remove a status from your private bookmarks.  Version history:  3.1.0 - added
    //
    //Future<Status> postStatusUnbookmark(String id) async
    test('test postStatusUnbookmark', () async {
      // TODO
    });

    // Undo favourite of a status
    //
    // Remove a status from your favourites list.  Version history:  0.0.0 - added
    //
    //Future<Status> postStatusUnfavourite(String id) async
    test('test postStatusUnfavourite', () async {
      // TODO
    });

    // Unmute a conversation
    //
    // Start receiving notifications again for the thread that this status is part of.  Version history:  1.4.2 - added
    //
    //Future<Status> postStatusUnmute(String id) async
    test('test postStatusUnmute', () async {
      // TODO
    });

    // Unpin status from profile
    //
    // Unfeature a status from the top of your profile.  Version history:  1.6.0 - added
    //
    //Future<Status> postStatusUnpin(String id) async
    test('test postStatusUnpin', () async {
      // TODO
    });

    // Undo boost of a status
    //
    // Undo a reshare of a status.  Version history:  0.0.0 - added
    //
    //Future<Status> postStatusUnreblog(String id) async
    test('test postStatusUnreblog', () async {
      // TODO
    });

    // Edit a status
    //
    // Edit a given status to change its text, sensitivity, media attachments, or poll. Notes:  Version history:  3.5.0 - added\\ 4.0.0 - add `language`\\ 4.5.0 (`mastodon` [API version] 7) - add `quote_approval_policy`
    //
    //Future<Status> updateStatus(String id, { UpdateStatusRequest updateStatusRequest }) async
    test('test updateStatus', () async {
      // TODO
    });

    // Edit a status' interaction policies
    //
    // Edit a given status to change its interaction policies. Currently, this means changing its quote approval policy.  Version history:  4.5.0 (`mastodon` [API version] 7) - added
    //
    //Future<Status> updateStatusInteractionPolicy(String id, { UpdateStatusInteractionPolicyRequest updateStatusInteractionPolicyRequest }) async
    test('test updateStatusInteractionPolicy', () async {
      // TODO
    });
  });
}
