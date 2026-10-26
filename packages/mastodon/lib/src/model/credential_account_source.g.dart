// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credential_account_source.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CredentialAccountSourceCWProxy {
  CredentialAccountSource fields(List<Field> fields);

  CredentialAccountSource followRequestsCount(int followRequestsCount);

  CredentialAccountSource indexable(bool indexable);

  CredentialAccountSource note(String note);

  CredentialAccountSource privacy(StatusVisibilityEnum privacy);

  CredentialAccountSource sensitive(bool sensitive);

  CredentialAccountSource attributionDomains(List<String>? attributionDomains);

  CredentialAccountSource discoverable(bool? discoverable);

  CredentialAccountSource hideCollections(bool? hideCollections);

  CredentialAccountSource language(String? language);

  CredentialAccountSource quotePolicy(
    ScheduledStatusParamsQuoteApprovalPolicyEnum? quotePolicy,
  );

  CredentialAccountSource spoilerField(bool? spoilerField);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CredentialAccountSource(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CredentialAccountSource(...).copyWith(id: 12, name: "My name")
  /// ```
  CredentialAccountSource call({
    List<Field> fields,
    int followRequestsCount,
    bool indexable,
    String note,
    StatusVisibilityEnum privacy,
    bool sensitive,
    List<String>? attributionDomains,
    bool? discoverable,
    bool? hideCollections,
    String? language,
    ScheduledStatusParamsQuoteApprovalPolicyEnum? quotePolicy,
    bool? spoilerField,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCredentialAccountSource.copyWith(...)` or call `instanceOfCredentialAccountSource.copyWith.fieldName(value)` for a single field.
class _$CredentialAccountSourceCWProxyImpl
    implements _$CredentialAccountSourceCWProxy {
  const _$CredentialAccountSourceCWProxyImpl(this._value);

  final CredentialAccountSource _value;

  @override
  CredentialAccountSource fields(List<Field> fields) => call(fields: fields);

  @override
  CredentialAccountSource followRequestsCount(int followRequestsCount) =>
      call(followRequestsCount: followRequestsCount);

  @override
  CredentialAccountSource indexable(bool indexable) =>
      call(indexable: indexable);

  @override
  CredentialAccountSource note(String note) => call(note: note);

  @override
  CredentialAccountSource privacy(StatusVisibilityEnum privacy) =>
      call(privacy: privacy);

  @override
  CredentialAccountSource sensitive(bool sensitive) =>
      call(sensitive: sensitive);

  @override
  CredentialAccountSource attributionDomains(
    List<String>? attributionDomains,
  ) => call(attributionDomains: attributionDomains);

  @override
  CredentialAccountSource discoverable(bool? discoverable) =>
      call(discoverable: discoverable);

  @override
  CredentialAccountSource hideCollections(bool? hideCollections) =>
      call(hideCollections: hideCollections);

  @override
  CredentialAccountSource language(String? language) =>
      call(language: language);

  @override
  CredentialAccountSource quotePolicy(
    ScheduledStatusParamsQuoteApprovalPolicyEnum? quotePolicy,
  ) => call(quotePolicy: quotePolicy);

  @override
  CredentialAccountSource spoilerField(bool? spoilerField) =>
      call(spoilerField: spoilerField);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CredentialAccountSource(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CredentialAccountSource(...).copyWith(id: 12, name: "My name")
  /// ```
  @override
  CredentialAccountSource call({
    Object? fields = const $CopyWithPlaceholder(),
    Object? followRequestsCount = const $CopyWithPlaceholder(),
    Object? indexable = const $CopyWithPlaceholder(),
    Object? note = const $CopyWithPlaceholder(),
    Object? privacy = const $CopyWithPlaceholder(),
    Object? sensitive = const $CopyWithPlaceholder(),
    Object? attributionDomains = const $CopyWithPlaceholder(),
    Object? discoverable = const $CopyWithPlaceholder(),
    Object? hideCollections = const $CopyWithPlaceholder(),
    Object? language = const $CopyWithPlaceholder(),
    Object? quotePolicy = const $CopyWithPlaceholder(),
    Object? spoilerField = const $CopyWithPlaceholder(),
  }) {
    return CredentialAccountSource(
      fields: fields == const $CopyWithPlaceholder() || fields == null
          ? _value.fields
          // ignore: cast_nullable_to_non_nullable
          : fields as List<Field>,
      followRequestsCount:
          followRequestsCount == const $CopyWithPlaceholder() ||
              followRequestsCount == null
          ? _value.followRequestsCount
          // ignore: cast_nullable_to_non_nullable
          : followRequestsCount as int,
      indexable: indexable == const $CopyWithPlaceholder() || indexable == null
          ? _value.indexable
          // ignore: cast_nullable_to_non_nullable
          : indexable as bool,
      note: note == const $CopyWithPlaceholder() || note == null
          ? _value.note
          // ignore: cast_nullable_to_non_nullable
          : note as String,
      privacy: privacy == const $CopyWithPlaceholder() || privacy == null
          ? _value.privacy
          // ignore: cast_nullable_to_non_nullable
          : privacy as StatusVisibilityEnum,
      sensitive: sensitive == const $CopyWithPlaceholder() || sensitive == null
          ? _value.sensitive
          // ignore: cast_nullable_to_non_nullable
          : sensitive as bool,
      attributionDomains: attributionDomains == const $CopyWithPlaceholder()
          ? _value.attributionDomains
          // ignore: cast_nullable_to_non_nullable
          : attributionDomains as List<String>?,
      discoverable: discoverable == const $CopyWithPlaceholder()
          ? _value.discoverable
          // ignore: cast_nullable_to_non_nullable
          : discoverable as bool?,
      hideCollections: hideCollections == const $CopyWithPlaceholder()
          ? _value.hideCollections
          // ignore: cast_nullable_to_non_nullable
          : hideCollections as bool?,
      language: language == const $CopyWithPlaceholder()
          ? _value.language
          // ignore: cast_nullable_to_non_nullable
          : language as String?,
      quotePolicy: quotePolicy == const $CopyWithPlaceholder()
          ? _value.quotePolicy
          // ignore: cast_nullable_to_non_nullable
          : quotePolicy as ScheduledStatusParamsQuoteApprovalPolicyEnum?,
      spoilerField: spoilerField == const $CopyWithPlaceholder()
          ? _value.spoilerField
          // ignore: cast_nullable_to_non_nullable
          : spoilerField as bool?,
    );
  }
}

extension $CredentialAccountSourceCopyWith on CredentialAccountSource {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCredentialAccountSource.copyWith(...)` or `instanceOfCredentialAccountSource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CredentialAccountSourceCWProxy get copyWith =>
      _$CredentialAccountSourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CredentialAccountSource _$CredentialAccountSourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'CredentialAccountSource',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'fields',
        'follow_requests_count',
        'indexable',
        'note',
        'privacy',
        'sensitive',
      ],
    );
    final val = CredentialAccountSource(
      fields: $checkedConvert(
        'fields',
        (v) => (v as List<dynamic>)
            .map((e) => Field.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      followRequestsCount: $checkedConvert(
        'follow_requests_count',
        (v) => (v as num).toInt(),
      ),
      indexable: $checkedConvert('indexable', (v) => v as bool),
      note: $checkedConvert('note', (v) => v as String),
      privacy: $checkedConvert(
        'privacy',
        (v) => $enumDecode(_$StatusVisibilityEnumEnumMap, v),
      ),
      sensitive: $checkedConvert('sensitive', (v) => v as bool),
      attributionDomains: $checkedConvert(
        'attribution_domains',
        (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
      ),
      discoverable: $checkedConvert('discoverable', (v) => v as bool?),
      hideCollections: $checkedConvert('hide_collections', (v) => v as bool?),
      language: $checkedConvert('language', (v) => v as String?),
      quotePolicy: $checkedConvert(
        'quote_policy',
        (v) => $enumDecodeNullable(
          _$ScheduledStatusParamsQuoteApprovalPolicyEnumEnumMap,
          v,
        ),
      ),
      spoilerField: $checkedConvert('spoiler_field', (v) => v as bool?),
    );
    return val;
  },
  fieldKeyMap: const {
    'followRequestsCount': 'follow_requests_count',
    'attributionDomains': 'attribution_domains',
    'hideCollections': 'hide_collections',
    'quotePolicy': 'quote_policy',
    'spoilerField': 'spoiler_field',
  },
);

Map<String, dynamic> _$CredentialAccountSourceToJson(
  CredentialAccountSource instance,
) => <String, dynamic>{
  'fields': instance.fields.map((e) => e.toJson()).toList(),
  'follow_requests_count': instance.followRequestsCount,
  'indexable': instance.indexable,
  'note': instance.note,
  'privacy': _$StatusVisibilityEnumEnumMap[instance.privacy]!,
  'sensitive': instance.sensitive,
  'attribution_domains': ?instance.attributionDomains,
  'discoverable': ?instance.discoverable,
  'hide_collections': ?instance.hideCollections,
  'language': ?instance.language,
  'quote_policy':
      ?_$ScheduledStatusParamsQuoteApprovalPolicyEnumEnumMap[instance
          .quotePolicy],
  'spoiler_field': ?instance.spoilerField,
};

const _$StatusVisibilityEnumEnumMap = {
  StatusVisibilityEnum.public: 'public',
  StatusVisibilityEnum.unlisted: 'unlisted',
  StatusVisibilityEnum.private: 'private',
  StatusVisibilityEnum.direct: 'direct',
};

const _$ScheduledStatusParamsQuoteApprovalPolicyEnumEnumMap = {
  ScheduledStatusParamsQuoteApprovalPolicyEnum.public: 'public',
  ScheduledStatusParamsQuoteApprovalPolicyEnum.followers: 'followers',
  ScheduledStatusParamsQuoteApprovalPolicyEnum.nobody: 'nobody',
};
