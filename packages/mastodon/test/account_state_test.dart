import 'package:test/test.dart';
import 'package:mastodon/mastodon.dart';

// tests for AccountState
void main() {
  final AccountState? instance = /* AccountState(...) */ null;
  // TODO add properties to the entity

  group(AccountState, () {
    // Whether the current account has been approved by a moderator.
    // bool approved
    test('to test the property `approved`', () async {
      // TODO
    });

    // Whether the current account has confirmed their email address.
    // bool confirmed
    test('to test the property `confirmed`', () async {
      // TODO
    });

    // Whether the current account is fully usable.
    // bool functional
    test('to test the property `functional`', () async {
      // TODO
    });

    // Localized string explaining why the account is not functional, if applicable.
    // String error
    test('to test the property `error`', () async {
      // TODO
    });

    // Reason why the account is not functional, if applicable. Expressed as a code. Additional reasons can be added in the future.
    // String errorCode
    test('to test the property `errorCode`', () async {
      // TODO
    });
  });
}
