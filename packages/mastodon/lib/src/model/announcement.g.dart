// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announcement.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AnnouncementCWProxy {
  Announcement allDay(bool allDay);

  Announcement content(String content);

  Announcement emojis(List<CustomEmoji> emojis);

  Announcement id(String id);

  Announcement mentions(List<AnnouncementAccount> mentions);

  Announcement publishedAt(DateTime publishedAt);

  Announcement reactions(List<Reaction> reactions);

  Announcement statuses(List<AnnouncementStatus> statuses);

  Announcement tags(List<StatusTag> tags);

  Announcement updatedAt(DateTime updatedAt);

  Announcement endsAt(DateTime? endsAt);

  Announcement reactionsAllowed(bool? reactionsAllowed);

  Announcement read(bool? read);

  Announcement startsAt(DateTime? startsAt);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `Announcement(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// Announcement(...).copyWith(id: 12, name: "My name")
  /// ```
  Announcement call({
    bool allDay,
    String content,
    List<CustomEmoji> emojis,
    String id,
    List<AnnouncementAccount> mentions,
    DateTime publishedAt,
    List<Reaction> reactions,
    List<AnnouncementStatus> statuses,
    List<StatusTag> tags,
    DateTime updatedAt,
    DateTime? endsAt,
    bool? reactionsAllowed,
    bool? read,
    DateTime? startsAt,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfAnnouncement.copyWith(...)` or call `instanceOfAnnouncement.copyWith.fieldName(value)` for a single field.
class _$AnnouncementCWProxyImpl implements _$AnnouncementCWProxy {
  const _$AnnouncementCWProxyImpl(this._value);

  final Announcement _value;

  @override
  Announcement allDay(bool allDay) => call(allDay: allDay);

  @override
  Announcement content(String content) => call(content: content);

  @override
  Announcement emojis(List<CustomEmoji> emojis) => call(emojis: emojis);

  @override
  Announcement id(String id) => call(id: id);

  @override
  Announcement mentions(List<AnnouncementAccount> mentions) =>
      call(mentions: mentions);

  @override
  Announcement publishedAt(DateTime publishedAt) =>
      call(publishedAt: publishedAt);

  @override
  Announcement reactions(List<Reaction> reactions) =>
      call(reactions: reactions);

  @override
  Announcement statuses(List<AnnouncementStatus> statuses) =>
      call(statuses: statuses);

  @override
  Announcement tags(List<StatusTag> tags) => call(tags: tags);

  @override
  Announcement updatedAt(DateTime updatedAt) => call(updatedAt: updatedAt);

  @override
  Announcement endsAt(DateTime? endsAt) => call(endsAt: endsAt);

  @override
  Announcement reactionsAllowed(bool? reactionsAllowed) =>
      call(reactionsAllowed: reactionsAllowed);

  @override
  Announcement read(bool? read) => call(read: read);

  @override
  Announcement startsAt(DateTime? startsAt) => call(startsAt: startsAt);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `Announcement(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// Announcement(...).copyWith(id: 12, name: "My name")
  /// ```
  @override
  Announcement call({
    Object? allDay = const $CopyWithPlaceholder(),
    Object? content = const $CopyWithPlaceholder(),
    Object? emojis = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? mentions = const $CopyWithPlaceholder(),
    Object? publishedAt = const $CopyWithPlaceholder(),
    Object? reactions = const $CopyWithPlaceholder(),
    Object? statuses = const $CopyWithPlaceholder(),
    Object? tags = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
    Object? endsAt = const $CopyWithPlaceholder(),
    Object? reactionsAllowed = const $CopyWithPlaceholder(),
    Object? read = const $CopyWithPlaceholder(),
    Object? startsAt = const $CopyWithPlaceholder(),
  }) {
    return Announcement(
      allDay: allDay == const $CopyWithPlaceholder() || allDay == null
          ? _value.allDay
          // ignore: cast_nullable_to_non_nullable
          : allDay as bool,
      content: content == const $CopyWithPlaceholder() || content == null
          ? _value.content
          // ignore: cast_nullable_to_non_nullable
          : content as String,
      emojis: emojis == const $CopyWithPlaceholder() || emojis == null
          ? _value.emojis
          // ignore: cast_nullable_to_non_nullable
          : emojis as List<CustomEmoji>,
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      mentions: mentions == const $CopyWithPlaceholder() || mentions == null
          ? _value.mentions
          // ignore: cast_nullable_to_non_nullable
          : mentions as List<AnnouncementAccount>,
      publishedAt:
          publishedAt == const $CopyWithPlaceholder() || publishedAt == null
          ? _value.publishedAt
          // ignore: cast_nullable_to_non_nullable
          : publishedAt as DateTime,
      reactions: reactions == const $CopyWithPlaceholder() || reactions == null
          ? _value.reactions
          // ignore: cast_nullable_to_non_nullable
          : reactions as List<Reaction>,
      statuses: statuses == const $CopyWithPlaceholder() || statuses == null
          ? _value.statuses
          // ignore: cast_nullable_to_non_nullable
          : statuses as List<AnnouncementStatus>,
      tags: tags == const $CopyWithPlaceholder() || tags == null
          ? _value.tags
          // ignore: cast_nullable_to_non_nullable
          : tags as List<StatusTag>,
      updatedAt: updatedAt == const $CopyWithPlaceholder() || updatedAt == null
          ? _value.updatedAt
          // ignore: cast_nullable_to_non_nullable
          : updatedAt as DateTime,
      endsAt: endsAt == const $CopyWithPlaceholder()
          ? _value.endsAt
          // ignore: cast_nullable_to_non_nullable
          : endsAt as DateTime?,
      reactionsAllowed: reactionsAllowed == const $CopyWithPlaceholder()
          ? _value.reactionsAllowed
          // ignore: cast_nullable_to_non_nullable
          : reactionsAllowed as bool?,
      read: read == const $CopyWithPlaceholder()
          ? _value.read
          // ignore: cast_nullable_to_non_nullable
          : read as bool?,
      startsAt: startsAt == const $CopyWithPlaceholder()
          ? _value.startsAt
          // ignore: cast_nullable_to_non_nullable
          : startsAt as DateTime?,
    );
  }
}

extension $AnnouncementCopyWith on Announcement {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfAnnouncement.copyWith(...)` or `instanceOfAnnouncement.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AnnouncementCWProxy get copyWith => _$AnnouncementCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Announcement _$AnnouncementFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'Announcement',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'all_day',
        'content',
        'emojis',
        'id',
        'mentions',
        'published_at',
        'reactions',
        'statuses',
        'tags',
        'updated_at',
      ],
    );
    final val = Announcement(
      allDay: $checkedConvert('all_day', (v) => v as bool),
      content: $checkedConvert('content', (v) => v as String),
      emojis: $checkedConvert(
        'emojis',
        (v) => (v as List<dynamic>)
            .map((e) => CustomEmoji.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      id: $checkedConvert('id', (v) => v as String),
      mentions: $checkedConvert(
        'mentions',
        (v) => (v as List<dynamic>)
            .map((e) => AnnouncementAccount.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      publishedAt: $checkedConvert(
        'published_at',
        (v) => DateTime.parse(v as String),
      ),
      reactions: $checkedConvert(
        'reactions',
        (v) => (v as List<dynamic>)
            .map((e) => Reaction.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      statuses: $checkedConvert(
        'statuses',
        (v) => (v as List<dynamic>)
            .map((e) => AnnouncementStatus.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      tags: $checkedConvert(
        'tags',
        (v) => (v as List<dynamic>)
            .map((e) => StatusTag.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      updatedAt: $checkedConvert(
        'updated_at',
        (v) => DateTime.parse(v as String),
      ),
      endsAt: $checkedConvert(
        'ends_at',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
      reactionsAllowed: $checkedConvert('reactions_allowed', (v) => v as bool?),
      read: $checkedConvert('read', (v) => v as bool?),
      startsAt: $checkedConvert(
        'starts_at',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'allDay': 'all_day',
    'publishedAt': 'published_at',
    'updatedAt': 'updated_at',
    'endsAt': 'ends_at',
    'reactionsAllowed': 'reactions_allowed',
    'startsAt': 'starts_at',
  },
);

Map<String, dynamic> _$AnnouncementToJson(Announcement instance) =>
    <String, dynamic>{
      'all_day': instance.allDay,
      'content': instance.content,
      'emojis': instance.emojis.map((e) => e.toJson()).toList(),
      'id': instance.id,
      'mentions': instance.mentions.map((e) => e.toJson()).toList(),
      'published_at': instance.publishedAt.toIso8601String(),
      'reactions': instance.reactions.map((e) => e.toJson()).toList(),
      'statuses': instance.statuses.map((e) => e.toJson()).toList(),
      'tags': instance.tags.map((e) => e.toJson()).toList(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'ends_at': ?instance.endsAt?.toIso8601String(),
      'reactions_allowed': ?instance.reactionsAllowed,
      'read': ?instance.read,
      'starts_at': ?instance.startsAt?.toIso8601String(),
    };
