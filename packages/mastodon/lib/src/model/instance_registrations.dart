//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:core';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'instance_registrations.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class InstanceRegistrations {
  /// Returns a new [InstanceRegistrations] instance.
  InstanceRegistrations({
    required this.approvalRequired,

    required this.enabled,

    this.message,

    this.minAge,

    this.oauth,

    this.reasonRequired,

    this.url,
  });

  /// Whether registrations require moderator approval.
  @JsonKey(name: r'approval_required', required: true, includeIfNull: false)
  final bool approvalRequired;

  /// Whether registrations are enabled. This will be `false` if `registrations_mode` is `none` or if the server is in `single_user_mode`.
  @JsonKey(name: r'enabled', required: true, includeIfNull: false)
  final bool enabled;

  /// A custom message to be shown when registrations are closed. Will be `null` if registrations are open.
  @JsonKey(name: r'message', required: false, includeIfNull: false)
  final String? message;

  /// A minimum age required to register, if configured.
  @JsonKey(name: r'min_age', required: false, includeIfNull: false)
  final int? minAge;

  /// Signals whether the OAuth registration flow (`prompt=create`) is supported.
  @JsonKey(name: r'oauth', required: false, includeIfNull: false)
  final bool? oauth;

  /// Whether registrations require the user to provide a reason for joining. Only applicable when `registrations[approval_required]` is true.
  @JsonKey(name: r'reason_required', required: false, includeIfNull: false)
  final bool? reasonRequired;

  /// A custom URL for account registration, when using external authentication.
  @JsonKey(name: r'url', required: false, includeIfNull: false)
  final Uri? url;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InstanceRegistrations &&
          other.approvalRequired == approvalRequired &&
          other.enabled == enabled &&
          other.message == message &&
          other.minAge == minAge &&
          other.oauth == oauth &&
          other.reasonRequired == reasonRequired &&
          other.url == url;

  @override
  int get hashCode =>
      approvalRequired.hashCode +
      enabled.hashCode +
      (message == null ? 0 : message.hashCode) +
      (minAge == null ? 0 : minAge.hashCode) +
      (oauth == null ? 0 : oauth.hashCode) +
      (reasonRequired == null ? 0 : reasonRequired.hashCode) +
      (url == null ? 0 : url.hashCode);

  factory InstanceRegistrations.fromJson(Map<String, dynamic> json) =>
      _$InstanceRegistrationsFromJson(json);

  Map<String, dynamic> toJson() => _$InstanceRegistrationsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
