//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

// ignore: unused_import
import 'dart:convert';
import 'package:mastodon/src/deserialize.dart';
import 'package:dio/dio.dart';

import 'package:mastodon/src/model/account.dart';
import 'package:mastodon/src/model/count_response.dart';
import 'package:mastodon/src/model/grouped_notifications_results.dart';
import 'package:mastodon/src/model/merged_response.dart';
import 'package:mastodon/src/model/notification.dart';
import 'package:mastodon/src/model/notification_policy.dart';
import 'package:mastodon/src/model/notification_request.dart';
import 'package:mastodon/src/model/notification_type_enum.dart';

class NotificationsApi {
  final Dio _dio;

  const NotificationsApi(this._dio);

  /// Dismiss all notifications
  /// Clear all notifications from the server.  Version history:  0.0.0 - added
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
  /// Also see [Dismiss all notifications Documentation](https://docs.joinmastodon.org/methods/notifications/#clear)
  Future<Response<void>> createNotificationClear({
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v1/notifications/clear';
    final _options = Options(
      method: r'POST',
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

  /// Accept multiple notification requests
  /// Accepts multiple notification requests, which merges the filtered notifications from those users back into the main notifications and accepts any future notification from them.  Version history:  4.3.0 - added
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
  /// Also see [Accept multiple notification requests Documentation](https://docs.joinmastodon.org/methods/notifications/#accept-multiple-requests)
  Future<Response<void>> createNotificationRequestAccept({
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v1/notifications/requests/accept';
    final _options = Options(
      method: r'POST',
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

  /// Dismiss multiple notification requests
  /// Dismiss multiple notification requests, which hides them and prevent them from contributing to the pending notification requests count.  Version history:  4.3.0 - added
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
  /// Also see [Dismiss multiple notification requests Documentation](https://docs.joinmastodon.org/methods/notifications/#dismiss-multiple-requests)
  Future<Response<void>> createNotificationRequestDismiss({
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v1/notifications/requests/dismiss';
    final _options = Options(
      method: r'POST',
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

  /// Get a single notification
  /// View information about a notification with a given ID.  Version history:  0.0.0 - added\\ 4.6.0 (&#x60;mastodon&#x60; [API version] 10) - added &#x60;supported_types&#x60; optional parameter
  ///
  /// Parameters:
  /// * [id] - id parameter
  /// * [supportedTypes] - Notification types to not get fallback representation for even when some is available. Passing this parameter is required to get any notification fallback at all. When this parameter is used, and a notification which type is *not* included in `supported_types` has an available fallback representation, it will be included in the notification's `fallback` attribute.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Notification] as data
  /// Throws [DioException] if API call or serialization fails
  /// Official Mastodon API documentation
  /// Also see [Get a single notification Documentation](https://docs.joinmastodon.org/methods/notifications/#get-one)
  Future<Response<Notification>> getNotification({
    required String id,
    List<String>? supportedTypes,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v1/notifications/{id}'.replaceAll(
      '{'
      r'id'
      '}',
      id.toString(),
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
      if (supportedTypes != null) r'supported_types': supportedTypes,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Notification? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<Notification, Notification>(
              rawData,
              'Notification',
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

    return Response<Notification>(
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

  /// Get accounts of all notifications in a notification group
  /// Version history:  4.3.0 (&#x60;mastodon&#x60; [API version] 2) - added
  ///
  /// Parameters:
  /// * [groupKey] - group_key parameter
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [List<Account>] as data
  /// Throws [DioException] if API call or serialization fails
  /// Official Mastodon API documentation
  /// Also see [Get accounts of all notifications in a notification group Documentation](https://docs.joinmastodon.org/methods/grouped_notifications/#get-group-accounts)
  Future<Response<List<Account>>> getNotificationAccountsV2({
    required String groupKey,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v2/notifications/{group_key}/accounts'.replaceAll(
      '{'
      r'group_key'
      '}',
      groupKey.toString(),
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

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    List<Account>? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<List<Account>, Account>(
              rawData,
              'List<Account>',
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

    return Response<List<Account>>(
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

  /// Get the filtering policy for notifications
  /// Notifications filtering policy for the user.  Version history:  4.3.0 - added
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [NotificationPolicy] as data
  /// Throws [DioException] if API call or serialization fails
  /// Official Mastodon API documentation
  /// Also see [Get the filtering policy for notifications Documentation](https://docs.joinmastodon.org/methods/notifications/#get-policy)
  Future<Response<NotificationPolicy>> getNotificationPolicyV2({
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v2/notifications/policy';
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

    NotificationPolicy? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<NotificationPolicy, NotificationPolicy>(
              rawData,
              'NotificationPolicy',
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

    return Response<NotificationPolicy>(
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

  /// Get a single notification request
  /// View information about a notification request with a given ID.  Version history:  4.3.0 - added
  ///
  /// Parameters:
  /// * [id] - id parameter
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [NotificationRequest] as data
  /// Throws [DioException] if API call or serialization fails
  /// Official Mastodon API documentation
  /// Also see [Get a single notification request Documentation](https://docs.joinmastodon.org/methods/notifications/#get-one-request)
  Future<Response<NotificationRequest>> getNotificationRequest({
    required String id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v1/notifications/requests/{id}'.replaceAll(
      '{'
      r'id'
      '}',
      id.toString(),
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

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    NotificationRequest? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<NotificationRequest, NotificationRequest>(
              rawData,
              'NotificationRequest',
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

    return Response<NotificationRequest>(
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

  /// Check if accepted notification requests have been merged
  /// Check whether accepted notification requests have been merged.  Version history:  4.3.0 - added
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [MergedResponse] as data
  /// Throws [DioException] if API call or serialization fails
  /// Official Mastodon API documentation
  /// Also see [Check if accepted notification requests have been merged Documentation](https://docs.joinmastodon.org/methods/notifications/#requests-merged)
  Future<Response<MergedResponse>> getNotificationRequestMerged({
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v1/notifications/requests/merged';
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

    MergedResponse? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<MergedResponse, MergedResponse>(
              rawData,
              'MergedResponse',
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

    return Response<MergedResponse>(
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

  /// Get all notification requests
  /// Notification requests for notifications filtered by the user&#39;s policy. This API returns Link headers containing links to the next/previous page.  Version history:  4.3.0 - added
  ///
  /// Parameters:
  /// * [limit] - Maximum number of results to return. Defaults to 40 notification requests. Max 80 notification requests.
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
  /// Returns a [Future] containing a [Response] with a [List<NotificationRequest>] as data
  /// Throws [DioException] if API call or serialization fails
  /// Official Mastodon API documentation
  /// Also see [Get all notification requests Documentation](https://docs.joinmastodon.org/methods/notifications/#get-requests)
  Future<Response<List<NotificationRequest>>> getNotificationRequests({
    int? limit = 40,
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
    final _path = r'/api/v1/notifications/requests';
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

    List<NotificationRequest>? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<List<NotificationRequest>, NotificationRequest>(
              rawData,
              'List<NotificationRequest>',
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

    return Response<List<NotificationRequest>>(
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

  /// Get the number of unread notifications
  /// Get the (capped) number of unread notifications for the current user.
  ///
  /// Parameters:
  /// * [accountId] - Only count unread notifications received from the specified account.
  /// * [excludeTypes] - Types of notifications that should not count towards unread notifications.
  /// * [limit] - Maximum number of results to return. Defaults to 100 notifications. Max 1000 notifications.
  /// * [types] - Types of notifications that should count towards unread notifications.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [CountResponse] as data
  /// Throws [DioException] if API call or serialization fails
  /// Official Mastodon API documentation
  /// Also see [Get the number of unread notifications Documentation](https://docs.joinmastodon.org/methods/notifications/#unread-count)
  Future<Response<CountResponse>> getNotificationUnreadCount({
    String? accountId,
    List<String>? excludeTypes,
    int? limit = 100,
    List<String>? types,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v1/notifications/unread_count';
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
      if (accountId != null) r'account_id': accountId,
      if (excludeTypes != null) r'exclude_types': excludeTypes,
      if (limit != null) r'limit': limit,
      if (types != null) r'types': types,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    CountResponse? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<CountResponse, CountResponse>(
              rawData,
              'CountResponse',
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

    return Response<CountResponse>(
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

  /// Get the number of unread notifications
  /// Get the (capped) number of unread notification groups for the current user.
  ///
  /// Parameters:
  /// * [accountId] - Only count unread notifications received from the specified account.
  /// * [excludeTypes] - Types of notifications that should not count towards unread notifications.
  /// * [groupedTypes] - Restrict which notification types can be grouped. Use this if there are notification types for which your client does not support grouping. If omitted, the server will group notifications of all types it supports (currently, `favourite`, `follow` and `reblog`). If you do not want any notification grouping, use [GET `/api/v1/notifications/unread_count`] instead.
  /// * [limit] - Maximum number of results to return. Defaults to 100 notifications. Max 1000 notifications.
  /// * [types] - Types of notifications that should count towards unread notifications.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [CountResponse] as data
  /// Throws [DioException] if API call or serialization fails
  /// Official Mastodon API documentation
  /// Also see [Get the number of unread notifications Documentation](https://docs.joinmastodon.org/methods/grouped_notifications/#unread-group-count)
  Future<Response<CountResponse>> getNotificationUnreadCountV2({
    String? accountId,
    List<String>? excludeTypes,
    List<String>? groupedTypes,
    int? limit = 100,
    List<String>? types,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v2/notifications/unread_count';
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
      if (accountId != null) r'account_id': accountId,
      if (excludeTypes != null) r'exclude_types': excludeTypes,
      if (groupedTypes != null) r'grouped_types': groupedTypes,
      if (limit != null) r'limit': limit,
      if (types != null) r'types': types,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    CountResponse? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<CountResponse, CountResponse>(
              rawData,
              'CountResponse',
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

    return Response<CountResponse>(
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

  /// Get a single notification group
  /// View information about a specific notification group with a given group key.  Version history:  4.3.0 (&#x60;mastodon&#x60; [API version] 2) - added\\ 4.6.0 (&#x60;mastodon&#x60; [API version] 10) - added &#x60;supported_types&#x60; optional parameter
  ///
  /// Parameters:
  /// * [groupKey] - group_key parameter
  /// * [supportedTypes] - Notification types to not get fallback representation for even when some is available. Passing this parameter is required to get any notification fallback at all. When this parameter is used, and a notification which type is *not* included in `supported_types` has an available fallback representation, it will be included in the notification group's `fallback` attribute.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GroupedNotificationsResults] as data
  /// Throws [DioException] if API call or serialization fails
  /// Official Mastodon API documentation
  /// Also see [Get a single notification group Documentation](https://docs.joinmastodon.org/methods/grouped_notifications/#get-notification-group)
  Future<Response<GroupedNotificationsResults>> getNotificationV2({
    required String groupKey,
    List<String>? supportedTypes,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v2/notifications/{group_key}'.replaceAll(
      '{'
      r'group_key'
      '}',
      groupKey.toString(),
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
      if (supportedTypes != null) r'supported_types': supportedTypes,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    GroupedNotificationsResults? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<
              GroupedNotificationsResults,
              GroupedNotificationsResults
            >(rawData, 'GroupedNotificationsResults', growable: true);
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<GroupedNotificationsResults>(
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

  /// Get all notifications
  /// Notifications concerning the user. This API returns Link headers containing links to the next/previous page. However, the links can also be constructed dynamically using query params and &#x60;id&#x60; values.  Version history:  0.0.0 - added\\ 2.6.0 - added &#x60;min_id&#x60;\\ 2.9.0 - added &#x60;account_id&#x60;\\ 3.1.0 - added &#x60;follow_request&#x60; type\\ 3.3.0 - added &#x60;status&#x60; type; both &#x60;min_id&#x60; and &#x60;max_id&#x60; can be used at the same time now\\ 3.5.0 - added &#x60;types&#x60;; add &#x60;update&#x60; and &#x60;admin.sign_up&#x60; types\\ 4.0.0 - added &#x60;admin.report&#x60; type\\ 4.1.0 - notification limit changed from 15 (max 30) to 40 (max 80)\\ 4.3.0 - added &#x60;include_filtered&#x60; parameter\\ 4.6.0 (&#x60;mastodon&#x60; [API version] 10) - added &#x60;supported_types&#x60; optional parameter
  ///
  /// Parameters:
  /// * [accountId] - Return only notifications received from the specified account.
  /// * [excludeTypes] - Types to exclude from the results.
  /// * [includeFiltered] - Whether to include notifications filtered by the user's [NotificationPolicy]. Defaults to false.
  /// * [limit] - Maximum number of results to return. Defaults to 40 notifications. Max 80 notifications.
  /// * [maxId] - All results returned will be lesser than this ID. In effect, sets an upper bound on results.
  /// * [minId] - Returns results immediately newer than this ID. In effect, sets a cursor at this ID and paginates forward.
  /// * [sinceId] - All results returned will be greater than this ID. In effect, sets a lower bound on results.
  /// * [supportedTypes] - Notification types to not get fallback representation for even when some is available. Passing this parameter is required to get any notification fallback at all. When this parameter is used, and a notification which type is *not* included in `supported_types` has an available fallback representation, it will be included in the notification's `fallback` attribute.
  /// * [types] - Types to include in the result.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [List<Notification>] as data
  /// Throws [DioException] if API call or serialization fails
  /// Official Mastodon API documentation
  /// Also see [Get all notifications Documentation](https://docs.joinmastodon.org/methods/notifications/#get)
  Future<Response<List<Notification>>> getNotifications({
    String? accountId,
    List<NotificationTypeEnum>? excludeTypes,
    bool? includeFiltered = false,
    int? limit = 40,
    String? maxId,
    String? minId,
    String? sinceId,
    List<String>? supportedTypes,
    List<NotificationTypeEnum>? types,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v1/notifications';
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
      if (accountId != null) r'account_id': accountId,
      if (excludeTypes != null) r'exclude_types': excludeTypes,
      if (includeFiltered != null) r'include_filtered': includeFiltered,
      if (limit != null) r'limit': limit,
      if (maxId != null) r'max_id': maxId,
      if (minId != null) r'min_id': minId,
      if (sinceId != null) r'since_id': sinceId,
      if (supportedTypes != null) r'supported_types': supportedTypes,
      if (types != null) r'types': types,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    List<Notification>? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<List<Notification>, Notification>(
              rawData,
              'List<Notification>',
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

    return Response<List<Notification>>(
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

  /// Get all grouped notifications
  /// Return grouped notifications concerning the user. This API returns Link headers containing links to the next/previous page. However, the links can also be constructed dynamically using query params and &#x60;id&#x60; values.  Version history:  4.3.0 (&#x60;mastodon&#x60; [API version] 2) - added\\ 4.4.0 - added &#x60;admin.sign_up&#x60; to grouped notification types\\ 4.6.0 (&#x60;mastodon&#x60; [API version] 10) - added &#x60;supported_types&#x60; optional parameter
  ///
  /// Parameters:
  /// * [accountId] - Return only notifications received from the specified account.
  /// * [excludeTypes] - Types to exclude from the results.
  /// * [expandAccounts] - One of `full` (default) or `partial_avatars`. When set to `partial_avatars`, some accounts will not be rendered in full in the returned `accounts` list but will be instead returned in stripped-down form in the `partial_accounts` list. The most recent account in a notification group is always rendered in full in the `accounts` attribute.
  /// * [groupedTypes] - Restrict which notification types can be grouped. Use this if there are notification types for which your client does not support grouping. If omitted, the server will group notifications of all types it supports (currently, `favourite`, `follow`, `reblog` and `admin.sign_up`). If you do not want any notification grouping, use [GET `/api/v1/notifications`] instead. Notifications that would be grouped if not for this parameter will instead be returned as individual single-notification groups with a unique `group_key` that can be assumed to be of the form `ungrouped-{notification_id}`. Please note that neither the streaming API nor the individual notification APIs are aware of this parameter and will always include a “proper” `group_key` that can be different from what is returned here, meaning that you may have to ignore `group_key` for such notifications that you do not want grouped and use `ungrouped-{notification_id}` instead for consistency.
  /// * [includeFiltered] - Whether to include notifications filtered by the user's [NotificationPolicy]. Defaults to false.
  /// * [limit] - Maximum number of results to return. Defaults to 40 notifications. Max 80 notification groups.
  /// * [maxId] - All results returned will be about notifications strictly older than this notification ID. In effect, sets an upper bound on results.
  /// * [minId] - Returns results about notifications immediately newer than this notification ID. In effect, sets a cursor at this ID and paginates forward.
  /// * [sinceId] - All results returned will be about notifications strictly newer than this notification ID. In effect, sets a lower bound on results.
  /// * [supportedTypes] - Notification types to not get fallback representation for even when some is available. Passing this parameter is required to get any notification fallback at all. When this parameter is used, and a notification which type is *not* included in `supported_types` has an available fallback representation, it will be included in the notification group's `fallback` attribute.
  /// * [types] - Types to include in the result.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GroupedNotificationsResults] as data
  /// Throws [DioException] if API call or serialization fails
  /// Official Mastodon API documentation
  /// Also see [Get all grouped notifications Documentation](https://docs.joinmastodon.org/methods/grouped_notifications/#get-grouped)
  Future<Response<GroupedNotificationsResults>> getNotificationsV2({
    String? accountId,
    List<NotificationTypeEnum>? excludeTypes,
    String? expandAccounts,
    List<NotificationTypeEnum>? groupedTypes,
    bool? includeFiltered = false,
    int? limit = 40,
    String? maxId,
    String? minId,
    String? sinceId,
    List<String>? supportedTypes,
    List<NotificationTypeEnum>? types,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v2/notifications';
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
      if (accountId != null) r'account_id': accountId,
      if (excludeTypes != null) r'exclude_types': excludeTypes,
      if (expandAccounts != null) r'expand_accounts': expandAccounts,
      if (groupedTypes != null) r'grouped_types': groupedTypes,
      if (includeFiltered != null) r'include_filtered': includeFiltered,
      if (limit != null) r'limit': limit,
      if (maxId != null) r'max_id': maxId,
      if (minId != null) r'min_id': minId,
      if (sinceId != null) r'since_id': sinceId,
      if (supportedTypes != null) r'supported_types': supportedTypes,
      if (types != null) r'types': types,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    GroupedNotificationsResults? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<
              GroupedNotificationsResults,
              GroupedNotificationsResults
            >(rawData, 'GroupedNotificationsResults', growable: true);
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<GroupedNotificationsResults>(
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

  /// Update the filtering policy for notifications
  /// Update the user&#39;s notifications filtering policy.  Version history:  4.3.0 - added
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [NotificationPolicy] as data
  /// Throws [DioException] if API call or serialization fails
  /// Official Mastodon API documentation
  /// Also see [Update the filtering policy for notifications Documentation](https://docs.joinmastodon.org/methods/notifications/#update-the-filtering-policy-for-notifications)
  Future<Response<NotificationPolicy>> patchNotificationPolicyV2({
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v2/notifications/policy';
    final _options = Options(
      method: r'PATCH',
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

    NotificationPolicy? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<NotificationPolicy, NotificationPolicy>(
              rawData,
              'NotificationPolicy',
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

    return Response<NotificationPolicy>(
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

  /// Dismiss a single notification
  /// Dismiss a single notification from the server.  Version history:  1.3.0 - added
  ///
  /// Parameters:
  /// * [id] - id parameter
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
  /// Also see [Dismiss a single notification Documentation](https://docs.joinmastodon.org/methods/notifications/#dismiss)
  Future<Response<void>> postNotificationDismiss({
    required String id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v1/notifications/{id}/dismiss'.replaceAll(
      '{'
      r'id'
      '}',
      id.toString(),
    );
    final _options = Options(
      method: r'POST',
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

  /// Dismiss a single notification group
  /// Dismiss a single notification group from the server.  Version history:  4.3.0 (&#x60;mastodon&#x60; [API version] 2) - added
  ///
  /// Parameters:
  /// * [groupKey] - group_key parameter
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
  /// Also see [Dismiss a single notification group Documentation](https://docs.joinmastodon.org/methods/grouped_notifications/#dismiss-group)
  Future<Response<void>> postNotificationDismissV2({
    required String groupKey,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v2/notifications/{group_key}/dismiss'.replaceAll(
      '{'
      r'group_key'
      '}',
      groupKey.toString(),
    );
    final _options = Options(
      method: r'POST',
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

  /// Accept a single notification request
  /// Accept a notification request, which merges the filtered notifications from that user back into the main notification and accepts any future notification from them.  Version history:  4.3.0 - added
  ///
  /// Parameters:
  /// * [id] - id parameter
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
  /// Also see [Accept a single notification request Documentation](https://docs.joinmastodon.org/methods/notifications/#accept-request)
  Future<Response<void>> postNotificationRequestAccept({
    required String id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v1/notifications/requests/{id}/accept'.replaceAll(
      '{'
      r'id'
      '}',
      id.toString(),
    );
    final _options = Options(
      method: r'POST',
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

  /// Dismiss a single notification request
  /// Dismiss a notification request, which hides it and prevent it from contributing to the pending notification requests count.  Version history:  4.3.0 - added
  ///
  /// Parameters:
  /// * [id] - id parameter
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
  /// Also see [Dismiss a single notification request Documentation](https://docs.joinmastodon.org/methods/notifications/#dismiss-request)
  Future<Response<void>> postNotificationRequestDismiss({
    required String id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v1/notifications/requests/{id}/dismiss'.replaceAll(
      '{'
      r'id'
      '}',
      id.toString(),
    );
    final _options = Options(
      method: r'POST',
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
}
