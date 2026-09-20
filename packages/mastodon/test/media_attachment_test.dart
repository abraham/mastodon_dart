import 'package:test/test.dart';
import 'package:mastodon/mastodon.dart';

// tests for MediaAttachment
void main() {
  final MediaAttachment? instance = /* MediaAttachment(...) */ null;
  // TODO add properties to the entity

  group(MediaAttachment, () {
    // The ID of the attachment in the database.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // The type of the attachment.
    // MediaAttachmentTypeEnum type
    test('to test the property `type`', () async {
      // TODO
    });

    // A hash computed by [the BlurHash algorithm](https://github.com/woltapp/blurhash), for generating colorful preview thumbnails when media has not been downloaded yet.
    // String blurhash
    test('to test the property `blurhash`', () async {
      // TODO
    });

    // Alternate text that describes what is in the media attachment, to be used for the visually impaired or when media attachments do not load.
    // String description
    test('to test the property `description`', () async {
      // TODO
    });

    // MediaAttachmentMeta meta
    test('to test the property `meta`', () async {
      // TODO
    });

    // The location of a scaled-down preview of the attachment.
    // Uri previewUrl
    test('to test the property `previewUrl`', () async {
      // TODO
    });

    // The location of the full-size original attachment on the remote website.
    // Uri remoteUrl
    test('to test the property `remoteUrl`', () async {
      // TODO
    });

    // The location of the original full-size attachment. Url may be null if the file is still being processed. See [`POST /api/v2/media`](https://docs.joinmastodon.org/methods/media/#v2).
    // Uri url
    test('to test the property `url`', () async {
      // TODO
    });
  });
}
