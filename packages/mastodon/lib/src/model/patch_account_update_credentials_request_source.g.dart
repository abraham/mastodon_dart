// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patch_account_update_credentials_request_source.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PatchAccountUpdateCredentialsRequestSourceCWProxy {
  PatchAccountUpdateCredentialsRequestSource privacy(
    StatusVisibilityEnum? privacy,
  );

  PatchAccountUpdateCredentialsRequestSource sensitive(bool? sensitive);

  PatchAccountUpdateCredentialsRequestSource language(String? language);

  PatchAccountUpdateCredentialsRequestSource quotePolicy(String? quotePolicy);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PatchAccountUpdateCredentialsRequestSource(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PatchAccountUpdateCredentialsRequestSource(...).copyWith(id: 12, name: "My name")
  /// ```
  PatchAccountUpdateCredentialsRequestSource call({
    StatusVisibilityEnum? privacy,
    bool? sensitive,
    String? language,
    String? quotePolicy,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfPatchAccountUpdateCredentialsRequestSource.copyWith(...)` or call `instanceOfPatchAccountUpdateCredentialsRequestSource.copyWith.fieldName(value)` for a single field.
class _$PatchAccountUpdateCredentialsRequestSourceCWProxyImpl
    implements _$PatchAccountUpdateCredentialsRequestSourceCWProxy {
  const _$PatchAccountUpdateCredentialsRequestSourceCWProxyImpl(this._value);

  final PatchAccountUpdateCredentialsRequestSource _value;

  @override
  PatchAccountUpdateCredentialsRequestSource privacy(
    StatusVisibilityEnum? privacy,
  ) => call(privacy: privacy);

  @override
  PatchAccountUpdateCredentialsRequestSource sensitive(bool? sensitive) =>
      call(sensitive: sensitive);

  @override
  PatchAccountUpdateCredentialsRequestSource language(String? language) =>
      call(language: language);

  @override
  PatchAccountUpdateCredentialsRequestSource quotePolicy(String? quotePolicy) =>
      call(quotePolicy: quotePolicy);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PatchAccountUpdateCredentialsRequestSource(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PatchAccountUpdateCredentialsRequestSource(...).copyWith(id: 12, name: "My name")
  /// ```
  @override
  PatchAccountUpdateCredentialsRequestSource call({
    Object? privacy = const $CopyWithPlaceholder(),
    Object? sensitive = const $CopyWithPlaceholder(),
    Object? language = const $CopyWithPlaceholder(),
    Object? quotePolicy = const $CopyWithPlaceholder(),
  }) {
    return PatchAccountUpdateCredentialsRequestSource(
      privacy: privacy == const $CopyWithPlaceholder()
          ? _value.privacy
          // ignore: cast_nullable_to_non_nullable
          : privacy as StatusVisibilityEnum?,
      sensitive: sensitive == const $CopyWithPlaceholder()
          ? _value.sensitive
          // ignore: cast_nullable_to_non_nullable
          : sensitive as bool?,
      language: language == const $CopyWithPlaceholder()
          ? _value.language
          // ignore: cast_nullable_to_non_nullable
          : language as String?,
      quotePolicy: quotePolicy == const $CopyWithPlaceholder()
          ? _value.quotePolicy
          // ignore: cast_nullable_to_non_nullable
          : quotePolicy as String?,
    );
  }
}

extension $PatchAccountUpdateCredentialsRequestSourceCopyWith
    on PatchAccountUpdateCredentialsRequestSource {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfPatchAccountUpdateCredentialsRequestSource.copyWith(...)` or `instanceOfPatchAccountUpdateCredentialsRequestSource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PatchAccountUpdateCredentialsRequestSourceCWProxy get copyWith =>
      _$PatchAccountUpdateCredentialsRequestSourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchAccountUpdateCredentialsRequestSource
_$PatchAccountUpdateCredentialsRequestSourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PatchAccountUpdateCredentialsRequestSource', json, (
  $checkedConvert,
) {
  final val = PatchAccountUpdateCredentialsRequestSource(
    privacy: $checkedConvert(
      'privacy',
      (v) => $enumDecodeNullable(_$StatusVisibilityEnumEnumMap, v),
    ),
    sensitive: $checkedConvert('sensitive', (v) => v as bool?),
    language: $checkedConvert('language', (v) => v as String?),
    quotePolicy: $checkedConvert('quote_policy', (v) => v as String?),
  );
  return val;
}, fieldKeyMap: const {'quotePolicy': 'quote_policy'});

Map<String, dynamic> _$PatchAccountUpdateCredentialsRequestSourceToJson(
  PatchAccountUpdateCredentialsRequestSource instance,
) => <String, dynamic>{
  'privacy': ?_$StatusVisibilityEnumEnumMap[instance.privacy],
  'sensitive': ?instance.sensitive,
  'language': ?instance.language,
  'quote_policy': ?instance.quotePolicy,
};

const _$StatusVisibilityEnumEnumMap = {
  StatusVisibilityEnum.public: 'public',
  StatusVisibilityEnum.unlisted: 'unlisted',
  StatusVisibilityEnum.private: 'private',
  StatusVisibilityEnum.direct: 'direct',
};
