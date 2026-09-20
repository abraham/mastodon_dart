//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

// ignore: unused_import
import 'dart:convert';
import 'package:mastodon/src/deserialize.dart';
import 'package:dio/dio.dart';

import 'package:mastodon/src/model/status.dart';

class TimelinesApi {
  final Dio _dio;

  const TimelinesApi(this._dio);

  /// View direct timeline
  /// View statuses with a \&quot;direct\&quot; privacy, from your account or in your notifications.  Version history:  x.x.x - added\\ 2.6.0 - add &#x60;min_id&#x60;. deprecated in favor of [Conversations API]\\ 3.0.0 - removed
  ///
  /// Parameters:
  /// * [limit] - Maximum number of results to return. Defaults to 20 statuses. Max 40 statuses.
  /// * [maxId] - All results returned will be lesser than this ID. In effect, sets an upper bound on results.
  /// * [minId] - Returns results immediately newer than this ID. In effect, sets a cursor at this ID and paginates forward.
  /// * [sinceId] - All results returned will be greater than this ID. In effect, sets a lower bound on results.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [List<Status>] as data
  /// Throws [DioException] if API call or serialization fails
  /// Official Mastodon API documentation
  /// Also see [View direct timeline Documentation](https://docs.joinmastodon.org/methods/timelines/#direct)
  @Deprecated('This operation has been deprecated')
  Future<Response<List<Status>>> getTimelineDirect({
    int? limit = 20,
    String? maxId,
    String? minId,
    String? sinceId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v1/timelines/direct';
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

    final _queryParameters = <String, dynamic>{
      if (limit != null) r'limit': limit,
      if (maxId != null) r'max_id': maxId,
      if (minId != null) r'min_id': minId,
      if (sinceId != null) r'since_id': sinceId,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    List<Status>? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<List<Status>, Status>(
              rawData,
              'List<Status>',
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

    return Response<List<Status>>(
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

  /// View home timeline
  /// View statuses from followed users and hashtags.  Version history:  0.0.0 - added\\ 2.6.0 - add &#x60;min_id&#x60;\\ 3.3.0 - both &#x60;min_id&#x60; and &#x60;max_id&#x60; can be used at the same time now\\ 4.0.0 - as users can now follow hashtags, statuses from non-followed users may appear in the timeline
  ///
  /// Parameters:
  /// * [limit] - Maximum number of results to return. Defaults to 20 statuses. Max 40 statuses.
  /// * [maxId] - All results returned will be lesser than this ID. In effect, sets an upper bound on results.
  /// * [minId] - Returns results immediately newer than this ID. In effect, sets a cursor at this ID and paginates forward.
  /// * [sinceId] - All results returned will be greater than this ID. In effect, sets a lower bound on results.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [List<Status>] as data
  /// Throws [DioException] if API call or serialization fails
  /// Official Mastodon API documentation
  /// Also see [View home timeline Documentation](https://docs.joinmastodon.org/methods/timelines/#home)
  Future<Response<List<Status>>> getTimelineHome({
    int? limit = 20,
    String? maxId,
    String? minId,
    String? sinceId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v1/timelines/home';
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

    final _queryParameters = <String, dynamic>{
      if (limit != null) r'limit': limit,
      if (maxId != null) r'max_id': maxId,
      if (minId != null) r'min_id': minId,
      if (sinceId != null) r'since_id': sinceId,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    List<Status>? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<List<Status>, Status>(
              rawData,
              'List<Status>',
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

    return Response<List<Status>>(
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

  /// View link timeline
  /// View public statuses containing a link to the specified currently-trending article. This only lists statuses from people who have opted in to discoverability features.  Version history:  4.3.0 - added\\ 4.5.0 - add [access control settings]
  ///
  /// Parameters:
  /// * [url] - The URL of the trending article.
  /// * [limit] - Maximum number of results to return. Defaults to 20 statuses. Max 40 statuses.
  /// * [maxId] - All results returned will be lesser than this ID. In effect, sets an upper bound on results.
  /// * [minId] - Returns results immediately newer than this ID. In effect, sets a cursor at this ID and paginates forward.
  /// * [sinceId] - All results returned will be greater than this ID. In effect, sets a lower bound on results.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [List<Status>] as data
  /// Throws [DioException] if API call or serialization fails
  /// Official Mastodon API documentation
  /// Also see [View link timeline Documentation](https://docs.joinmastodon.org/methods/timelines/#link)
  Future<Response<List<Status>>> getTimelineLink({
    required String url,
    int? limit = 20,
    String? maxId,
    String? minId,
    String? sinceId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v1/timelines/link';
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

    final _queryParameters = <String, dynamic>{
      r'url': url,
      if (limit != null) r'limit': limit,
      if (maxId != null) r'max_id': maxId,
      if (minId != null) r'min_id': minId,
      if (sinceId != null) r'since_id': sinceId,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    List<Status>? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<List<Status>, Status>(
              rawData,
              'List<Status>',
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

    return Response<List<Status>>(
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

  /// View list timeline
  /// View statuses in the given list timeline.  Version history:  2.1.0 - added\\ 2.6.0 - add &#x60;min_id&#x60;\\ 3.3.0 - both &#x60;min_id&#x60; and &#x60;max_id&#x60; can be used at the same time now
  ///
  /// Parameters:
  /// * [listId] - list_id parameter
  /// * [limit] - Maximum number of results to return. Defaults to 20 statuses. Max 40 statuses.
  /// * [maxId] - All results returned will be lesser than this ID. In effect, sets an upper bound on results.
  /// * [minId] - Returns results immediately newer than this ID. In effect, sets a cursor at this ID and paginates forward.
  /// * [sinceId] - All results returned will be greater than this ID. In effect, sets a lower bound on results.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [List<Status>] as data
  /// Throws [DioException] if API call or serialization fails
  /// Official Mastodon API documentation
  /// Also see [View list timeline Documentation](https://docs.joinmastodon.org/methods/timelines/#list)
  Future<Response<List<Status>>> getTimelineList({
    required String listId,
    int? limit = 20,
    String? maxId,
    String? minId,
    String? sinceId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v1/timelines/list/{list_id}'.replaceAll(
      '{'
      r'list_id'
      '}',
      listId.toString(),
    );
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

    final _queryParameters = <String, dynamic>{
      if (limit != null) r'limit': limit,
      if (maxId != null) r'max_id': maxId,
      if (minId != null) r'min_id': minId,
      if (sinceId != null) r'since_id': sinceId,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    List<Status>? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<List<Status>, Status>(
              rawData,
              'List<Status>',
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

    return Response<List<Status>>(
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

  /// View public timeline
  /// View public statuses.  Version history:  0.0.0 - added\\ 2.3.0 - added &#x60;only_media&#x60;\\ 2.6.0 - add &#x60;min_id&#x60;\\ 3.0.0 - auth is required if public preview is disabled\\ 3.1.4 - added &#x60;remote&#x60;\\ 3.3.0 - both &#x60;min_id&#x60; and &#x60;max_id&#x60; can be used at the same time now\\ 4.5.0 - add [access control settings]
  ///
  /// Parameters:
  /// * [limit] - Maximum number of results to return. Defaults to 20 statuses. Max 40 statuses.
  /// * [local] - Show only local statuses? Defaults to false.
  /// * [maxId] - All results returned will be lesser than this ID. In effect, sets an upper bound on results.
  /// * [minId] - Returns results immediately newer than this ID. In effect, sets a cursor at this ID and paginates forward.
  /// * [onlyMedia] - Show only statuses with media attached? Defaults to false.
  /// * [remote] - Show only remote statuses? Defaults to false.
  /// * [sinceId] - All results returned will be greater than this ID. In effect, sets a lower bound on results.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [List<Status>] as data
  /// Throws [DioException] if API call or serialization fails
  /// Official Mastodon API documentation
  /// Also see [View public timeline Documentation](https://docs.joinmastodon.org/methods/timelines/#public)
  Future<Response<List<Status>>> getTimelinePublic({
    int? limit = 20,
    bool? local = false,
    String? maxId,
    String? minId,
    bool? onlyMedia = false,
    bool? remote = false,
    String? sinceId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v1/timelines/public';
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

    final _queryParameters = <String, dynamic>{
      if (limit != null) r'limit': limit,
      if (local != null) r'local': local,
      if (maxId != null) r'max_id': maxId,
      if (minId != null) r'min_id': minId,
      if (onlyMedia != null) r'only_media': onlyMedia,
      if (remote != null) r'remote': remote,
      if (sinceId != null) r'since_id': sinceId,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    List<Status>? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<List<Status>, Status>(
              rawData,
              'List<Status>',
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

    return Response<List<Status>>(
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

  /// View hashtag timeline
  /// View public statuses containing the given hashtag.  Version history:  0.0.0 - added\\ 2.3.0 - added &#x60;only_media&#x60;\\ 2.6.0 - add &#x60;min_id&#x60;\\ 2.7.0 - add &#x60;any[]&#x60;, &#x60;all[]&#x60;, &#x60;none[]&#x60; for additional tags\\ 3.0.0 - auth is required if public preview is disabled\\ 3.3.0 - both &#x60;min_id&#x60; and &#x60;max_id&#x60; can be used at the same time now. add &#x60;remote&#x60;\\ 4.5.0 - add [access control settings]
  ///
  /// Parameters:
  /// * [hashtag] - hashtag parameter
  /// * [all] - Return statuses that contain all of these additional tags.
  /// * [any] - Return statuses that contain any of these additional tags.
  /// * [limit] - Maximum number of results to return. Defaults to 20 statuses. Max 40 statuses.
  /// * [local] - Return only local statuses? Defaults to false.
  /// * [maxId] - All results returned will be lesser than this ID. In effect, sets an upper bound on results.
  /// * [minId] - Returns results immediately newer than this ID. In effect, sets a cursor at this ID and paginates forward.
  /// * [none] - Return statuses that contain none of these additional tags.
  /// * [onlyMedia] - Return only statuses with media attachments? Defaults to false.
  /// * [remote] - Return only remote statuses? Defaults to false.
  /// * [sinceId] - All results returned will be greater than this ID. In effect, sets a lower bound on results.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [List<Status>] as data
  /// Throws [DioException] if API call or serialization fails
  /// Official Mastodon API documentation
  /// Also see [View hashtag timeline Documentation](https://docs.joinmastodon.org/methods/timelines/#tag)
  Future<Response<List<Status>>> getTimelineTagByHashtag({
    required String hashtag,
    List<String>? all,
    List<String>? any,
    int? limit = 20,
    bool? local = false,
    String? maxId,
    String? minId,
    List<String>? none,
    bool? onlyMedia = false,
    bool? remote = false,
    String? sinceId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v1/timelines/tag/{hashtag}'.replaceAll(
      '{'
      r'hashtag'
      '}',
      hashtag.toString(),
    );
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

    final _queryParameters = <String, dynamic>{
      if (all != null) r'all': all,
      if (any != null) r'any': any,
      if (limit != null) r'limit': limit,
      if (local != null) r'local': local,
      if (maxId != null) r'max_id': maxId,
      if (minId != null) r'min_id': minId,
      if (none != null) r'none': none,
      if (onlyMedia != null) r'only_media': onlyMedia,
      if (remote != null) r'remote': remote,
      if (sinceId != null) r'since_id': sinceId,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    List<Status>? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<List<Status>, Status>(
              rawData,
              'List<Status>',
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

    return Response<List<Status>>(
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
