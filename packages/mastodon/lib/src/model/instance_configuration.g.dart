// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_configuration.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$InstanceConfigurationCWProxy {
  InstanceConfiguration accounts(InstanceConfigurationAccounts accounts);

  InstanceConfiguration mediaAttachments(
    InstanceConfigurationMediaAttachments mediaAttachments,
  );

  InstanceConfiguration polls(InstanceConfigurationPolls polls);

  InstanceConfiguration statuses(InstanceConfigurationStatuses statuses);

  InstanceConfiguration translation(
    InstanceConfigurationTranslation translation,
  );

  InstanceConfiguration urls(InstanceConfigurationUrls urls);

  InstanceConfiguration limitedFederation(bool? limitedFederation);

  InstanceConfiguration timelinesAccess(
    InstanceConfigurationTimelinesAccess? timelinesAccess,
  );

  InstanceConfiguration vapid(InstanceConfigurationVapid? vapid);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `InstanceConfiguration(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// InstanceConfiguration(...).copyWith(id: 12, name: "My name")
  /// ```
  InstanceConfiguration call({
    InstanceConfigurationAccounts accounts,
    InstanceConfigurationMediaAttachments mediaAttachments,
    InstanceConfigurationPolls polls,
    InstanceConfigurationStatuses statuses,
    InstanceConfigurationTranslation translation,
    InstanceConfigurationUrls urls,
    bool? limitedFederation,
    InstanceConfigurationTimelinesAccess? timelinesAccess,
    InstanceConfigurationVapid? vapid,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfInstanceConfiguration.copyWith(...)` or call `instanceOfInstanceConfiguration.copyWith.fieldName(value)` for a single field.
class _$InstanceConfigurationCWProxyImpl
    implements _$InstanceConfigurationCWProxy {
  const _$InstanceConfigurationCWProxyImpl(this._value);

  final InstanceConfiguration _value;

  @override
  InstanceConfiguration accounts(InstanceConfigurationAccounts accounts) =>
      call(accounts: accounts);

  @override
  InstanceConfiguration mediaAttachments(
    InstanceConfigurationMediaAttachments mediaAttachments,
  ) => call(mediaAttachments: mediaAttachments);

  @override
  InstanceConfiguration polls(InstanceConfigurationPolls polls) =>
      call(polls: polls);

  @override
  InstanceConfiguration statuses(InstanceConfigurationStatuses statuses) =>
      call(statuses: statuses);

  @override
  InstanceConfiguration translation(
    InstanceConfigurationTranslation translation,
  ) => call(translation: translation);

  @override
  InstanceConfiguration urls(InstanceConfigurationUrls urls) =>
      call(urls: urls);

  @override
  InstanceConfiguration limitedFederation(bool? limitedFederation) =>
      call(limitedFederation: limitedFederation);

  @override
  InstanceConfiguration timelinesAccess(
    InstanceConfigurationTimelinesAccess? timelinesAccess,
  ) => call(timelinesAccess: timelinesAccess);

  @override
  InstanceConfiguration vapid(InstanceConfigurationVapid? vapid) =>
      call(vapid: vapid);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `InstanceConfiguration(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// InstanceConfiguration(...).copyWith(id: 12, name: "My name")
  /// ```
  @override
  InstanceConfiguration call({
    Object? accounts = const $CopyWithPlaceholder(),
    Object? mediaAttachments = const $CopyWithPlaceholder(),
    Object? polls = const $CopyWithPlaceholder(),
    Object? statuses = const $CopyWithPlaceholder(),
    Object? translation = const $CopyWithPlaceholder(),
    Object? urls = const $CopyWithPlaceholder(),
    Object? limitedFederation = const $CopyWithPlaceholder(),
    Object? timelinesAccess = const $CopyWithPlaceholder(),
    Object? vapid = const $CopyWithPlaceholder(),
  }) {
    return InstanceConfiguration(
      accounts: accounts == const $CopyWithPlaceholder() || accounts == null
          ? _value.accounts
          // ignore: cast_nullable_to_non_nullable
          : accounts as InstanceConfigurationAccounts,
      mediaAttachments:
          mediaAttachments == const $CopyWithPlaceholder() ||
              mediaAttachments == null
          ? _value.mediaAttachments
          // ignore: cast_nullable_to_non_nullable
          : mediaAttachments as InstanceConfigurationMediaAttachments,
      polls: polls == const $CopyWithPlaceholder() || polls == null
          ? _value.polls
          // ignore: cast_nullable_to_non_nullable
          : polls as InstanceConfigurationPolls,
      statuses: statuses == const $CopyWithPlaceholder() || statuses == null
          ? _value.statuses
          // ignore: cast_nullable_to_non_nullable
          : statuses as InstanceConfigurationStatuses,
      translation:
          translation == const $CopyWithPlaceholder() || translation == null
          ? _value.translation
          // ignore: cast_nullable_to_non_nullable
          : translation as InstanceConfigurationTranslation,
      urls: urls == const $CopyWithPlaceholder() || urls == null
          ? _value.urls
          // ignore: cast_nullable_to_non_nullable
          : urls as InstanceConfigurationUrls,
      limitedFederation: limitedFederation == const $CopyWithPlaceholder()
          ? _value.limitedFederation
          // ignore: cast_nullable_to_non_nullable
          : limitedFederation as bool?,
      timelinesAccess: timelinesAccess == const $CopyWithPlaceholder()
          ? _value.timelinesAccess
          // ignore: cast_nullable_to_non_nullable
          : timelinesAccess as InstanceConfigurationTimelinesAccess?,
      vapid: vapid == const $CopyWithPlaceholder()
          ? _value.vapid
          // ignore: cast_nullable_to_non_nullable
          : vapid as InstanceConfigurationVapid?,
    );
  }
}

extension $InstanceConfigurationCopyWith on InstanceConfiguration {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfInstanceConfiguration.copyWith(...)` or `instanceOfInstanceConfiguration.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$InstanceConfigurationCWProxy get copyWith =>
      _$InstanceConfigurationCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InstanceConfiguration _$InstanceConfigurationFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'InstanceConfiguration',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'accounts',
        'media_attachments',
        'polls',
        'statuses',
        'translation',
        'urls',
      ],
    );
    final val = InstanceConfiguration(
      accounts: $checkedConvert(
        'accounts',
        (v) =>
            InstanceConfigurationAccounts.fromJson(v as Map<String, dynamic>),
      ),
      mediaAttachments: $checkedConvert(
        'media_attachments',
        (v) => InstanceConfigurationMediaAttachments.fromJson(
          v as Map<String, dynamic>,
        ),
      ),
      polls: $checkedConvert(
        'polls',
        (v) => InstanceConfigurationPolls.fromJson(v as Map<String, dynamic>),
      ),
      statuses: $checkedConvert(
        'statuses',
        (v) =>
            InstanceConfigurationStatuses.fromJson(v as Map<String, dynamic>),
      ),
      translation: $checkedConvert(
        'translation',
        (v) => InstanceConfigurationTranslation.fromJson(
          v as Map<String, dynamic>,
        ),
      ),
      urls: $checkedConvert(
        'urls',
        (v) => InstanceConfigurationUrls.fromJson(v as Map<String, dynamic>),
      ),
      limitedFederation: $checkedConvert(
        'limited_federation',
        (v) => v as bool?,
      ),
      timelinesAccess: $checkedConvert(
        'timelines_access',
        (v) => v == null
            ? null
            : InstanceConfigurationTimelinesAccess.fromJson(
                v as Map<String, dynamic>,
              ),
      ),
      vapid: $checkedConvert(
        'vapid',
        (v) => v == null
            ? null
            : InstanceConfigurationVapid.fromJson(v as Map<String, dynamic>),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'mediaAttachments': 'media_attachments',
    'limitedFederation': 'limited_federation',
    'timelinesAccess': 'timelines_access',
  },
);

Map<String, dynamic> _$InstanceConfigurationToJson(
  InstanceConfiguration instance,
) => <String, dynamic>{
  'accounts': instance.accounts.toJson(),
  'media_attachments': instance.mediaAttachments.toJson(),
  'polls': instance.polls.toJson(),
  'statuses': instance.statuses.toJson(),
  'translation': instance.translation.toJson(),
  'urls': instance.urls.toJson(),
  'limited_federation': ?instance.limitedFederation,
  'timelines_access': ?instance.timelinesAccess?.toJson(),
  'vapid': ?instance.vapid?.toJson(),
};
