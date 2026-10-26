//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon/src/model/reaction.dart';
import 'package:mastodon/src/model/custom_emoji.dart';
import 'package:mastodon/src/model/announcement_account.dart';
import 'package:mastodon/src/model/announcement_status.dart';
import 'package:mastodon/src/model/status_tag.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'announcement.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Announcement {
  /// Returns a new [Announcement] instance.
  Announcement({
    required this.allDay,

    required this.content,

    required this.emojis,

    required this.id,

    required this.mentions,

    required this.publishedAt,

    required this.reactions,

    required this.statuses,

    required this.tags,

    required this.updatedAt,

    this.endsAt,

    this.reactionsAllowed,

    this.read,

    this.startsAt,
  });

  /// Whether the announcement should start and end on dates only instead of datetimes. Will be false if there is no `starts_at` or `ends_at` time.
  @JsonKey(name: r'all_day', required: true, includeIfNull: false)
  final bool allDay;

  /// The text of the announcement.
  @JsonKey(name: r'content', required: true, includeIfNull: false)
  final String content;

  /// Custom emoji used in the announcement text.
  @JsonKey(name: r'emojis', required: true, includeIfNull: false)
  final List<CustomEmoji> emojis;

  /// The ID of the announcement in the database.
  @JsonKey(name: r'id', required: true, includeIfNull: false)
  final String id;

  /// Accounts mentioned in the announcement text.
  @JsonKey(name: r'mentions', required: true, includeIfNull: false)
  final List<AnnouncementAccount> mentions;

  /// When the announcement was published.
  @JsonKey(name: r'published_at', required: true, includeIfNull: false)
  final DateTime publishedAt;

  /// Emoji reactions attached to the announcement.
  @JsonKey(name: r'reactions', required: true, includeIfNull: false)
  final List<Reaction> reactions;

  /// Statuses linked in the announcement text.
  @JsonKey(name: r'statuses', required: true, includeIfNull: false)
  final List<AnnouncementStatus> statuses;

  /// Tags linked in the announcement text.
  @JsonKey(name: r'tags', required: true, includeIfNull: false)
  final List<StatusTag> tags;

  /// When the announcement was last updated.
  @JsonKey(name: r'updated_at', required: true, includeIfNull: false)
  final DateTime updatedAt;

  /// When the announcement will end.
  @JsonKey(name: r'ends_at', required: false, includeIfNull: false)
  final DateTime? endsAt;

  /// Whether emoji reactions on this announcement are allowed.
  @JsonKey(name: r'reactions_allowed', required: false, includeIfNull: false)
  final bool? reactionsAllowed;

  /// Whether the announcement has been read by the current user.
  @JsonKey(name: r'read', required: false, includeIfNull: false)
  final bool? read;

  /// When the announcement will start.
  @JsonKey(name: r'starts_at', required: false, includeIfNull: false)
  final DateTime? startsAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Announcement &&
          other.allDay == allDay &&
          other.content == content &&
          other.emojis == emojis &&
          other.id == id &&
          other.mentions == mentions &&
          other.publishedAt == publishedAt &&
          other.reactions == reactions &&
          other.statuses == statuses &&
          other.tags == tags &&
          other.updatedAt == updatedAt &&
          other.endsAt == endsAt &&
          other.reactionsAllowed == reactionsAllowed &&
          other.read == read &&
          other.startsAt == startsAt;

  @override
  int get hashCode =>
      allDay.hashCode +
      content.hashCode +
      emojis.hashCode +
      id.hashCode +
      mentions.hashCode +
      publishedAt.hashCode +
      reactions.hashCode +
      statuses.hashCode +
      tags.hashCode +
      updatedAt.hashCode +
      (endsAt == null ? 0 : endsAt.hashCode) +
      (reactionsAllowed == null ? 0 : reactionsAllowed.hashCode) +
      (read == null ? 0 : read.hashCode) +
      (startsAt == null ? 0 : startsAt.hashCode);

  factory Announcement.fromJson(Map<String, dynamic> json) =>
      _$AnnouncementFromJson(json);

  Map<String, dynamic> toJson() => _$AnnouncementToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
