// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_configuration_vapid.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$InstanceConfigurationVapidCWProxy {
  InstanceConfigurationVapid publicKey(String publicKey);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `InstanceConfigurationVapid(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// InstanceConfigurationVapid(...).copyWith(id: 12, name: "My name")
  /// ```
  InstanceConfigurationVapid call({String publicKey});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfInstanceConfigurationVapid.copyWith(...)` or call `instanceOfInstanceConfigurationVapid.copyWith.fieldName(value)` for a single field.
class _$InstanceConfigurationVapidCWProxyImpl
    implements _$InstanceConfigurationVapidCWProxy {
  const _$InstanceConfigurationVapidCWProxyImpl(this._value);

  final InstanceConfigurationVapid _value;

  @override
  InstanceConfigurationVapid publicKey(String publicKey) =>
      call(publicKey: publicKey);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `InstanceConfigurationVapid(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// InstanceConfigurationVapid(...).copyWith(id: 12, name: "My name")
  /// ```
  @override
  InstanceConfigurationVapid call({
    Object? publicKey = const $CopyWithPlaceholder(),
  }) {
    return InstanceConfigurationVapid(
      publicKey: publicKey == const $CopyWithPlaceholder() || publicKey == null
          ? _value.publicKey
          // ignore: cast_nullable_to_non_nullable
          : publicKey as String,
    );
  }
}

extension $InstanceConfigurationVapidCopyWith on InstanceConfigurationVapid {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfInstanceConfigurationVapid.copyWith(...)` or `instanceOfInstanceConfigurationVapid.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$InstanceConfigurationVapidCWProxy get copyWith =>
      _$InstanceConfigurationVapidCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InstanceConfigurationVapid _$InstanceConfigurationVapidFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('InstanceConfigurationVapid', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['public_key']);
  final val = InstanceConfigurationVapid(
    publicKey: $checkedConvert('public_key', (v) => v as String),
  );
  return val;
}, fieldKeyMap: const {'publicKey': 'public_key'});

Map<String, dynamic> _$InstanceConfigurationVapidToJson(
  InstanceConfigurationVapid instance,
) => <String, dynamic>{'public_key': instance.publicKey};
