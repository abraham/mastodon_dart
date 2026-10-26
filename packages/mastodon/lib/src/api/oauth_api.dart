//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

// ignore: unused_import
import 'dart:convert';
import 'package:mastodon/src/deserialize.dart';
import 'package:dio/dio.dart';

import 'package:mastodon/src/model/post_oauth_revoke_request.dart';
import 'package:mastodon/src/model/post_oauth_token_request.dart';
import 'package:mastodon/src/model/token.dart';

class OauthApi {
  final Dio _dio;

  const OauthApi(this._dio);

  /// Authorize a user
  /// Displays an authorization form to the user. If approved, it will create and return an authorization code, then redirect to the desired &#x60;redirect_uri&#x60;, or show the authorization code if &#x60;urn:ietf:wg:oauth:2.0:oob&#x60; was requested. The authorization code can be used while requesting a token to obtain access to user-level methods.  Version history:  0.1.0 - added\\ 2.6.0 - added &#x60;force_login&#x60;\\ 3.5.0 - added &#x60;lang&#x60;\\ 4.3.0 - added support for PKCE parameters\\ 5.0.0 - added &#x60;prompt&#x60; and &#x60;invite_code&#x60; parameters
  ///
  /// Parameters:
  /// * [clientId] - The client ID, obtained during app registration.
  /// * [redirectUri] - Set a URI to redirect the user to. If this parameter is set to `urn:ietf:wg:oauth:2.0:oob` then the authorization code will be shown instead. Must match one of the `redirect_uris` declared during app registration.
  /// * [responseType] - Should be set equal to `code`.
  /// * [codeChallenge] - The [PKCE code challenge] for the authorization request.
  /// * [codeChallengeMethod] - Must be `S256`, as this is the only code challenge method that is supported by Mastodon for PKCE.
  /// * [forceLogin] - Forces the user to re-login, which is necessary for authorizing with multiple accounts from the same instance.
  /// * [inviteCode] - Invitation code, to be used with `prompt=create` when following an invitation to sign-up. The invite code is the last path segment of Mastodon invite URLs of the form `https://example.com/invite/:invite_code`.
  /// * [lang] - The ISO 639-1 two-letter language code to use while rendering the authorization form.
  /// * [prompt] - String (Enumerable, oneOf `create` or `login`). OpenID Connect `prompt`. `create` = Enter sign-up flow instead of log-in. If the user is already logged in, they will be asked to log out first. `login` = Require the user to log-in again. If they are already logged in, they will be asked to log out first.
  /// * [scope] - List of requested [OAuth scopes], separated by spaces (or by pluses, if using query parameters). Must be a subset of `scopes` declared during app registration. If not provided, defaults to `read`.
  /// * [state] - Arbitrary value to pass through to your server when the user authorizes or rejects the authorization request.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  /// Official Mastodon API documentation
  /// Also see [Authorize a user Documentation](https://docs.joinmastodon.org/methods/oauth/#authorize)
  Future<Response<void>> getOauthAuthorize({
    required String clientId,
    required String redirectUri,
    required String responseType,
    String? codeChallenge,
    String? codeChallengeMethod,
    bool? forceLogin,
    String? inviteCode,
    String? lang,
    String? prompt,
    String? scope = 'read',
    String? state,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/oauth/authorize';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{'secure': <Map<String, String>>[], ...?extra},
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      r'client_id': clientId,
      r'redirect_uri': redirectUri,
      r'response_type': responseType,
      if (codeChallenge != null) r'code_challenge': codeChallenge,
      if (codeChallengeMethod != null)
        r'code_challenge_method': codeChallengeMethod,
      if (forceLogin != null) r'force_login': forceLogin,
      if (inviteCode != null) r'invite_code': inviteCode,
      if (lang != null) r'lang': lang,
      if (prompt != null) r'prompt': prompt,
      if (scope != null) r'scope': scope,
      if (state != null) r'state': state,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// Retrieve user information
  /// Retrieves standardised OIDC [claims](https://www.iana.org/assignments/jwt/jwt.xhtml#claims) about the currently authenticated user.\\  Version history:  4.4.0 - added
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  /// Official Mastodon API documentation
  /// Also see [Retrieve user information Documentation](https://docs.joinmastodon.org/methods/oauth/#userinfo)
  Future<Response<void>> getOauthUserinfo({
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/oauth/userinfo';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {'type': 'oauth2', 'name': 'OAuth2'},
          {'type': 'oauth2', 'name': 'OAuth2'},
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// Revoke a token
  /// Revoke an access token to make it no longer valid for use.  Version history:  0.1.0 - added
  ///
  /// Parameters:
  /// * [postOauthRevokeRequest] - JSON request body parameters
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  /// Official Mastodon API documentation
  /// Also see [Revoke a token Documentation](https://docs.joinmastodon.org/methods/oauth/#revoke)
  Future<Response<void>> postOauthRevoke({
    required PostOauthRevokeRequest postOauthRevokeRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/oauth/revoke';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{'secure': <Map<String, String>>[], ...?extra},
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      _bodyData = jsonEncode(postOauthRevokeRequest);
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _options.compose(_dio.options, _path),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// Obtain a token
  /// Obtain an access token, to be used during API calls that are not public.  Version history:  0.1.0 - added\\ 4.3.0 - added support for PKCE parameter
  ///
  /// Parameters:
  /// * [postOauthTokenRequest] - JSON request body parameters
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Token] as data
  /// Throws [DioException] if API call or serialization fails
  /// Official Mastodon API documentation
  /// Also see [Obtain a token Documentation](https://docs.joinmastodon.org/methods/oauth/#token)
  Future<Response<Token>> postOauthToken({
    required PostOauthTokenRequest postOauthTokenRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/oauth/token';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{'secure': <Map<String, String>>[], ...?extra},
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      _bodyData = jsonEncode(postOauthTokenRequest);
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _options.compose(_dio.options, _path),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Token? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<Token, Token>(rawData, 'Token', growable: true);
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Token>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }
}
