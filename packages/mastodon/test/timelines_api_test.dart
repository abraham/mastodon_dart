import 'package:test/test.dart';
import 'package:mastodon/mastodon.dart';

/// tests for TimelinesApi
void main() {
  final instance = Mastodon().getTimelinesApi();

  group(TimelinesApi, () {
    // View direct timeline
    //
    // View statuses with a \"direct\" privacy, from your account or in your notifications.  Version history:  x.x.x - added\\ 2.6.0 - add `min_id`. deprecated in favor of [Conversations API]\\ 3.0.0 - removed
    //
    //Future<List<Status>> getTimelineDirect({ int limit, String maxId, String minId, String sinceId }) async
    test('test getTimelineDirect', () async {
      // TODO
    });

    // View home timeline
    //
    // View statuses from followed users and hashtags.  Version history:  0.0.0 - added\\ 2.6.0 - add `min_id`\\ 3.3.0 - both `min_id` and `max_id` can be used at the same time now\\ 4.0.0 - as users can now follow hashtags, statuses from non-followed users may appear in the timeline
    //
    //Future<List<Status>> getTimelineHome({ int limit, String maxId, String minId, String sinceId }) async
    test('test getTimelineHome', () async {
      // TODO
    });

    // View link timeline
    //
    // View public statuses containing a link to the specified currently-trending article. This only lists statuses from people who have opted in to discoverability features.  Version history:  4.3.0 - added\\ 4.5.0 - add [access control settings]
    //
    //Future<List<Status>> getTimelineLink(String url, { int limit, String maxId, String minId, String sinceId }) async
    test('test getTimelineLink', () async {
      // TODO
    });

    // View list timeline
    //
    // View statuses in the given list timeline.  Version history:  2.1.0 - added\\ 2.6.0 - add `min_id`\\ 3.3.0 - both `min_id` and `max_id` can be used at the same time now
    //
    //Future<List<Status>> getTimelineList(String listId, { int limit, String maxId, String minId, String sinceId }) async
    test('test getTimelineList', () async {
      // TODO
    });

    // View public timeline
    //
    // View public statuses.  Version history:  0.0.0 - added\\ 2.3.0 - added `only_media`\\ 2.6.0 - add `min_id`\\ 3.0.0 - auth is required if public preview is disabled\\ 3.1.4 - added `remote`\\ 3.3.0 - both `min_id` and `max_id` can be used at the same time now\\ 4.5.0 - add [access control settings]
    //
    //Future<List<Status>> getTimelinePublic({ int limit, bool local, String maxId, String minId, bool onlyMedia, bool remote, String sinceId }) async
    test('test getTimelinePublic', () async {
      // TODO
    });

    // View hashtag timeline
    //
    // View public statuses containing the given hashtag.  Version history:  0.0.0 - added\\ 2.3.0 - added `only_media`\\ 2.6.0 - add `min_id`\\ 2.7.0 - add `any[]`, `all[]`, `none[]` for additional tags\\ 3.0.0 - auth is required if public preview is disabled\\ 3.3.0 - both `min_id` and `max_id` can be used at the same time now. add `remote`\\ 4.5.0 - add [access control settings]
    //
    //Future<List<Status>> getTimelineTagByHashtag(String hashtag, { List<String> all, List<String> any, int limit, bool local, String maxId, String minId, List<String> none, bool onlyMedia, bool remote, String sinceId }) async
    test('test getTimelineTagByHashtag', () async {
      // TODO
    });
  });
}
