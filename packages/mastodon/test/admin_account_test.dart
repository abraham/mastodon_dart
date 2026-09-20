import 'package:test/test.dart';
import 'package:mastodon/mastodon.dart';

// tests for AdminAccount
void main() {
  final AdminAccount? instance = /* AdminAccount(...) */ null;
  // TODO add properties to the entity

  group(AdminAccount, () {
    // User-level information about the account.
    // Account account
    test('to test the property `account`', () async {
      // TODO
    });

    // Whether the account is currently approved.
    // bool approved
    test('to test the property `approved`', () async {
      // TODO
    });

    // Whether the account has confirmed their email address.
    // bool confirmed
    test('to test the property `confirmed`', () async {
      // TODO
    });

    // When the account was first discovered.
    // DateTime createdAt
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // Whether the account is currently disabled.
    // bool disabled
    test('to test the property `disabled`', () async {
      // TODO
    });

    // The email address associated with the account.
    // String email
    test('to test the property `email`', () async {
      // TODO
    });

    // The ID of the account in the database.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // All known IP addresses associated with this account.
    // List<AdminIp> ips
    test('to test the property `ips`', () async {
      // TODO
    });

    // The locale of the account.
    // String locale
    test('to test the property `locale`', () async {
      // TODO
    });

    // The current role of the account.
    // Role role
    test('to test the property `role`', () async {
      // TODO
    });

    // Whether the account is currently marked sensitive.
    // bool sensitized
    test('to test the property `sensitized`', () async {
      // TODO
    });

    // Whether the account is currently silenced.
    // bool silenced
    test('to test the property `silenced`', () async {
      // TODO
    });

    // Whether the account is currently suspended.
    // bool suspended
    test('to test the property `suspended`', () async {
      // TODO
    });

    // The username of the account.
    // String username
    test('to test the property `username`', () async {
      // TODO
    });

    // The ID of the [Application](https://docs.joinmastodon.org/entities/application/) that created this account, if applicable.
    // String createdByApplicationId
    test('to test the property `createdByApplicationId`', () async {
      // TODO
    });

    // The domain of the account, if it is remote.
    // String domain
    test('to test the property `domain`', () async {
      // TODO
    });

    // The reason given when requesting an invite (for instances that require manual approval of registrations)
    // String inviteRequest
    test('to test the property `inviteRequest`', () async {
      // TODO
    });

    // The ID of the [Account](https://docs.joinmastodon.org/entities/account/) that invited this user, if applicable.
    // String invitedByAccountId
    test('to test the property `invitedByAccountId`', () async {
      // TODO
    });

    // The IP address last used to login to this account.
    // String ip
    test('to test the property `ip`', () async {
      // TODO
    });
  });
}
