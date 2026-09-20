//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon/src/model/media_attachment_type_enum.dart';
import 'package:mastodon/src/model/media_attachment_meta.dart';
import 'dart:core';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'media_attachment.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MediaAttachment {
  /// Returns a new [MediaAttachment] instance.
  MediaAttachment({
    required this.id,

    required this.type,

    this.blurhash,

    this.description,

    this.meta,

    this.previewUrl,

    this.remoteUrl,

    this.url,
  });

  /// The ID of the attachment in the database.
  @JsonKey(name: r'id', required: true, includeIfNull: false)
  final String id;

  /// The type of the attachment.
  @JsonKey(name: r'type', required: true, includeIfNull: false)
  final MediaAttachmentTypeEnum type;

  /// A hash computed by [the BlurHash algorithm](https://github.com/woltapp/blurhash), for generating colorful preview thumbnails when media has not been downloaded yet.
  @JsonKey(name: r'blurhash', required: false, includeIfNull: false)
  final String? blurhash;

  /// Alternate text that describes what is in the media attachment, to be used for the visually impaired or when media attachments do not load.
  @JsonKey(name: r'description', required: false, includeIfNull: false)
  final String? description;

  @JsonKey(name: r'meta', required: false, includeIfNull: false)
  final MediaAttachmentMeta? meta;

  /// The location of a scaled-down preview of the attachment.
  @JsonKey(name: r'preview_url', required: false, includeIfNull: false)
  final Uri? previewUrl;

  /// The location of the full-size original attachment on the remote website.
  @JsonKey(name: r'remote_url', required: false, includeIfNull: false)
  final Uri? remoteUrl;

  /// The location of the original full-size attachment. Url may be null if the file is still being processed. See [`POST /api/v2/media`](https://docs.joinmastodon.org/methods/media/#v2).
  @JsonKey(name: r'url', required: false, includeIfNull: false)
  final Uri? url;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MediaAttachment &&
          other.id == id &&
          other.type == type &&
          other.blurhash == blurhash &&
          other.description == description &&
          other.meta == meta &&
          other.previewUrl == previewUrl &&
          other.remoteUrl == remoteUrl &&
          other.url == url;

  @override
  int get hashCode =>
      id.hashCode +
      type.hashCode +
      (blurhash == null ? 0 : blurhash.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (meta == null ? 0 : meta.hashCode) +
      (previewUrl == null ? 0 : previewUrl.hashCode) +
      (remoteUrl == null ? 0 : remoteUrl.hashCode) +
      (url == null ? 0 : url.hashCode);

  factory MediaAttachment.fromJson(Map<String, dynamic> json) =>
      _$MediaAttachmentFromJson(json);

  Map<String, dynamic> toJson() => _$MediaAttachmentToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
