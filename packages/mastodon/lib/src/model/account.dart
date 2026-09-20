//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon/src/model/field.dart';
import 'package:mastodon/src/model/custom_emoji.dart';
import 'package:mastodon/src/model/feature_approval.dart';
import 'package:mastodon/src/model/account_role.dart';
import 'dart:core';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'account.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Account {
  /// Returns a new [Account] instance.
  Account({
    required this.acct,

    required this.avatar,

    required this.avatarStatic,

    required this.bot,

    required this.createdAt,

    required this.displayName,

    required this.emojis,

    required this.fields,

    required this.followersCount,

    required this.followingCount,

    required this.group,

    required this.header,

    required this.headerStatic,

    required this.id,

    required this.indexable,

    required this.locked,

    required this.note,

    required this.statusesCount,

    required this.uri,

    required this.username,

    this.avatarDescription,

    this.discoverable,

    this.featureApproval,

    this.headerDescription,

    this.hideCollections,

    this.lastStatusAt,

    this.limited,

    this.memorial,

    this.moved,

    this.noindex,

    this.roles,

    this.showFeatured,

    this.showMedia,

    this.showMediaReplies,

    this.suspended,

    this.url,
  });

  /// The WebFinger account URI. Equal to `username` for local users, or `username@domain` for remote users.
  @JsonKey(name: r'acct', required: true, includeIfNull: false)
  final String acct;

  /// An image icon that is shown next to statuses and in the profile.
  @JsonKey(name: r'avatar', required: true, includeIfNull: false)
  final Uri avatar;

  /// A static version of the avatar. Equal to `avatar` if its value is a static image; different if `avatar` is an animated GIF.
  @JsonKey(name: r'avatar_static', required: true, includeIfNull: false)
  final Uri avatarStatic;

  /// Indicates that the account may perform automated actions, may not be monitored, or identifies as a robot. This is determined by the account's `actor_type` being set to 'Application' or 'Service'.
  @JsonKey(name: r'bot', required: true, includeIfNull: false)
  final bool bot;

  /// When the account was created.
  @JsonKey(name: r'created_at', required: true, includeIfNull: false)
  final DateTime createdAt;

  /// The profile's display name.
  @JsonKey(name: r'display_name', required: true, includeIfNull: false)
  final String displayName;

  /// Custom emoji entities to be used when rendering the profile.
  @JsonKey(name: r'emojis', required: true, includeIfNull: false)
  final List<CustomEmoji> emojis;

  /// Additional metadata attached to a profile as name-value pairs.
  @JsonKey(name: r'fields', required: true, includeIfNull: false)
  final List<Field> fields;

  /// The reported followers of this profile.
  @JsonKey(name: r'followers_count', required: true, includeIfNull: false)
  final int followersCount;

  /// The reported follows of this profile.
  @JsonKey(name: r'following_count', required: true, includeIfNull: false)
  final int followingCount;

  /// Indicates that the account represents a Group actor.
  @JsonKey(name: r'group', required: true, includeIfNull: false)
  final bool group;

  /// An image banner that is shown above the profile and in profile cards. Will end `/headers/original/missing.png` if the user has not set a header image.
  @JsonKey(name: r'header', required: true, includeIfNull: false)
  final Uri header;

  /// A static version of the header. Equal to `header` if its value is a static image; different if `header` is an animated GIF.
  @JsonKey(name: r'header_static', required: true, includeIfNull: false)
  final Uri headerStatic;

  /// The account id.
  @JsonKey(name: r'id', required: true, includeIfNull: false)
  final String id;

  /// Whether the account allows indexing by search engines.
  @JsonKey(name: r'indexable', required: true, includeIfNull: false)
  final bool indexable;

  /// Whether the account manually approves follow requests.
  @JsonKey(name: r'locked', required: true, includeIfNull: false)
  final bool locked;

  /// The profile's bio or description.
  @JsonKey(name: r'note', required: true, includeIfNull: false)
  final String note;

  /// How many statuses are attached to this account.
  @JsonKey(name: r'statuses_count', required: true, includeIfNull: false)
  final int statusesCount;

  /// The user's ActivityPub actor identifier (used for federation).
  @JsonKey(name: r'uri', required: true, includeIfNull: false)
  final Uri uri;

  /// The username of the account, not including domain.
  @JsonKey(name: r'username', required: true, includeIfNull: false)
  final String username;

  /// A textual description of the avatar image.
  @JsonKey(name: r'avatar_description', required: false, includeIfNull: false)
  final String? avatarDescription;

  /// Whether the account has opted into discovery features such as the profile directory.
  @JsonKey(name: r'discoverable', required: false, includeIfNull: false)
  final bool? discoverable;

  /// Summary of the account's policy with regards to being featured in a [Collection](https://docs.joinmastodon.org/entities/Collection/) and how it applies to the user making the request.
  @JsonKey(name: r'feature_approval', required: false, includeIfNull: false)
  final FeatureApproval? featureApproval;

  /// A textual description of the header image.
  @JsonKey(name: r'header_description', required: false, includeIfNull: false)
  final String? headerDescription;

  /// Whether the user hides the contents of their follows and followers collections.
  @JsonKey(name: r'hide_collections', required: false, includeIfNull: false)
  final bool? hideCollections;

  /// When the most recent status was posted.
  @JsonKey(name: r'last_status_at', required: false, includeIfNull: false)
  final DateTime? lastStatusAt;

  /// An extra attribute returned only when an account is silenced. If true, indicates that the account should be hidden behind a warning screen.
  @JsonKey(name: r'limited', required: false, includeIfNull: false)
  final bool? limited;

  /// An extra attribute returned only when an account is memorialized (when `memorial` is true).
  @JsonKey(name: r'memorial', required: false, includeIfNull: false)
  final bool? memorial;

  /// Indicates that the profile is currently inactive and that its user has moved to a new account.
  @JsonKey(name: r'moved', required: false, includeIfNull: false)
  final Account? moved;

  /// Whether the local user has opted out of being indexed by search engines.
  @JsonKey(name: r'noindex', required: false, includeIfNull: false)
  final bool? noindex;

  /// An array of roles assigned to the user that are publicly visible (highlighted roles only), if the account is local. Will be an empty array if no roles are highlighted or null if the account is remote.
  @JsonKey(name: r'roles', required: false, includeIfNull: false)
  final List<AccountRole>? roles;

  /// Whether the account wishes to have a “Featured” tab on their profile.
  @JsonKey(name: r'show_featured', required: false, includeIfNull: false)
  final bool? showFeatured;

  /// Whether the account wishes to have a “Media” tab with media attachments on their profile.
  @JsonKey(name: r'show_media', required: false, includeIfNull: false)
  final bool? showMedia;

  /// Whether the account wishes to have replies in the “Media” tab on their profile.
  @JsonKey(name: r'show_media_replies', required: false, includeIfNull: false)
  final bool? showMediaReplies;

  /// An extra attribute returned only when an account is suspended.
  @JsonKey(name: r'suspended', required: false, includeIfNull: false)
  final bool? suspended;

  /// The location of the user's profile page (web interface URL).
  @JsonKey(name: r'url', required: false, includeIfNull: false)
  final Uri? url;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Account &&
          other.acct == acct &&
          other.avatar == avatar &&
          other.avatarStatic == avatarStatic &&
          other.bot == bot &&
          other.createdAt == createdAt &&
          other.displayName == displayName &&
          other.emojis == emojis &&
          other.fields == fields &&
          other.followersCount == followersCount &&
          other.followingCount == followingCount &&
          other.group == group &&
          other.header == header &&
          other.headerStatic == headerStatic &&
          other.id == id &&
          other.indexable == indexable &&
          other.locked == locked &&
          other.note == note &&
          other.statusesCount == statusesCount &&
          other.uri == uri &&
          other.username == username &&
          other.avatarDescription == avatarDescription &&
          other.discoverable == discoverable &&
          other.featureApproval == featureApproval &&
          other.headerDescription == headerDescription &&
          other.hideCollections == hideCollections &&
          other.lastStatusAt == lastStatusAt &&
          other.limited == limited &&
          other.memorial == memorial &&
          other.moved == moved &&
          other.noindex == noindex &&
          other.roles == roles &&
          other.showFeatured == showFeatured &&
          other.showMedia == showMedia &&
          other.showMediaReplies == showMediaReplies &&
          other.suspended == suspended &&
          other.url == url;

  @override
  int get hashCode =>
      acct.hashCode +
      avatar.hashCode +
      avatarStatic.hashCode +
      bot.hashCode +
      createdAt.hashCode +
      displayName.hashCode +
      emojis.hashCode +
      fields.hashCode +
      followersCount.hashCode +
      followingCount.hashCode +
      group.hashCode +
      header.hashCode +
      headerStatic.hashCode +
      id.hashCode +
      indexable.hashCode +
      locked.hashCode +
      note.hashCode +
      statusesCount.hashCode +
      uri.hashCode +
      username.hashCode +
      (avatarDescription == null ? 0 : avatarDescription.hashCode) +
      (discoverable == null ? 0 : discoverable.hashCode) +
      (featureApproval == null ? 0 : featureApproval.hashCode) +
      (headerDescription == null ? 0 : headerDescription.hashCode) +
      (hideCollections == null ? 0 : hideCollections.hashCode) +
      (lastStatusAt == null ? 0 : lastStatusAt.hashCode) +
      (limited == null ? 0 : limited.hashCode) +
      (memorial == null ? 0 : memorial.hashCode) +
      (moved == null ? 0 : moved.hashCode) +
      (noindex == null ? 0 : noindex.hashCode) +
      (roles == null ? 0 : roles.hashCode) +
      (showFeatured == null ? 0 : showFeatured.hashCode) +
      (showMedia == null ? 0 : showMedia.hashCode) +
      (showMediaReplies == null ? 0 : showMediaReplies.hashCode) +
      (suspended == null ? 0 : suspended.hashCode) +
      (url == null ? 0 : url.hashCode);

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);

  Map<String, dynamic> toJson() => _$AccountToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
