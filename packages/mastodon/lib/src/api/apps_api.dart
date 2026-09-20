//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

// ignore: unused_import
import 'dart:convert';
import 'package:mastodon/src/deserialize.dart';
import 'package:dio/dio.dart';

import 'package:mastodon/src/model/application.dart';
import 'package:mastodon/src/model/create_app_request.dart';
import 'package:mastodon/src/model/credential_application.dart';

class AppsApi {
  final Dio _dio;

  const AppsApi(this._dio);

  /// Create an application
  /// Create a new application to obtain OAuth2 credentials.  Version history:  0.0.0 - added\\ 2.7.2 - now returns &#x60;vapid_key&#x60;\\ 4.3.0 - deprecated &#x60;vapid_key&#x60;, please see [api/v2/instance]\\ 4.3.0 - added support for multiple &#x60;redirect_uris&#x60; in Form data parameters\\ 4.3.0 - added &#x60;redirect_uris&#x60; response property\\ 4.3.0 - deprecated &#x60;redirect_uri&#x60; response property, since this can be a non-URI if multiple &#x60;redirect_uris&#x60; are registered, use &#x60;redirect_uris&#x60; instead\\ 4.3.0 - changed entity type from [Application] to [CredentialApplication]\\ 4.4.0 - added &#x60;client_secret_expires_at&#x60;
  ///
  /// Parameters:
  /// * [createAppRequest] - JSON request body parameters
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [CredentialApplication] as data
  /// Throws [DioException] if API call or serialization fails
  /// Official Mastodon API documentation
  /// Also see [Create an application Documentation](https://docs.joinmastodon.org/methods/apps/#create)
  Future<Response<CredentialApplication>> createApp({
    required CreateAppRequest createAppRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v1/apps';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{'secure': <Map<String, String>>[], ...?extra},
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      _bodyData = jsonEncode(createAppRequest);
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

    CredentialApplication? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<CredentialApplication, CredentialApplication>(
              rawData,
              'CredentialApplication',
              growable: true,
            );
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<CredentialApplication>(
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

  /// Verify your app works
  /// Confirm that the app&#39;s OAuth2 credentials work.  Version history:  2.0.0 - added\\ 2.7.2 - now returns &#x60;vapid_key&#x60;\\ 4.3.0 - deprecated &#x60;vapid_key&#x60;, please see [api/v2/instance]\\ 4.3.0 - removed needing &#x60;read&#x60; scope to access this API, now any valid App token can be used\\ 4.3.0 - added &#x60;scopes&#x60; and &#x60;redirect_uris&#x60; properties
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Application] as data
  /// Throws [DioException] if API call or serialization fails
  /// Official Mastodon API documentation
  /// Also see [Verify your app works Documentation](https://docs.joinmastodon.org/methods/apps/#verify_credentials)
  Future<Response<Application>> getAppVerifyCredentials({
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v1/apps/verify_credentials';
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

    Application? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<Application, Application>(
              rawData,
              'Application',
              growable: true,
            );
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Application>(
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
