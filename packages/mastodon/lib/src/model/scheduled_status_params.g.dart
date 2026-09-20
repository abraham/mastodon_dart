// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduled_status_params.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ScheduledStatusParamsCWProxy {
  ScheduledStatusParams applicationId(
    @Deprecated('applicationId has been deprecated') int applicationId,
  );

  ScheduledStatusParams text(String text);

  ScheduledStatusParams visibility(StatusVisibilityEnum visibility);

  ScheduledStatusParams withRateLimit(
    @Deprecated('withRateLimit has been deprecated') bool withRateLimit,
  );

  ScheduledStatusParams idempotency(String? idempotency);

  ScheduledStatusParams inReplyToId(int? inReplyToId);

  ScheduledStatusParams language(String? language);

  ScheduledStatusParams mediaIds(List<String>? mediaIds);

  ScheduledStatusParams poll(ScheduledStatusParamsPoll? poll);

  ScheduledStatusParams quoteApprovalPolicy(
    ScheduledStatusParamsQuoteApprovalPolicyEnum? quoteApprovalPolicy,
  );

  ScheduledStatusParams quotedStatusId(String? quotedStatusId);

  ScheduledStatusParams scheduledAt(Object? scheduledAt);

  ScheduledStatusParams sensitive(bool? sensitive);

  ScheduledStatusParams spoilerText(String? spoilerText);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ScheduledStatusParams(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ScheduledStatusParams(...).copyWith(id: 12, name: "My name")
  /// ```
  ScheduledStatusParams call({
    @Deprecated('applicationId has been deprecated') int applicationId,
    String text,
    StatusVisibilityEnum visibility,
    @Deprecated('withRateLimit has been deprecated') bool withRateLimit,
    String? idempotency,
    int? inReplyToId,
    String? language,
    List<String>? mediaIds,
    ScheduledStatusParamsPoll? poll,
    ScheduledStatusParamsQuoteApprovalPolicyEnum? quoteApprovalPolicy,
    String? quotedStatusId,
    Object? scheduledAt,
    bool? sensitive,
    String? spoilerText,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfScheduledStatusParams.copyWith(...)` or call `instanceOfScheduledStatusParams.copyWith.fieldName(value)` for a single field.
class _$ScheduledStatusParamsCWProxyImpl
    implements _$ScheduledStatusParamsCWProxy {
  const _$ScheduledStatusParamsCWProxyImpl(this._value);

  final ScheduledStatusParams _value;

  @override
  ScheduledStatusParams applicationId(
    @Deprecated('applicationId has been deprecated') int applicationId,
  ) => call(applicationId: applicationId);

  @override
  ScheduledStatusParams text(String text) => call(text: text);

  @override
  ScheduledStatusParams visibility(StatusVisibilityEnum visibility) =>
      call(visibility: visibility);

  @override
  ScheduledStatusParams withRateLimit(
    @Deprecated('withRateLimit has been deprecated') bool withRateLimit,
  ) => call(withRateLimit: withRateLimit);

  @override
  ScheduledStatusParams idempotency(String? idempotency) =>
      call(idempotency: idempotency);

  @override
  ScheduledStatusParams inReplyToId(int? inReplyToId) =>
      call(inReplyToId: inReplyToId);

  @override
  ScheduledStatusParams language(String? language) => call(language: language);

  @override
  ScheduledStatusParams mediaIds(List<String>? mediaIds) =>
      call(mediaIds: mediaIds);

  @override
  ScheduledStatusParams poll(ScheduledStatusParamsPoll? poll) =>
      call(poll: poll);

  @override
  ScheduledStatusParams quoteApprovalPolicy(
    ScheduledStatusParamsQuoteApprovalPolicyEnum? quoteApprovalPolicy,
  ) => call(quoteApprovalPolicy: quoteApprovalPolicy);

  @override
  ScheduledStatusParams quotedStatusId(String? quotedStatusId) =>
      call(quotedStatusId: quotedStatusId);

  @override
  ScheduledStatusParams scheduledAt(Object? scheduledAt) =>
      call(scheduledAt: scheduledAt);

  @override
  ScheduledStatusParams sensitive(bool? sensitive) =>
      call(sensitive: sensitive);

  @override
  ScheduledStatusParams spoilerText(String? spoilerText) =>
      call(spoilerText: spoilerText);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ScheduledStatusParams(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ScheduledStatusParams(...).copyWith(id: 12, name: "My name")
  /// ```
  @override
  ScheduledStatusParams call({
    @Deprecated('applicationId has been deprecated')
    Object? applicationId = const $CopyWithPlaceholder(),
    Object? text = const $CopyWithPlaceholder(),
    Object? visibility = const $CopyWithPlaceholder(),
    @Deprecated('withRateLimit has been deprecated')
    Object? withRateLimit = const $CopyWithPlaceholder(),
    Object? idempotency = const $CopyWithPlaceholder(),
    Object? inReplyToId = const $CopyWithPlaceholder(),
    Object? language = const $CopyWithPlaceholder(),
    Object? mediaIds = const $CopyWithPlaceholder(),
    Object? poll = const $CopyWithPlaceholder(),
    Object? quoteApprovalPolicy = const $CopyWithPlaceholder(),
    Object? quotedStatusId = const $CopyWithPlaceholder(),
    Object? scheduledAt = const $CopyWithPlaceholder(),
    Object? sensitive = const $CopyWithPlaceholder(),
    Object? spoilerText = const $CopyWithPlaceholder(),
  }) {
    return ScheduledStatusParams(
      applicationId:
          applicationId == const $CopyWithPlaceholder() || applicationId == null
          ? _value.applicationId
          // ignore: cast_nullable_to_non_nullable
          : applicationId as int,
      text: text == const $CopyWithPlaceholder() || text == null
          ? _value.text
          // ignore: cast_nullable_to_non_nullable
          : text as String,
      visibility:
          visibility == const $CopyWithPlaceholder() || visibility == null
          ? _value.visibility
          // ignore: cast_nullable_to_non_nullable
          : visibility as StatusVisibilityEnum,
      withRateLimit:
          withRateLimit == const $CopyWithPlaceholder() || withRateLimit == null
          ? _value.withRateLimit
          // ignore: cast_nullable_to_non_nullable
          : withRateLimit as bool,
      idempotency: idempotency == const $CopyWithPlaceholder()
          ? _value.idempotency
          // ignore: cast_nullable_to_non_nullable
          : idempotency as String?,
      inReplyToId: inReplyToId == const $CopyWithPlaceholder()
          ? _value.inReplyToId
          // ignore: cast_nullable_to_non_nullable
          : inReplyToId as int?,
      language: language == const $CopyWithPlaceholder()
          ? _value.language
          // ignore: cast_nullable_to_non_nullable
          : language as String?,
      mediaIds: mediaIds == const $CopyWithPlaceholder()
          ? _value.mediaIds
          // ignore: cast_nullable_to_non_nullable
          : mediaIds as List<String>?,
      poll: poll == const $CopyWithPlaceholder()
          ? _value.poll
          // ignore: cast_nullable_to_non_nullable
          : poll as ScheduledStatusParamsPoll?,
      quoteApprovalPolicy: quoteApprovalPolicy == const $CopyWithPlaceholder()
          ? _value.quoteApprovalPolicy
          // ignore: cast_nullable_to_non_nullable
          : quoteApprovalPolicy
                as ScheduledStatusParamsQuoteApprovalPolicyEnum?,
      quotedStatusId: quotedStatusId == const $CopyWithPlaceholder()
          ? _value.quotedStatusId
          // ignore: cast_nullable_to_non_nullable
          : quotedStatusId as String?,
      scheduledAt: scheduledAt == const $CopyWithPlaceholder()
          ? _value.scheduledAt
          // ignore: cast_nullable_to_non_nullable
          : scheduledAt as Object?,
      sensitive: sensitive == const $CopyWithPlaceholder()
          ? _value.sensitive
          // ignore: cast_nullable_to_non_nullable
          : sensitive as bool?,
      spoilerText: spoilerText == const $CopyWithPlaceholder()
          ? _value.spoilerText
          // ignore: cast_nullable_to_non_nullable
          : spoilerText as String?,
    );
  }
}

extension $ScheduledStatusParamsCopyWith on ScheduledStatusParams {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfScheduledStatusParams.copyWith(...)` or `instanceOfScheduledStatusParams.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ScheduledStatusParamsCWProxy get copyWith =>
      _$ScheduledStatusParamsCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScheduledStatusParams _$ScheduledStatusParamsFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ScheduledStatusParams',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'application_id',
        'text',
        'visibility',
        'with_rate_limit',
      ],
    );
    final val = ScheduledStatusParams(
      applicationId: $checkedConvert(
        'application_id',
        (v) => (v as num).toInt(),
      ),
      text: $checkedConvert('text', (v) => v as String),
      visibility: $checkedConvert(
        'visibility',
        (v) => $enumDecode(_$StatusVisibilityEnumEnumMap, v),
      ),
      withRateLimit: $checkedConvert('with_rate_limit', (v) => v as bool),
      idempotency: $checkedConvert('idempotency', (v) => v as String?),
      inReplyToId: $checkedConvert(
        'in_reply_to_id',
        (v) => (v as num?)?.toInt(),
      ),
      language: $checkedConvert('language', (v) => v as String?),
      mediaIds: $checkedConvert(
        'media_ids',
        (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
      ),
      poll: $checkedConvert(
        'poll',
        (v) => v == null
            ? null
            : ScheduledStatusParamsPoll.fromJson(v as Map<String, dynamic>),
      ),
      quoteApprovalPolicy: $checkedConvert(
        'quote_approval_policy',
        (v) => $enumDecodeNullable(
          _$ScheduledStatusParamsQuoteApprovalPolicyEnumEnumMap,
          v,
        ),
      ),
      quotedStatusId: $checkedConvert('quoted_status_id', (v) => v as String?),
      scheduledAt: $checkedConvert('scheduled_at', (v) => v),
      sensitive: $checkedConvert('sensitive', (v) => v as bool?),
      spoilerText: $checkedConvert('spoiler_text', (v) => v as String?),
    );
    return val;
  },
  fieldKeyMap: const {
    'applicationId': 'application_id',
    'withRateLimit': 'with_rate_limit',
    'inReplyToId': 'in_reply_to_id',
    'mediaIds': 'media_ids',
    'quoteApprovalPolicy': 'quote_approval_policy',
    'quotedStatusId': 'quoted_status_id',
    'scheduledAt': 'scheduled_at',
    'spoilerText': 'spoiler_text',
  },
);

Map<String, dynamic> _$ScheduledStatusParamsToJson(
  ScheduledStatusParams instance,
) => <String, dynamic>{
  'application_id': instance.applicationId,
  'text': instance.text,
  'visibility': _$StatusVisibilityEnumEnumMap[instance.visibility]!,
  'with_rate_limit': instance.withRateLimit,
  'idempotency': ?instance.idempotency,
  'in_reply_to_id': ?instance.inReplyToId,
  'language': ?instance.language,
  'media_ids': ?instance.mediaIds,
  'poll': ?instance.poll?.toJson(),
  'quote_approval_policy':
      ?_$ScheduledStatusParamsQuoteApprovalPolicyEnumEnumMap[instance
          .quoteApprovalPolicy],
  'quoted_status_id': ?instance.quotedStatusId,
  'scheduled_at': ?instance.scheduledAt,
  'sensitive': ?instance.sensitive,
  'spoiler_text': ?instance.spoilerText,
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
