// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patch_account_update_credentials_request_fields_attributes_value.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PatchAccountUpdateCredentialsRequestFieldsAttributesValueCWProxy {
  PatchAccountUpdateCredentialsRequestFieldsAttributesValue name(String? name);

  PatchAccountUpdateCredentialsRequestFieldsAttributesValue value(
    String? value,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PatchAccountUpdateCredentialsRequestFieldsAttributesValue(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PatchAccountUpdateCredentialsRequestFieldsAttributesValue(...).copyWith(id: 12, name: "My name")
  /// ```
  PatchAccountUpdateCredentialsRequestFieldsAttributesValue call({
    String? name,
    String? value,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfPatchAccountUpdateCredentialsRequestFieldsAttributesValue.copyWith(...)` or call `instanceOfPatchAccountUpdateCredentialsRequestFieldsAttributesValue.copyWith.fieldName(value)` for a single field.
class _$PatchAccountUpdateCredentialsRequestFieldsAttributesValueCWProxyImpl
    implements
        _$PatchAccountUpdateCredentialsRequestFieldsAttributesValueCWProxy {
  const _$PatchAccountUpdateCredentialsRequestFieldsAttributesValueCWProxyImpl(
    this._value,
  );

  final PatchAccountUpdateCredentialsRequestFieldsAttributesValue _value;

  @override
  PatchAccountUpdateCredentialsRequestFieldsAttributesValue name(
    String? name,
  ) => call(name: name);

  @override
  PatchAccountUpdateCredentialsRequestFieldsAttributesValue value(
    String? value,
  ) => call(value: value);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PatchAccountUpdateCredentialsRequestFieldsAttributesValue(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PatchAccountUpdateCredentialsRequestFieldsAttributesValue(...).copyWith(id: 12, name: "My name")
  /// ```
  @override
  PatchAccountUpdateCredentialsRequestFieldsAttributesValue call({
    Object? name = const $CopyWithPlaceholder(),
    Object? value = const $CopyWithPlaceholder(),
  }) {
    return PatchAccountUpdateCredentialsRequestFieldsAttributesValue(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      value: value == const $CopyWithPlaceholder()
          ? _value.value
          // ignore: cast_nullable_to_non_nullable
          : value as String?,
    );
  }
}

extension $PatchAccountUpdateCredentialsRequestFieldsAttributesValueCopyWith
    on PatchAccountUpdateCredentialsRequestFieldsAttributesValue {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfPatchAccountUpdateCredentialsRequestFieldsAttributesValue.copyWith(...)` or `instanceOfPatchAccountUpdateCredentialsRequestFieldsAttributesValue.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PatchAccountUpdateCredentialsRequestFieldsAttributesValueCWProxy
  get copyWith =>
      _$PatchAccountUpdateCredentialsRequestFieldsAttributesValueCWProxyImpl(
        this,
      );
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchAccountUpdateCredentialsRequestFieldsAttributesValue
_$PatchAccountUpdateCredentialsRequestFieldsAttributesValueFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'PatchAccountUpdateCredentialsRequestFieldsAttributesValue',
  json,
  ($checkedConvert) {
    final val = PatchAccountUpdateCredentialsRequestFieldsAttributesValue(
      name: $checkedConvert('name', (v) => v as String?),
      value: $checkedConvert('value', (v) => v as String?),
    );
    return val;
  },
);

Map<String, dynamic>
_$PatchAccountUpdateCredentialsRequestFieldsAttributesValueToJson(
  PatchAccountUpdateCredentialsRequestFieldsAttributesValue instance,
) => <String, dynamic>{'name': ?instance.name, 'value': ?instance.value};
