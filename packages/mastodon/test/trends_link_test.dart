import 'package:test/test.dart';
import 'package:mastodon/mastodon.dart';

// tests for TrendsLink
void main() {
  final TrendsLink? instance = /* TrendsLink(...) */ null;
  // TODO add properties to the entity

  group(TrendsLink, () {
    // The author of the original resource. Deprecated since 4.3.0, clients should use `authors` instead.
    // String authorName
    test('to test the property `authorName`', () async {
      // TODO
    });

    // A link to the author of the original resource. Deprecated since 4.3.0, clients should use `authors` instead.
    // Uri authorUrl
    test('to test the property `authorUrl`', () async {
      // TODO
    });

    // Fediverse account of the authors of the original resource.
    // List<PreviewCardAuthor> authors
    test('to test the property `authors`', () async {
      // TODO
    });

    // Description of preview.
    // String description
    test('to test the property `description`', () async {
      // TODO
    });

    // Used for photo embeds, instead of custom `html`.
    // Uri embedUrl
    test('to test the property `embedUrl`', () async {
      // TODO
    });

    // Height of preview, in pixels.
    // int height
    test('to test the property `height`', () async {
      // TODO
    });

    // Usage statistics for given days (typically the past week).
    // List<TrendsLinkHistoryInner> history
    test('to test the property `history`', () async {
      // TODO
    });

    // HTML to be used for generating the preview card.
    // String html
    test('to test the property `html`', () async {
      // TODO
    });

    // The provider of the original resource.
    // String providerName
    test('to test the property `providerName`', () async {
      // TODO
    });

    // A link to the provider of the original resource.
    // Uri providerUrl
    test('to test the property `providerUrl`', () async {
      // TODO
    });

    // Title of linked resource.
    // String title
    test('to test the property `title`', () async {
      // TODO
    });

    // The type of the preview card.
    // TrendsLinkTypeEnum type
    test('to test the property `type`', () async {
      // TODO
    });

    // Location of linked resource.
    // Uri url
    test('to test the property `url`', () async {
      // TODO
    });

    // Width of preview, in pixels.
    // int width
    test('to test the property `width`', () async {
      // TODO
    });

    // A hash computed by [the BlurHash algorithm](https://github.com/woltapp/blurhash), for generating colorful preview thumbnails when media has not been downloaded yet.
    // String blurhash
    test('to test the property `blurhash`', () async {
      // TODO
    });

    // Preview thumbnail.
    // Uri image
    test('to test the property `image`', () async {
      // TODO
    });

    // True if the linked article claims to be written by the current user without the user having the article's domain in their [`attribution_domains`](https://docs.joinmastodon.org/entities/Account/#source[attribution_domains])). This is used to prompt them to review and add the domain.
    // bool missingAttribution
    test('to test the property `missingAttribution`', () async {
      // TODO
    });

    // UNIX timestamp of publication date.
    // DateTime publishedAt
    test('to test the property `publishedAt`', () async {
      // TODO
    });
  });
}
