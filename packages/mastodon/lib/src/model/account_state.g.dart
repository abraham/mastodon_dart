// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AccountStateCWProxy {
  AccountState approved(bool approved);

  AccountState confirmed(bool confirmed);

  AccountState functional(bool functional);

  AccountState error(String? error);

  AccountState errorCode(String? errorCode);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AccountState(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AccountState(...).copyWith(id: 12, name: "My name")
  /// ```
  AccountState call({
    bool approved,
    bool confirmed,
    bool functional,
    String? error,
    String? errorCode,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfAccountState.copyWith(...)` or call `instanceOfAccountState.copyWith.fieldName(value)` for a single field.
class _$AccountStateCWProxyImpl implements _$AccountStateCWProxy {
  const _$AccountStateCWProxyImpl(this._value);

  final AccountState _value;

  @override
  AccountState approved(bool approved) => call(approved: approved);

  @override
  AccountState confirmed(bool confirmed) => call(confirmed: confirmed);

  @override
  AccountState functional(bool functional) => call(functional: functional);

  @override
  AccountState error(String? error) => call(error: error);

  @override
  AccountState errorCode(String? errorCode) => call(errorCode: errorCode);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AccountState(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AccountState(...).copyWith(id: 12, name: "My name")
  /// ```
  @override
  AccountState call({
    Object? approved = const $CopyWithPlaceholder(),
    Object? confirmed = const $CopyWithPlaceholder(),
    Object? functional = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? errorCode = const $CopyWithPlaceholder(),
  }) {
    return AccountState(
      approved: approved == const $CopyWithPlaceholder() || approved == null
          ? _value.approved
          // ignore: cast_nullable_to_non_nullable
          : approved as bool,
      confirmed: confirmed == const $CopyWithPlaceholder() || confirmed == null
          ? _value.confirmed
          // ignore: cast_nullable_to_non_nullable
          : confirmed as bool,
      functional:
          functional == const $CopyWithPlaceholder() || functional == null
          ? _value.functional
          // ignore: cast_nullable_to_non_nullable
          : functional as bool,
      error: error == const $CopyWithPlaceholder()
          ? _value.error
          // ignore: cast_nullable_to_non_nullable
          : error as String?,
      errorCode: errorCode == const $CopyWithPlaceholder()
          ? _value.errorCode
          // ignore: cast_nullable_to_non_nullable
          : errorCode as String?,
    );
  }
}

extension $AccountStateCopyWith on AccountState {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfAccountState.copyWith(...)` or `instanceOfAccountState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AccountStateCWProxy get copyWith => _$AccountStateCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountState _$AccountStateFromJson(Map<String, dynamic> json) =>
    $checkedCreate('AccountState', json, ($checkedConvert) {
      $checkKeys(
        json,
        requiredKeys: const ['approved', 'confirmed', 'functional'],
      );
      final val = AccountState(
        approved: $checkedConvert('approved', (v) => v as bool),
        confirmed: $checkedConvert('confirmed', (v) => v as bool),
        functional: $checkedConvert('functional', (v) => v as bool),
        error: $checkedConvert('error', (v) => v as String?),
        errorCode: $checkedConvert('error_code', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {'errorCode': 'error_code'});

Map<String, dynamic> _$AccountStateToJson(AccountState instance) =>
    <String, dynamic>{
      'approved': instance.approved,
      'confirmed': instance.confirmed,
      'functional': instance.functional,
      'error': ?instance.error,
      'error_code': ?instance.errorCode,
    };
