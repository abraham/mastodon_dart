//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon/src/model/o_auth_scope.dart';
import 'dart:core';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'discover_oauth_server_configuration_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DiscoverOauthServerConfigurationResponse {
  /// Returns a new [DiscoverOauthServerConfigurationResponse] instance.
  DiscoverOauthServerConfigurationResponse({
    required this.appRegistrationEndpoint,

    required this.authorizationEndpoint,

    required this.codeChallengeMethodsSupported,

    required this.grantTypesSupported,

    required this.issuer,

    required this.promptValuesSupported,

    required this.responseModesSupported,

    required this.responseTypesSupported,

    required this.revocationEndpoint,

    required this.scopesSupported,

    required this.serviceDocumentation,

    required this.tokenEndpoint,

    required this.tokenEndpointAuthMethodsSupported,

    required this.userinfoEndpoint,
  });

  /// app_registration_endpoint field
  @JsonKey(
    name: r'app_registration_endpoint',
    required: true,
    includeIfNull: false,
  )
  final Uri appRegistrationEndpoint;

  /// authorization_endpoint field
  @JsonKey(
    name: r'authorization_endpoint',
    required: true,
    includeIfNull: false,
  )
  final Uri authorizationEndpoint;

  /// Array of code_challenge_methods_supported
  @JsonKey(
    name: r'code_challenge_methods_supported',
    required: true,
    includeIfNull: false,
  )
  final List<String> codeChallengeMethodsSupported;

  /// Array of grant_types_supported
  @JsonKey(name: r'grant_types_supported', required: true, includeIfNull: false)
  final List<String> grantTypesSupported;

  /// issuer field
  @JsonKey(name: r'issuer', required: true, includeIfNull: false)
  final Uri issuer;

  /// Array of prompt_values_supported
  @JsonKey(
    name: r'prompt_values_supported',
    required: true,
    includeIfNull: false,
  )
  final List<String> promptValuesSupported;

  /// Array of response_modes_supported
  @JsonKey(
    name: r'response_modes_supported',
    required: true,
    includeIfNull: false,
  )
  final List<String> responseModesSupported;

  /// Array of response_types_supported
  @JsonKey(
    name: r'response_types_supported',
    required: true,
    includeIfNull: false,
  )
  final List<String> responseTypesSupported;

  /// revocation_endpoint field
  @JsonKey(name: r'revocation_endpoint', required: true, includeIfNull: false)
  final Uri revocationEndpoint;

  /// Array of scopes_supported
  @JsonKey(name: r'scopes_supported', required: true, includeIfNull: false)
  final List<OAuthScope> scopesSupported;

  /// service_documentation field
  @JsonKey(name: r'service_documentation', required: true, includeIfNull: false)
  final Uri serviceDocumentation;

  /// token_endpoint field
  @JsonKey(name: r'token_endpoint', required: true, includeIfNull: false)
  final Uri tokenEndpoint;

  /// Array of token_endpoint_auth_methods_supported
  @JsonKey(
    name: r'token_endpoint_auth_methods_supported',
    required: true,
    includeIfNull: false,
  )
  final List<String> tokenEndpointAuthMethodsSupported;

  /// userinfo_endpoint field
  @JsonKey(name: r'userinfo_endpoint', required: true, includeIfNull: false)
  final Uri userinfoEndpoint;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DiscoverOauthServerConfigurationResponse &&
          other.appRegistrationEndpoint == appRegistrationEndpoint &&
          other.authorizationEndpoint == authorizationEndpoint &&
          other.codeChallengeMethodsSupported ==
              codeChallengeMethodsSupported &&
          other.grantTypesSupported == grantTypesSupported &&
          other.issuer == issuer &&
          other.promptValuesSupported == promptValuesSupported &&
          other.responseModesSupported == responseModesSupported &&
          other.responseTypesSupported == responseTypesSupported &&
          other.revocationEndpoint == revocationEndpoint &&
          other.scopesSupported == scopesSupported &&
          other.serviceDocumentation == serviceDocumentation &&
          other.tokenEndpoint == tokenEndpoint &&
          other.tokenEndpointAuthMethodsSupported ==
              tokenEndpointAuthMethodsSupported &&
          other.userinfoEndpoint == userinfoEndpoint;

  @override
  int get hashCode =>
      appRegistrationEndpoint.hashCode +
      authorizationEndpoint.hashCode +
      codeChallengeMethodsSupported.hashCode +
      grantTypesSupported.hashCode +
      issuer.hashCode +
      promptValuesSupported.hashCode +
      responseModesSupported.hashCode +
      responseTypesSupported.hashCode +
      revocationEndpoint.hashCode +
      scopesSupported.hashCode +
      serviceDocumentation.hashCode +
      tokenEndpoint.hashCode +
      tokenEndpointAuthMethodsSupported.hashCode +
      userinfoEndpoint.hashCode;

  factory DiscoverOauthServerConfigurationResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$DiscoverOauthServerConfigurationResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DiscoverOauthServerConfigurationResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
