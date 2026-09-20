import 'package:test/test.dart';
import 'package:mastodon/mastodon.dart';

// tests for PatchProfileRequest
void main() {
  final PatchProfileRequest? instance = /* PatchProfileRequest(...) */ null;
  // TODO add properties to the entity

  group(PatchProfileRequest, () {
    // Domains of websites allowed to credit the account. Maximum of 10 domains.
    // List<String> attributionDomains
    test('to test the property `attributionDomains`', () async {
      // TODO
    });

    // Avatar image encoded using `multipart/form-data`
    // String avatar
    test('to test the property `avatar`', () async {
      // TODO
    });

    // A plain-text description of the avatar, for accessibility purposes.
    // String avatarDescription
    test('to test the property `avatarDescription`', () async {
      // TODO
    });

    // Whether the account has a bot flag.
    // bool bot
    test('to test the property `bot`', () async {
      // TODO
    });

    // Whether the account should be shown in the profile directory and be available for other discovery features, like being included in Collections.
    // bool discoverable
    test('to test the property `discoverable`', () async {
      // TODO
    });

    // The display name to use for the profile.
    // String displayName
    test('to test the property `displayName`', () async {
      // TODO
    });

    // The profile fields to be set. Each hash includes `name` and `value`. By default, max 4 fields (specified in [Instance#max_profile_fields]).
    // Map<String, PatchAccountUpdateCredentialsRequestFieldsAttributesValue> fieldsAttributes
    test('to test the property `fieldsAttributes`', () async {
      // TODO
    });

    // Header image encoded using `multipart/form-data`
    // String header
    test('to test the property `header`', () async {
      // TODO
    });

    // A plain-text description of the header, for accessibility purposes.
    // String headerDescription
    test('to test the property `headerDescription`', () async {
      // TODO
    });

    // Whether to hide followers and followed accounts. This field predates the Collections feature and has nothing to do with it, despite the name.
    // bool hideCollections
    test('to test the property `hideCollections`', () async {
      // TODO
    });

    // Whether public posts should be searchable to anyone.
    // bool indexable
    test('to test the property `indexable`', () async {
      // TODO
    });

    // Whether manual approval of follow requests is required.
    // bool locked
    test('to test the property `locked`', () async {
      // TODO
    });

    // The account bio.
    // String note
    test('to test the property `note`', () async {
      // TODO
    });

    // Whether a “Featured” tab should be shown on this profile.
    // bool showFeatured
    test('to test the property `showFeatured`', () async {
      // TODO
    });

    // Whether a “Media” tab with media attachments should be shown on this profile.
    // bool showMedia
    test('to test the property `showMedia`', () async {
      // TODO
    });

    // Whether media attachments in replies should be shown in the “Media” tab of this profile.
    // bool showMediaReplies
    test('to test the property `showMediaReplies`', () async {
      // TODO
    });
  });
}
