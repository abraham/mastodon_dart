//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'account_state.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AccountState {
  /// Returns a new [AccountState] instance.
  AccountState({
    required this.approved,

    required this.confirmed,

    required this.functional,

    this.error,

    this.errorCode,
  });

  /// Whether the current account has been approved by a moderator.
  @JsonKey(name: r'approved', required: true, includeIfNull: false)
  final bool approved;

  /// Whether the current account has confirmed their email address.
  @JsonKey(name: r'confirmed', required: true, includeIfNull: false)
  final bool confirmed;

  /// Whether the current account is fully usable.
  @JsonKey(name: r'functional', required: true, includeIfNull: false)
  final bool functional;

  /// Localized string explaining why the account is not functional, if applicable.
  @JsonKey(name: r'error', required: false, includeIfNull: false)
  final String? error;

  /// Reason why the account is not functional, if applicable. Expressed as a code. Additional reasons can be added in the future.
  @JsonKey(name: r'error_code', required: false, includeIfNull: false)
  final String? errorCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AccountState &&
          other.approved == approved &&
          other.confirmed == confirmed &&
          other.functional == functional &&
          other.error == error &&
          other.errorCode == errorCode;

  @override
  int get hashCode =>
      approved.hashCode +
      confirmed.hashCode +
      functional.hashCode +
      (error == null ? 0 : error.hashCode) +
      (errorCode == null ? 0 : errorCode.hashCode);

  factory AccountState.fromJson(Map<String, dynamic> json) =>
      _$AccountStateFromJson(json);

  Map<String, dynamic> toJson() => _$AccountStateToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
