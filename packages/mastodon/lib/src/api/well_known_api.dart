//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

// ignore: unused_import
import 'dart:convert';
import 'package:mastodon/src/deserialize.dart';
import 'package:dio/dio.dart';

import 'package:mastodon/src/model/discover_oauth_server_configuration_response.dart';

class WellKnownApi {
  final Dio _dio;

  const WellKnownApi(this._dio);

  /// Discover OAuth Server Configuration
  /// Returns the OAuth 2 Authorization Server Metadata for the Mastodon server, as defined by [RFC 8414](https://datatracker.ietf.org/doc/html/rfc8414#section-3.2).  Version history:  4.3.0 - added\\ 4.4.0 - added &#x60;userinfo_endpoint&#x60;\\ 5.0.0 - added &#x60;prompt_values_supported&#x60;
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [DiscoverOauthServerConfigurationResponse] as data
  /// Throws [DioException] if API call or serialization fails
  /// Official Mastodon API documentation
  /// Also see [Discover OAuth Server Configuration Documentation](https://docs.joinmastodon.org/methods/oauth/#authorization-server-metadata)
  Future<Response<DiscoverOauthServerConfigurationResponse>>
  getWellKnownOauthAuthorizationServer({
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/.well-known/oauth-authorization-server';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{'secure': <Map<String, String>>[], ...?extra},
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    DiscoverOauthServerConfigurationResponse? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<
              DiscoverOauthServerConfigurationResponse,
              DiscoverOauthServerConfigurationResponse
            >(
              rawData,
              'DiscoverOauthServerConfigurationResponse',
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

    return Response<DiscoverOauthServerConfigurationResponse>(
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
