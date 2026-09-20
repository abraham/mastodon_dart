//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon/src/model/field.dart';
import 'dart:core';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'profile.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Profile {
  /// Returns a new [Profile] instance.
  Profile({
    required this.attributionDomains,

    required this.avatarDescription,

    required this.bot,

    required this.displayName,

    required this.fields,

    required this.headerDescription,

    required this.id,

    required this.indexable,

    required this.locked,

    required this.note,

    required this.showFeatured,

    required this.showMedia,

    required this.showMediaReplies,

    this.avatar,

    this.avatarStatic,

    this.discoverable,

    this.header,

    this.headerStatic,

    this.hideCollections,
  });

  /// Domains of websites allowed to credit the account.
  @JsonKey(name: r'attribution_domains', required: true, includeIfNull: false)
  final List<String> attributionDomains;

  /// A textual description of the avatar, to be used for the visually impaired or when avatars do not load.
  @JsonKey(name: r'avatar_description', required: true, includeIfNull: false)
  final String avatarDescription;

  /// Indicates that the account may perform automated actions, may not be monitored, or identifies as a robot. This is determined by the account's `actor_type` being set to 'Application' or 'Service'.
  @JsonKey(name: r'bot', required: true, includeIfNull: false)
  final bool bot;

  /// The profile's display name.
  @JsonKey(name: r'display_name', required: true, includeIfNull: false)
  final String displayName;

  /// Metadata about the account. Those contain the raw unprocessed names and values.
  @JsonKey(name: r'fields', required: true, includeIfNull: false)
  final List<Field> fields;

  /// A textual description of the profile header, to be used for the visually impaired or when avatars do not load.
  @JsonKey(name: r'header_description', required: true, includeIfNull: false)
  final String headerDescription;

  /// The account id.
  @JsonKey(name: r'id', required: true, includeIfNull: false)
  final String id;

  /// Whether the account allows indexing by search engines.
  @JsonKey(name: r'indexable', required: true, includeIfNull: false)
  final bool indexable;

  /// Whether the account manually approves follow requests.
  @JsonKey(name: r'locked', required: true, includeIfNull: false)
  final bool locked;

  /// The profile's bio or description. Unlike for [Account](https://docs.joinmastodon.org/entities/Account/), this is the raw unprocessed text, not the rendered HTML.
  @JsonKey(name: r'note', required: true, includeIfNull: false)
  final String note;

  /// Whether the account wishes to have a “Featured” tab on their profile.
  @JsonKey(name: r'show_featured', required: true, includeIfNull: false)
  final bool showFeatured;

  /// Whether the account wishes to have a “Media” tab with media attachments on their profile.
  @JsonKey(name: r'show_media', required: true, includeIfNull: false)
  final bool showMedia;

  /// Whether the account wishes to have replies in the “Media” tab on their profile.
  @JsonKey(name: r'show_media_replies', required: true, includeIfNull: false)
  final bool showMediaReplies;

  /// An image icon that is shown next to statuses and in the profile. Unlike for [Account](https://docs.joinmastodon.org/entities/Account/), this is nullable and will be null if the avatar is unset.
  @JsonKey(name: r'avatar', required: false, includeIfNull: false)
  final Uri? avatar;

  /// A static version of the avatar. Unlike for [Account](https://docs.joinmastodon.org/entities/Account/), this is nullable and will be null if the avatar is unset.
  @JsonKey(name: r'avatar_static', required: false, includeIfNull: false)
  final Uri? avatarStatic;

  /// Whether the account has opted into discovery features such as the profile directory.
  @JsonKey(name: r'discoverable', required: false, includeIfNull: false)
  final bool? discoverable;

  /// An image banner that is shown above the profile and in profile cards. Unlike for [Account](https://docs.joinmastodon.org/entities/Account/), this is nullable and will be null if the header is unset.
  @JsonKey(name: r'header', required: false, includeIfNull: false)
  final Uri? header;

  /// A static version of the header. Unlike for [Account](https://docs.joinmastodon.org/entities/Account/), this is nullable and will be null if the header is unset.
  @JsonKey(name: r'header_static', required: false, includeIfNull: false)
  final Uri? headerStatic;

  /// Whether the user hides the contents of their follows and followers collections.
  @JsonKey(name: r'hide_collections', required: false, includeIfNull: false)
  final bool? hideCollections;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Profile &&
          other.attributionDomains == attributionDomains &&
          other.avatarDescription == avatarDescription &&
          other.bot == bot &&
          other.displayName == displayName &&
          other.fields == fields &&
          other.headerDescription == headerDescription &&
          other.id == id &&
          other.indexable == indexable &&
          other.locked == locked &&
          other.note == note &&
          other.showFeatured == showFeatured &&
          other.showMedia == showMedia &&
          other.showMediaReplies == showMediaReplies &&
          other.avatar == avatar &&
          other.avatarStatic == avatarStatic &&
          other.discoverable == discoverable &&
          other.header == header &&
          other.headerStatic == headerStatic &&
          other.hideCollections == hideCollections;

  @override
  int get hashCode =>
      attributionDomains.hashCode +
      avatarDescription.hashCode +
      bot.hashCode +
      displayName.hashCode +
      fields.hashCode +
      headerDescription.hashCode +
      id.hashCode +
      indexable.hashCode +
      locked.hashCode +
      note.hashCode +
      showFeatured.hashCode +
      showMedia.hashCode +
      showMediaReplies.hashCode +
      (avatar == null ? 0 : avatar.hashCode) +
      (avatarStatic == null ? 0 : avatarStatic.hashCode) +
      (discoverable == null ? 0 : discoverable.hashCode) +
      (header == null ? 0 : header.hashCode) +
      (headerStatic == null ? 0 : headerStatic.hashCode) +
      (hideCollections == null ? 0 : hideCollections.hashCode);

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
