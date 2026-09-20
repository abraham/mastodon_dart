//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon/src/model/patch_account_update_credentials_request_fields_attributes_value.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'patch_profile_request.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PatchProfileRequest {
  /// Returns a new [PatchProfileRequest] instance.
  PatchProfileRequest({
    this.attributionDomains,

    this.avatar,

    this.avatarDescription,

    this.bot,

    this.discoverable,

    this.displayName,

    this.fieldsAttributes,

    this.header,

    this.headerDescription,

    this.hideCollections,

    this.indexable,

    this.locked,

    this.note,

    this.showFeatured,

    this.showMedia,

    this.showMediaReplies,
  });

  /// Domains of websites allowed to credit the account. Maximum of 10 domains.
  @JsonKey(name: r'attribution_domains', required: false, includeIfNull: false)
  final List<String>? attributionDomains;

  /// Avatar image encoded using `multipart/form-data`
  @JsonKey(name: r'avatar', required: false, includeIfNull: false)
  final String? avatar;

  /// A plain-text description of the avatar, for accessibility purposes.
  @JsonKey(name: r'avatar_description', required: false, includeIfNull: false)
  final String? avatarDescription;

  /// Whether the account has a bot flag.
  @JsonKey(name: r'bot', required: false, includeIfNull: false)
  final bool? bot;

  /// Whether the account should be shown in the profile directory and be available for other discovery features, like being included in Collections.
  @JsonKey(name: r'discoverable', required: false, includeIfNull: false)
  final bool? discoverable;

  /// The display name to use for the profile.
  @JsonKey(name: r'display_name', required: false, includeIfNull: false)
  final String? displayName;

  /// The profile fields to be set. Each hash includes `name` and `value`. By default, max 4 fields (specified in [Instance#max_profile_fields]).
  @JsonKey(name: r'fields_attributes', required: false, includeIfNull: false)
  final Map<String, PatchAccountUpdateCredentialsRequestFieldsAttributesValue>?
  fieldsAttributes;

  /// Header image encoded using `multipart/form-data`
  @JsonKey(name: r'header', required: false, includeIfNull: false)
  final String? header;

  /// A plain-text description of the header, for accessibility purposes.
  @JsonKey(name: r'header_description', required: false, includeIfNull: false)
  final String? headerDescription;

  /// Whether to hide followers and followed accounts. This field predates the Collections feature and has nothing to do with it, despite the name.
  @JsonKey(name: r'hide_collections', required: false, includeIfNull: false)
  final bool? hideCollections;

  /// Whether public posts should be searchable to anyone.
  @JsonKey(name: r'indexable', required: false, includeIfNull: false)
  final bool? indexable;

  /// Whether manual approval of follow requests is required.
  @JsonKey(name: r'locked', required: false, includeIfNull: false)
  final bool? locked;

  /// The account bio.
  @JsonKey(name: r'note', required: false, includeIfNull: false)
  final String? note;

  /// Whether a “Featured” tab should be shown on this profile.
  @JsonKey(name: r'show_featured', required: false, includeIfNull: false)
  final bool? showFeatured;

  /// Whether a “Media” tab with media attachments should be shown on this profile.
  @JsonKey(name: r'show_media', required: false, includeIfNull: false)
  final bool? showMedia;

  /// Whether media attachments in replies should be shown in the “Media” tab of this profile.
  @JsonKey(name: r'show_media_replies', required: false, includeIfNull: false)
  final bool? showMediaReplies;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PatchProfileRequest &&
          other.attributionDomains == attributionDomains &&
          other.avatar == avatar &&
          other.avatarDescription == avatarDescription &&
          other.bot == bot &&
          other.discoverable == discoverable &&
          other.displayName == displayName &&
          other.fieldsAttributes == fieldsAttributes &&
          other.header == header &&
          other.headerDescription == headerDescription &&
          other.hideCollections == hideCollections &&
          other.indexable == indexable &&
          other.locked == locked &&
          other.note == note &&
          other.showFeatured == showFeatured &&
          other.showMedia == showMedia &&
          other.showMediaReplies == showMediaReplies;

  @override
  int get hashCode =>
      attributionDomains.hashCode +
      avatar.hashCode +
      avatarDescription.hashCode +
      bot.hashCode +
      discoverable.hashCode +
      displayName.hashCode +
      fieldsAttributes.hashCode +
      header.hashCode +
      headerDescription.hashCode +
      hideCollections.hashCode +
      indexable.hashCode +
      locked.hashCode +
      note.hashCode +
      showFeatured.hashCode +
      showMedia.hashCode +
      showMediaReplies.hashCode;

  factory PatchProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$PatchProfileRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PatchProfileRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
