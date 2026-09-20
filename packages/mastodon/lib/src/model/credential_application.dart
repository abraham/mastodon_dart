//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon/src/model/o_auth_scope.dart';
import 'dart:core';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'credential_application.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CredentialApplication {
  /// Returns a new [CredentialApplication] instance.
  CredentialApplication({
    required this.clientId,

    required this.clientSecret,

    required this.id,

    required this.name,

    required this.redirectUri,

    required this.redirectUris,

    required this.scopes,

    required this.vapidKey,

    this.clientSecretExpiresAt,

    this.website,
  });

  /// Client ID key, to be used for obtaining OAuth tokens.
  @JsonKey(name: r'client_id', required: true, includeIfNull: false)
  final String clientId;

  /// Client secret key, to be used for obtaining OAuth tokens.
  @JsonKey(name: r'client_secret', required: true, includeIfNull: false)
  final String clientSecret;

  /// The numeric ID of the application.
  @JsonKey(name: r'id', required: true, includeIfNull: false)
  final String id;

  /// The name of the application.
  @JsonKey(name: r'name', required: true, includeIfNull: false)
  final String name;

  /// The registered redirection URI(s) for the application stored as a single string. Multiple URIs are separated by whitespace characters. May contain `\\n` characters when multiple redirect URIs are registered.
  @Deprecated('redirectUri has been deprecated')
  @JsonKey(name: r'redirect_uri', required: true, includeIfNull: false)
  final String redirectUri;

  /// The registered redirection URI(s) for the application.
  @JsonKey(name: r'redirect_uris', required: true, includeIfNull: false)
  final List<Uri> redirectUris;

  /// The scopes for the application. This is the registered `scopes` string split on whitespace.
  @JsonKey(name: r'scopes', required: true, includeIfNull: false)
  final List<OAuthScope> scopes;

  /// Used for Push Streaming API. Returned with [POST /api/v1/apps](https://docs.joinmastodon.org/methods/apps/#create). Equivalent to [WebPushSubscription#server_key](https://docs.joinmastodon.org/entities/WebPushSubscription/#server_key) and [Instance#vapid_public_key](https://docs.joinmastodon.org/entities/Instance/#vapid_public_key)
  @Deprecated('vapidKey has been deprecated')
  @JsonKey(name: r'vapid_key', required: true, includeIfNull: false)
  final String vapidKey;

  /// When the client secret key will expire. Presently this always returns `0` indicating that OAuth Clients do not expire.
  @JsonKey(
    name: r'client_secret_expires_at',
    required: false,
    includeIfNull: false,
  )
  final int? clientSecretExpiresAt;

  /// The website associated with the application.
  @JsonKey(name: r'website', required: false, includeIfNull: false)
  final Uri? website;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CredentialApplication &&
          other.clientId == clientId &&
          other.clientSecret == clientSecret &&
          other.id == id &&
          other.name == name &&
          other.redirectUri == redirectUri &&
          other.redirectUris == redirectUris &&
          other.scopes == scopes &&
          other.vapidKey == vapidKey &&
          other.clientSecretExpiresAt == clientSecretExpiresAt &&
          other.website == website;

  @override
  int get hashCode =>
      clientId.hashCode +
      clientSecret.hashCode +
      id.hashCode +
      name.hashCode +
      redirectUri.hashCode +
      redirectUris.hashCode +
      scopes.hashCode +
      vapidKey.hashCode +
      (clientSecretExpiresAt == null ? 0 : clientSecretExpiresAt.hashCode) +
      (website == null ? 0 : website.hashCode);

  factory CredentialApplication.fromJson(Map<String, dynamic> json) =>
      _$CredentialApplicationFromJson(json);

  Map<String, dynamic> toJson() => _$CredentialApplicationToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
