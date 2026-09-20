import 'package:test/test.dart';
import 'package:mastodon/mastodon.dart';

/// tests for AccountsApi
void main() {
  final instance = Mastodon().getAccountsApi();

  group(AccountsApi, () {
    // Register an account
    //
    // Creates a user and account records. Returns an account access token for the app that initiated the request. The app should save this token for later, and should wait for the user to confirm their account by clicking a link in their email inbox.  Version history:  2.7.0 - added\\ 3.0.0 - added `reason` parameter\\ 3.4.0 - added `details` to failure response\\ 4.4.0 - added `date_of_birth` parameter
    //
    //Future<Token> createAccount(CreateAccountRequest createAccountRequest) async
    test('test createAccount', () async {
      // TODO
    });

    // Get account
    //
    // View information about a profile.  Version history:  0.0.0 - added\\ 2.4.0 - returns 410 if account is suspended\\ 3.3.0 - returns an Account with `suspended: true` instead of 410
    //
    //Future<Account> getAccount(String id) async
    test('test getAccount', () async {
      // TODO
    });

    // Get all Collections from a given account
    //
    // Version history:  4.6.0 (`mastodon` [API version] 10) - added
    //
    //Future<Collections> getAccountCollections(String accountId, { int limit, int offset }) async
    test('test getAccountCollections', () async {
      // TODO
    });

    // Get featured accounts
    //
    // Accounts that the user is currently featuring on their profile.  Version history:  4.4.0 - added
    //
    //Future<List<Account>> getAccountEndorsements(String id, { int limit, String maxId, String sinceId }) async
    test('test getAccountEndorsements', () async {
      // TODO
    });

    // Find familiar followers
    //
    // Obtain a list of all accounts that follow a given account, filtered for accounts you follow.  Version history:  3.5.0 - added
    //
    //Future<List<FamiliarFollowers>> getAccountFamiliarFollowers({ List<String> id }) async
    test('test getAccountFamiliarFollowers', () async {
      // TODO
    });

    // Get account's featured tags
    //
    // Tags featured by this account.  Version history:  3.3.0 - added
    //
    //Future<List<FeaturedTag>> getAccountFeaturedTags(String id) async
    test('test getAccountFeaturedTags', () async {
      // TODO
    });

    // Get account's followers
    //
    // Accounts which follow the given account, if network is not hidden by the account owner.  Version history:  0.0.0 - added\\ 3.3.0 - both `min_id` and `max_id` can be used at the same time now\\ 4.0.0 - no longer requires an app token + `read:accounts`
    //
    //Future<List<Account>> getAccountFollowers(String id, { int limit, String maxId, String minId, String sinceId }) async
    test('test getAccountFollowers', () async {
      // TODO
    });

    // Get account's following
    //
    // Accounts which the given account is following, if network is not hidden by the account owner.  Version history:  0.0.0 - added\\ 3.3.0 - both `min_id` and `max_id` can be used at the same time now\\ 4.0.0 - no longer requires an app token + `read:accounts`
    //
    //Future<List<Account>> getAccountFollowing(String id, { int limit, String maxId, String minId, String sinceId }) async
    test('test getAccountFollowing', () async {
      // TODO
    });

    // Identity proofs
    //
    // Version history:  2.8.0 - added\\ 3.5.0 - deprecated. now returns an empty array.
    //
    //Future<List<IdentityProof>> getAccountIdentityProofs(String id) async
    test('test getAccountIdentityProofs', () async {
      // TODO
    });

    // Get all Collections the current account is featured in
    //
    // Version history:  4.6.0 (`mastodon` [API version] 10) - added
    //
    //Future<Collections> getAccountInCollections(String accountId, { int limit, int offset }) async
    test('test getAccountInCollections', () async {
      // TODO
    });

    // Get lists containing this account
    //
    // User lists that you have added this account to.  Version history:  2.1.0 - added
    //
    //Future<List<List>> getAccountLists(String id) async
    test('test getAccountLists', () async {
      // TODO
    });

    // Lookup account ID from WebFinger address
    //
    // Quickly lookup a username to see if it is available, skipping WebFinger resolution.  Version history:  3.4.0 - added
    //
    //Future<Account> getAccountLookup(String acct) async
    test('test getAccountLookup', () async {
      // TODO
    });

    // Check relationships to other accounts
    //
    // Find out whether a given account is followed, blocked, muted, etc.  Version history:  0.0.0 - added\\ 4.3.0 - added `with_suspended` parameter 4.6.0 - added `muting_expires_at`
    //
    //Future<List<Relationship>> getAccountRelationships({ List<String> id, bool withSuspended }) async
    test('test getAccountRelationships', () async {
      // TODO
    });

    // Search for matching accounts
    //
    // Search for matching accounts by username or display name.  Version history:  0.0.0 - added\\ 2.8.0 - add `limit`, `offset` and `following`
    //
    //Future<List<Account>> getAccountSearch(String q, { bool following, int limit, int offset, bool resolve }) async
    test('test getAccountSearch', () async {
      // TODO
    });

    // Get account's statuses
    //
    // Statuses posted to the given account.  Version history:  0.0.0 - added\\ 1.4.2 - add `only_media` and `exclude_replies`\\ 1.6.0 - add `pinned`\\ 2.6.0 - add `min_id`\\ 2.7.0 - add `exclude_reblogs` and allow unauthed use\\ 2.8.0 - add `tagged` parameter\\ 3.3.0 - both `min_id` and `max_id` can be used at the same time now
    //
    //Future<List<Status>> getAccountStatuses(String id, { bool excludeReblogs, bool excludeReplies, int limit, String maxId, String minId, bool onlyMedia, bool pinned, String sinceId, String tagged }) async
    test('test getAccountStatuses', () async {
      // TODO
    });

    // Verify account credentials
    //
    // Test to make sure that the user token works.  Version history:  0.0.0 - added\\ 4.3.0 - added `profile` scope
    //
    //Future<CredentialAccount> getAccountVerifyCredentials() async
    test('test getAccountVerifyCredentials', () async {
      // TODO
    });

    // Get multiple accounts
    //
    // View information about multiple profiles.  Version history:  4.3.0 - added
    //
    //Future<List<Account>> getAccounts({ List<String> id }) async
    test('test getAccounts', () async {
      // TODO
    });

    // Update account credentials
    //
    // Update the user's display and preferences.  Version history:  1.1.1 - added\\ 2.3.0 - added `locked` parameter\\ 2.4.0 - added `source[privacy,sensitive]` parameters\\ 2.4.2 - added `source[language]` parameter\\ 2.7.0 - added `discoverable` parameter\\ 4.1.0 - added `hide_collections` parameter\\ 4.2.0 - added `indexable` parameter\\ 4.4.0 (`mastodon` [API version] 3) - added `attribution_domains` parameter\\ 4.5.0 (`mastodon` [API version] 7) - added `quote_policy` parameter\\ 4.6.1 (`mastodon` [API version] 11) - added `avatar_description` and `header_description` parameter
    //
    //Future<CredentialAccount> patchAccountUpdateCredentials({ PatchAccountUpdateCredentialsRequest patchAccountUpdateCredentialsRequest }) async
    test('test patchAccountUpdateCredentials', () async {
      // TODO
    });

    // Block account
    //
    // [Blocks](https://docs.joinmastodon.org/user/moderating/#block) the given account.  Version history:  0.0.0 - added\\ 3.5.0 - deprecated `follow` scope. now additionally accepts `write`
    //
    //Future<Relationship> postAccountBlock(String id) async
    test('test postAccountBlock', () async {
      // TODO
    });

    // Feature account on your profile
    //
    // Add the given account to the user's featured profiles.  Version history:  4.4.0 - added
    //
    //Future<Relationship> postAccountEndorse(String id) async
    test('test postAccountEndorse', () async {
      // TODO
    });

    // Follow account
    //
    // Follow the given account. Can also be used to update whether to show reblogs or enable notifications.  Version history:  0.0.0 - added\\ 3.3.0 - added `notify`\\ 3.5.0 - deprecated `follow` scope. now additionally accepts `write`\\ 4.0.0 - added `languages`
    //
    //Future<Relationship> postAccountFollow(String id, { PostAccountFollowRequest postAccountFollowRequest }) async
    test('test postAccountFollow', () async {
      // TODO
    });

    // Mute account
    //
    // Mute the given account. Clients should filter statuses and notifications from this account, if received (e.g. due to a boost in the Home timeline).  Version history:  0.0.0 - added\\ 3.3.0 - added `duration`\\ 3.5.0 - deprecated `follow` scope. now additionally accepts `write`
    //
    //Future<Relationship> postAccountMute(String id, { PostAccountMuteRequest postAccountMuteRequest }) async
    test('test postAccountMute', () async {
      // TODO
    });

    // Set private note on profile
    //
    // Sets a private note on a user.  Version history:  3.2.0 - added
    //
    //Future<Relationship> postAccountNote(String id, { PostAccountNoteRequest postAccountNoteRequest }) async
    test('test postAccountNote', () async {
      // TODO
    });

    // Feature account on your profile
    //
    // Add the given account to the user's featured profiles. (Featured profiles are currently shown on the user's own public profile.)  Version history:  2.5.0 - added\\ 4.0.0 - calling this method is now idempotent\\ 4.4.0 - deprecated in favor of `/api/v1/accounts/:id/endorse`
    //
    //Future<Relationship> postAccountPin(String id) async
    test('test postAccountPin', () async {
      // TODO
    });

    // Remove account from followers
    //
    // Remove the given account from your followers.  Version history:  3.5.0 - added
    //
    //Future<Relationship> postAccountRemoveFromFollowers(String id) async
    test('test postAccountRemoveFromFollowers', () async {
      // TODO
    });

    // Unblock account
    //
    // Unblock the given account.  Version history:  0.0.0 - added\\ 3.5.0 - deprecated `follow` scope. now additionally accepts `write`
    //
    //Future<Relationship> postAccountUnblock(String id) async
    test('test postAccountUnblock', () async {
      // TODO
    });

    // Unfeature account from profile
    //
    // Remove the given account from the user's featured profiles.  Version history:  4.4.0 - added
    //
    //Future<Relationship> postAccountUnendorse(String id) async
    test('test postAccountUnendorse', () async {
      // TODO
    });

    // Unfollow account
    //
    // Unfollow the given account.  Version history:  0.0.0 - added\\ 3.5.0 - deprecated `follow` scope. now additionally accepts `write`
    //
    //Future<Relationship> postAccountUnfollow(String id) async
    test('test postAccountUnfollow', () async {
      // TODO
    });

    // Unmute account
    //
    // Unmute the given account.  Version history:  0.0.0 - added\\ 3.5.0 - deprecated `follow` scope. now additionally accepts `write`
    //
    //Future<Relationship> postAccountUnmute(String id) async
    test('test postAccountUnmute', () async {
      // TODO
    });

    // Unfeature account from profile
    //
    // Remove the given account from the user's featured profiles.  Version history:  2.5.0 - added\\ 4.4.0 - deprecated in favor of `/api/v1/accounts/:id/unendorse`
    //
    //Future<Relationship> postAccountUnpin(String id) async
    test('test postAccountUnpin', () async {
      // TODO
    });
  });
}
