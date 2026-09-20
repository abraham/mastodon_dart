import 'package:test/test.dart';
import 'package:mastodon/mastodon.dart';

/// tests for ProfileApi
void main() {
  final instance = Mastodon().getProfileApi();

  group(ProfileApi, () {
    // Delete profile avatar
    //
    // Version history:  4.2.0 - added  Deletes the avatar associated with the user's profile.
    //
    //Future<CredentialAccount> deleteProfileAvatar() async
    test('test deleteProfileAvatar', () async {
      // TODO
    });

    // Delete profile header
    //
    // Version history:  4.2.0 - added  Deletes the header image associated with the user's profile.
    //
    //Future<CredentialAccount> deleteProfileHeader() async
    test('test deleteProfileHeader', () async {
      // TODO
    });

    // Get current user profile
    //
    // Version history:  4.6.0 (`mastodon` [API version] 8) - added\\ 4.6.0 (`mastodon` [API version] 9) - added `avatar_description` and `header_description`
    //
    //Future<Profile> getProfile() async
    test('test getProfile', () async {
      // TODO
    });

    // Update current user profile
    //
    // Update the current user's profile.  Version history:  4.6.0 (`mastodon` [API version] 8) - added
    //
    //Future<Profile> patchProfile({ PatchProfileRequest patchProfileRequest }) async
    test('test patchProfile', () async {
      // TODO
    });
  });
}
