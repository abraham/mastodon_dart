// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_registrations.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$InstanceRegistrationsCWProxy {
  InstanceRegistrations approvalRequired(bool approvalRequired);

  InstanceRegistrations enabled(bool enabled);

  InstanceRegistrations message(String? message);

  InstanceRegistrations minAge(int? minAge);

  InstanceRegistrations oauth(bool? oauth);

  InstanceRegistrations reasonRequired(bool? reasonRequired);

  InstanceRegistrations url(Uri? url);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `InstanceRegistrations(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// InstanceRegistrations(...).copyWith(id: 12, name: "My name")
  /// ```
  InstanceRegistrations call({
    bool approvalRequired,
    bool enabled,
    String? message,
    int? minAge,
    bool? oauth,
    bool? reasonRequired,
    Uri? url,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfInstanceRegistrations.copyWith(...)` or call `instanceOfInstanceRegistrations.copyWith.fieldName(value)` for a single field.
class _$InstanceRegistrationsCWProxyImpl
    implements _$InstanceRegistrationsCWProxy {
  const _$InstanceRegistrationsCWProxyImpl(this._value);

  final InstanceRegistrations _value;

  @override
  InstanceRegistrations approvalRequired(bool approvalRequired) =>
      call(approvalRequired: approvalRequired);

  @override
  InstanceRegistrations enabled(bool enabled) => call(enabled: enabled);

  @override
  InstanceRegistrations message(String? message) => call(message: message);

  @override
  InstanceRegistrations minAge(int? minAge) => call(minAge: minAge);

  @override
  InstanceRegistrations oauth(bool? oauth) => call(oauth: oauth);

  @override
  InstanceRegistrations reasonRequired(bool? reasonRequired) =>
      call(reasonRequired: reasonRequired);

  @override
  InstanceRegistrations url(Uri? url) => call(url: url);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `InstanceRegistrations(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// InstanceRegistrations(...).copyWith(id: 12, name: "My name")
  /// ```
  @override
  InstanceRegistrations call({
    Object? approvalRequired = const $CopyWithPlaceholder(),
    Object? enabled = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? minAge = const $CopyWithPlaceholder(),
    Object? oauth = const $CopyWithPlaceholder(),
    Object? reasonRequired = const $CopyWithPlaceholder(),
    Object? url = const $CopyWithPlaceholder(),
  }) {
    return InstanceRegistrations(
      approvalRequired:
          approvalRequired == const $CopyWithPlaceholder() ||
              approvalRequired == null
          ? _value.approvalRequired
          // ignore: cast_nullable_to_non_nullable
          : approvalRequired as bool,
      enabled: enabled == const $CopyWithPlaceholder() || enabled == null
          ? _value.enabled
          // ignore: cast_nullable_to_non_nullable
          : enabled as bool,
      message: message == const $CopyWithPlaceholder()
          ? _value.message
          // ignore: cast_nullable_to_non_nullable
          : message as String?,
      minAge: minAge == const $CopyWithPlaceholder()
          ? _value.minAge
          // ignore: cast_nullable_to_non_nullable
          : minAge as int?,
      oauth: oauth == const $CopyWithPlaceholder()
          ? _value.oauth
          // ignore: cast_nullable_to_non_nullable
          : oauth as bool?,
      reasonRequired: reasonRequired == const $CopyWithPlaceholder()
          ? _value.reasonRequired
          // ignore: cast_nullable_to_non_nullable
          : reasonRequired as bool?,
      url: url == const $CopyWithPlaceholder()
          ? _value.url
          // ignore: cast_nullable_to_non_nullable
          : url as Uri?,
    );
  }
}

extension $InstanceRegistrationsCopyWith on InstanceRegistrations {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfInstanceRegistrations.copyWith(...)` or `instanceOfInstanceRegistrations.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$InstanceRegistrationsCWProxy get copyWith =>
      _$InstanceRegistrationsCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InstanceRegistrations _$InstanceRegistrationsFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'InstanceRegistrations',
  json,
  ($checkedConvert) {
    $checkKeys(json, requiredKeys: const ['approval_required', 'enabled']);
    final val = InstanceRegistrations(
      approvalRequired: $checkedConvert('approval_required', (v) => v as bool),
      enabled: $checkedConvert('enabled', (v) => v as bool),
      message: $checkedConvert('message', (v) => v as String?),
      minAge: $checkedConvert('min_age', (v) => (v as num?)?.toInt()),
      oauth: $checkedConvert('oauth', (v) => v as bool?),
      reasonRequired: $checkedConvert('reason_required', (v) => v as bool?),
      url: $checkedConvert(
        'url',
        (v) => v == null ? null : Uri.parse(v as String),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'approvalRequired': 'approval_required',
    'minAge': 'min_age',
    'reasonRequired': 'reason_required',
  },
);

Map<String, dynamic> _$InstanceRegistrationsToJson(
  InstanceRegistrations instance,
) => <String, dynamic>{
  'approval_required': instance.approvalRequired,
  'enabled': instance.enabled,
  'message': ?instance.message,
  'min_age': ?instance.minAge,
  'oauth': ?instance.oauth,
  'reason_required': ?instance.reasonRequired,
  'url': ?instance.url?.toString(),
};
