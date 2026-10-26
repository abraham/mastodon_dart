import 'package:test/test.dart';
import 'package:mastodon/mastodon.dart';

// tests for InstanceRegistrations
void main() {
  final InstanceRegistrations? instance = /* InstanceRegistrations(...) */ null;
  // TODO add properties to the entity

  group(InstanceRegistrations, () {
    // Whether registrations require moderator approval.
    // bool approvalRequired
    test('to test the property `approvalRequired`', () async {
      // TODO
    });

    // Whether registrations are enabled. This will be `false` if `registrations_mode` is `none` or if the server is in `single_user_mode`.
    // bool enabled
    test('to test the property `enabled`', () async {
      // TODO
    });

    // A custom message to be shown when registrations are closed. Will be `null` if registrations are open.
    // String message
    test('to test the property `message`', () async {
      // TODO
    });

    // A minimum age required to register, if configured.
    // int minAge
    test('to test the property `minAge`', () async {
      // TODO
    });

    // Signals whether the OAuth registration flow (`prompt=create`) is supported.
    // bool oauth
    test('to test the property `oauth`', () async {
      // TODO
    });

    // Whether registrations require the user to provide a reason for joining. Only applicable when `registrations[approval_required]` is true.
    // bool reasonRequired
    test('to test the property `reasonRequired`', () async {
      // TODO
    });

    // A custom URL for account registration, when using external authentication.
    // Uri url
    test('to test the property `url`', () async {
      // TODO
    });
  });
}
