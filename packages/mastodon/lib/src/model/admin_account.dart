//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon/src/model/role.dart';
import 'package:mastodon/src/model/admin_ip.dart';
import 'package:mastodon/src/model/account.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'admin_account.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AdminAccount {
  /// Returns a new [AdminAccount] instance.
  AdminAccount({
    required this.account,

    required this.approved,

    required this.confirmed,

    required this.createdAt,

    required this.disabled,

    required this.email,

    required this.id,

    required this.ips,

    required this.locale,

    required this.role,

    required this.sensitized,

    required this.silenced,

    required this.suspended,

    required this.username,

    this.createdByApplicationId,

    this.domain,

    this.inviteRequest,

    this.invitedByAccountId,

    this.ip,
  });

  /// User-level information about the account.
  @JsonKey(name: r'account', required: true, includeIfNull: false)
  final Account account;

  /// Whether the account is currently approved.
  @JsonKey(name: r'approved', required: true, includeIfNull: false)
  final bool approved;

  /// Whether the account has confirmed their email address.
  @JsonKey(name: r'confirmed', required: true, includeIfNull: false)
  final bool confirmed;

  /// When the account was first discovered.
  @JsonKey(name: r'created_at', required: true, includeIfNull: false)
  final DateTime createdAt;

  /// Whether the account is currently disabled.
  @JsonKey(name: r'disabled', required: true, includeIfNull: false)
  final bool disabled;

  /// The email address associated with the account.
  @JsonKey(name: r'email', required: true, includeIfNull: false)
  final String email;

  /// The ID of the account in the database.
  @JsonKey(name: r'id', required: true, includeIfNull: false)
  final String id;

  /// All known IP addresses associated with this account.
  @JsonKey(name: r'ips', required: true, includeIfNull: false)
  final List<AdminIp> ips;

  /// The locale of the account.
  @JsonKey(name: r'locale', required: true, includeIfNull: false)
  final String locale;

  /// The current role of the account.
  @JsonKey(name: r'role', required: true, includeIfNull: false)
  final Role role;

  /// Whether the account is currently marked sensitive.
  @JsonKey(name: r'sensitized', required: true, includeIfNull: false)
  final bool sensitized;

  /// Whether the account is currently silenced.
  @JsonKey(name: r'silenced', required: true, includeIfNull: false)
  final bool silenced;

  /// Whether the account is currently suspended.
  @JsonKey(name: r'suspended', required: true, includeIfNull: false)
  final bool suspended;

  /// The username of the account.
  @JsonKey(name: r'username', required: true, includeIfNull: false)
  final String username;

  /// The ID of the [Application](https://docs.joinmastodon.org/entities/application/) that created this account, if applicable.
  @JsonKey(
    name: r'created_by_application_id',
    required: false,
    includeIfNull: false,
  )
  final String? createdByApplicationId;

  /// The domain of the account, if it is remote.
  @JsonKey(name: r'domain', required: false, includeIfNull: false)
  final String? domain;

  /// The reason given when requesting an invite (for instances that require manual approval of registrations)
  @JsonKey(name: r'invite_request', required: false, includeIfNull: false)
  final String? inviteRequest;

  /// The ID of the [Account](https://docs.joinmastodon.org/entities/account/) that invited this user, if applicable.
  @JsonKey(
    name: r'invited_by_account_id',
    required: false,
    includeIfNull: false,
  )
  final String? invitedByAccountId;

  /// The IP address last used to login to this account.
  @JsonKey(name: r'ip', required: false, includeIfNull: false)
  final String? ip;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AdminAccount &&
          other.account == account &&
          other.approved == approved &&
          other.confirmed == confirmed &&
          other.createdAt == createdAt &&
          other.disabled == disabled &&
          other.email == email &&
          other.id == id &&
          other.ips == ips &&
          other.locale == locale &&
          other.role == role &&
          other.sensitized == sensitized &&
          other.silenced == silenced &&
          other.suspended == suspended &&
          other.username == username &&
          other.createdByApplicationId == createdByApplicationId &&
          other.domain == domain &&
          other.inviteRequest == inviteRequest &&
          other.invitedByAccountId == invitedByAccountId &&
          other.ip == ip;

  @override
  int get hashCode =>
      account.hashCode +
      approved.hashCode +
      confirmed.hashCode +
      createdAt.hashCode +
      disabled.hashCode +
      email.hashCode +
      id.hashCode +
      ips.hashCode +
      locale.hashCode +
      role.hashCode +
      sensitized.hashCode +
      silenced.hashCode +
      suspended.hashCode +
      username.hashCode +
      (createdByApplicationId == null ? 0 : createdByApplicationId.hashCode) +
      (domain == null ? 0 : domain.hashCode) +
      (inviteRequest == null ? 0 : inviteRequest.hashCode) +
      (invitedByAccountId == null ? 0 : invitedByAccountId.hashCode) +
      (ip == null ? 0 : ip.hashCode);

  factory AdminAccount.fromJson(Map<String, dynamic> json) =>
      _$AdminAccountFromJson(json);

  Map<String, dynamic> toJson() => _$AdminAccountToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
