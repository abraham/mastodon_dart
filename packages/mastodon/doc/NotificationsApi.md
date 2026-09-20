# mastodon.api.NotificationsApi

## Load the API package
```dart
import 'package:mastodon/api.dart';
```

All URIs are relative to *https://mastodon.example*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createNotificationClear**](NotificationsApi.md#createnotificationclear) | **POST** /api/v1/notifications/clear | Dismiss all notifications
[**createNotificationRequestAccept**](NotificationsApi.md#createnotificationrequestaccept) | **POST** /api/v1/notifications/requests/accept | Accept multiple notification requests
[**createNotificationRequestDismiss**](NotificationsApi.md#createnotificationrequestdismiss) | **POST** /api/v1/notifications/requests/dismiss | Dismiss multiple notification requests
[**getNotification**](NotificationsApi.md#getnotification) | **GET** /api/v1/notifications/{id} | Get a single notification
[**getNotificationAccountsV2**](NotificationsApi.md#getnotificationaccountsv2) | **GET** /api/v2/notifications/{group_key}/accounts | Get accounts of all notifications in a notification group
[**getNotificationPolicyV2**](NotificationsApi.md#getnotificationpolicyv2) | **GET** /api/v2/notifications/policy | Get the filtering policy for notifications
[**getNotificationRequest**](NotificationsApi.md#getnotificationrequest) | **GET** /api/v1/notifications/requests/{id} | Get a single notification request
[**getNotificationRequestMerged**](NotificationsApi.md#getnotificationrequestmerged) | **GET** /api/v1/notifications/requests/merged | Check if accepted notification requests have been merged
[**getNotificationRequests**](NotificationsApi.md#getnotificationrequests) | **GET** /api/v1/notifications/requests | Get all notification requests
[**getNotificationUnreadCount**](NotificationsApi.md#getnotificationunreadcount) | **GET** /api/v1/notifications/unread_count | Get the number of unread notifications
[**getNotificationUnreadCountV2**](NotificationsApi.md#getnotificationunreadcountv2) | **GET** /api/v2/notifications/unread_count | Get the number of unread notifications
[**getNotificationV2**](NotificationsApi.md#getnotificationv2) | **GET** /api/v2/notifications/{group_key} | Get a single notification group
[**getNotifications**](NotificationsApi.md#getnotifications) | **GET** /api/v1/notifications | Get all notifications
[**getNotificationsV2**](NotificationsApi.md#getnotificationsv2) | **GET** /api/v2/notifications | Get all grouped notifications
[**patchNotificationPolicyV2**](NotificationsApi.md#patchnotificationpolicyv2) | **PATCH** /api/v2/notifications/policy | Update the filtering policy for notifications
[**postNotificationDismiss**](NotificationsApi.md#postnotificationdismiss) | **POST** /api/v1/notifications/{id}/dismiss | Dismiss a single notification
[**postNotificationDismissV2**](NotificationsApi.md#postnotificationdismissv2) | **POST** /api/v2/notifications/{group_key}/dismiss | Dismiss a single notification group
[**postNotificationRequestAccept**](NotificationsApi.md#postnotificationrequestaccept) | **POST** /api/v1/notifications/requests/{id}/accept | Accept a single notification request
[**postNotificationRequestDismiss**](NotificationsApi.md#postnotificationrequestdismiss) | **POST** /api/v1/notifications/requests/{id}/dismiss | Dismiss a single notification request


# **createNotificationClear**
> createNotificationClear()

Dismiss all notifications

Clear all notifications from the server.  Version history:  0.0.0 - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getNotificationsApi();

try {
    api.createNotificationClear();
} on DioException catch (e) {
    print('Exception when calling NotificationsApi->createNotificationClear: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createNotificationRequestAccept**
> createNotificationRequestAccept()

Accept multiple notification requests

Accepts multiple notification requests, which merges the filtered notifications from those users back into the main notifications and accepts any future notification from them.  Version history:  4.3.0 - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getNotificationsApi();

try {
    api.createNotificationRequestAccept();
} on DioException catch (e) {
    print('Exception when calling NotificationsApi->createNotificationRequestAccept: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createNotificationRequestDismiss**
> createNotificationRequestDismiss()

Dismiss multiple notification requests

Dismiss multiple notification requests, which hides them and prevent them from contributing to the pending notification requests count.  Version history:  4.3.0 - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getNotificationsApi();

try {
    api.createNotificationRequestDismiss();
} on DioException catch (e) {
    print('Exception when calling NotificationsApi->createNotificationRequestDismiss: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNotification**
> Notification getNotification(id, supportedTypes)

Get a single notification

View information about a notification with a given ID.  Version history:  0.0.0 - added\\ 4.6.0 (`mastodon` [API version] 10) - added `supported_types` optional parameter

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getNotificationsApi();
final String id = id_example; // String | id parameter
final List<String> supportedTypes = ; // List<String> | Notification types to not get fallback representation for even when some is available. Passing this parameter is required to get any notification fallback at all. When this parameter is used, and a notification which type is *not* included in `supported_types` has an available fallback representation, it will be included in the notification's `fallback` attribute.

try {
    final response = api.getNotification(id, supportedTypes);
    print(response);
} on DioException catch (e) {
    print('Exception when calling NotificationsApi->getNotification: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 
 **supportedTypes** | [**List&lt;String&gt;**](String.md)| Notification types to not get fallback representation for even when some is available. Passing this parameter is required to get any notification fallback at all. When this parameter is used, and a notification which type is *not* included in `supported_types` has an available fallback representation, it will be included in the notification's `fallback` attribute. | [optional] 

### Return type

[**Notification**](Notification.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNotificationAccountsV2**
> List<Account> getNotificationAccountsV2(groupKey)

Get accounts of all notifications in a notification group

Version history:  4.3.0 (`mastodon` [API version] 2) - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getNotificationsApi();
final String groupKey = groupKey_example; // String | group_key parameter

try {
    final response = api.getNotificationAccountsV2(groupKey);
    print(response);
} on DioException catch (e) {
    print('Exception when calling NotificationsApi->getNotificationAccountsV2: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupKey** | **String**| group_key parameter | 

### Return type

[**List&lt;Account&gt;**](Account.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNotificationPolicyV2**
> NotificationPolicy getNotificationPolicyV2()

Get the filtering policy for notifications

Notifications filtering policy for the user.  Version history:  4.3.0 - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getNotificationsApi();

try {
    final response = api.getNotificationPolicyV2();
    print(response);
} on DioException catch (e) {
    print('Exception when calling NotificationsApi->getNotificationPolicyV2: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NotificationPolicy**](NotificationPolicy.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNotificationRequest**
> NotificationRequest getNotificationRequest(id)

Get a single notification request

View information about a notification request with a given ID.  Version history:  4.3.0 - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getNotificationsApi();
final String id = id_example; // String | id parameter

try {
    final response = api.getNotificationRequest(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling NotificationsApi->getNotificationRequest: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 

### Return type

[**NotificationRequest**](NotificationRequest.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNotificationRequestMerged**
> MergedResponse getNotificationRequestMerged()

Check if accepted notification requests have been merged

Check whether accepted notification requests have been merged.  Version history:  4.3.0 - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getNotificationsApi();

try {
    final response = api.getNotificationRequestMerged();
    print(response);
} on DioException catch (e) {
    print('Exception when calling NotificationsApi->getNotificationRequestMerged: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MergedResponse**](MergedResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNotificationRequests**
> List<NotificationRequest> getNotificationRequests(limit, maxId, minId, sinceId)

Get all notification requests

Notification requests for notifications filtered by the user's policy. This API returns Link headers containing links to the next/previous page.  Version history:  4.3.0 - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getNotificationsApi();
final int limit = 56; // int | Maximum number of results to return. Defaults to 40 notification requests. Max 80 notification requests.
final String maxId = maxId_example; // String | All results returned will be lesser than this ID. In effect, sets an upper bound on results.
final String minId = minId_example; // String | Returns results immediately newer than this ID. In effect, sets a cursor at this ID and paginates forward.
final String sinceId = sinceId_example; // String | All results returned will be greater than this ID. In effect, sets a lower bound on results.

try {
    final response = api.getNotificationRequests(limit, maxId, minId, sinceId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling NotificationsApi->getNotificationRequests: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Maximum number of results to return. Defaults to 40 notification requests. Max 80 notification requests. | [optional] [default to 40]
 **maxId** | **String**| All results returned will be lesser than this ID. In effect, sets an upper bound on results. | [optional] 
 **minId** | **String**| Returns results immediately newer than this ID. In effect, sets a cursor at this ID and paginates forward. | [optional] 
 **sinceId** | **String**| All results returned will be greater than this ID. In effect, sets a lower bound on results. | [optional] 

### Return type

[**List&lt;NotificationRequest&gt;**](NotificationRequest.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNotificationUnreadCount**
> CountResponse getNotificationUnreadCount(accountId, excludeTypes, limit, types)

Get the number of unread notifications

Get the (capped) number of unread notifications for the current user.

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getNotificationsApi();
final String accountId = accountId_example; // String | Only count unread notifications received from the specified account.
final List<String> excludeTypes = ; // List<String> | Types of notifications that should not count towards unread notifications.
final int limit = 56; // int | Maximum number of results to return. Defaults to 100 notifications. Max 1000 notifications.
final List<String> types = ; // List<String> | Types of notifications that should count towards unread notifications.

try {
    final response = api.getNotificationUnreadCount(accountId, excludeTypes, limit, types);
    print(response);
} on DioException catch (e) {
    print('Exception when calling NotificationsApi->getNotificationUnreadCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String**| Only count unread notifications received from the specified account. | [optional] 
 **excludeTypes** | [**List&lt;String&gt;**](String.md)| Types of notifications that should not count towards unread notifications. | [optional] 
 **limit** | **int**| Maximum number of results to return. Defaults to 100 notifications. Max 1000 notifications. | [optional] [default to 100]
 **types** | [**List&lt;String&gt;**](String.md)| Types of notifications that should count towards unread notifications. | [optional] 

### Return type

[**CountResponse**](CountResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNotificationUnreadCountV2**
> CountResponse getNotificationUnreadCountV2(accountId, excludeTypes, groupedTypes, limit, types)

Get the number of unread notifications

Get the (capped) number of unread notification groups for the current user.

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getNotificationsApi();
final String accountId = accountId_example; // String | Only count unread notifications received from the specified account.
final List<String> excludeTypes = ; // List<String> | Types of notifications that should not count towards unread notifications.
final List<String> groupedTypes = ; // List<String> | Restrict which notification types can be grouped. Use this if there are notification types for which your client does not support grouping. If omitted, the server will group notifications of all types it supports (currently, `favourite`, `follow` and `reblog`). If you do not want any notification grouping, use [GET `/api/v1/notifications/unread_count`] instead.
final int limit = 56; // int | Maximum number of results to return. Defaults to 100 notifications. Max 1000 notifications.
final List<String> types = ; // List<String> | Types of notifications that should count towards unread notifications.

try {
    final response = api.getNotificationUnreadCountV2(accountId, excludeTypes, groupedTypes, limit, types);
    print(response);
} on DioException catch (e) {
    print('Exception when calling NotificationsApi->getNotificationUnreadCountV2: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String**| Only count unread notifications received from the specified account. | [optional] 
 **excludeTypes** | [**List&lt;String&gt;**](String.md)| Types of notifications that should not count towards unread notifications. | [optional] 
 **groupedTypes** | [**List&lt;String&gt;**](String.md)| Restrict which notification types can be grouped. Use this if there are notification types for which your client does not support grouping. If omitted, the server will group notifications of all types it supports (currently, `favourite`, `follow` and `reblog`). If you do not want any notification grouping, use [GET `/api/v1/notifications/unread_count`] instead. | [optional] 
 **limit** | **int**| Maximum number of results to return. Defaults to 100 notifications. Max 1000 notifications. | [optional] [default to 100]
 **types** | [**List&lt;String&gt;**](String.md)| Types of notifications that should count towards unread notifications. | [optional] 

### Return type

[**CountResponse**](CountResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNotificationV2**
> GroupedNotificationsResults getNotificationV2(groupKey, supportedTypes)

Get a single notification group

View information about a specific notification group with a given group key.  Version history:  4.3.0 (`mastodon` [API version] 2) - added\\ 4.6.0 (`mastodon` [API version] 10) - added `supported_types` optional parameter

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getNotificationsApi();
final String groupKey = groupKey_example; // String | group_key parameter
final List<String> supportedTypes = ; // List<String> | Notification types to not get fallback representation for even when some is available. Passing this parameter is required to get any notification fallback at all. When this parameter is used, and a notification which type is *not* included in `supported_types` has an available fallback representation, it will be included in the notification group's `fallback` attribute.

try {
    final response = api.getNotificationV2(groupKey, supportedTypes);
    print(response);
} on DioException catch (e) {
    print('Exception when calling NotificationsApi->getNotificationV2: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupKey** | **String**| group_key parameter | 
 **supportedTypes** | [**List&lt;String&gt;**](String.md)| Notification types to not get fallback representation for even when some is available. Passing this parameter is required to get any notification fallback at all. When this parameter is used, and a notification which type is *not* included in `supported_types` has an available fallback representation, it will be included in the notification group's `fallback` attribute. | [optional] 

### Return type

[**GroupedNotificationsResults**](GroupedNotificationsResults.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNotifications**
> List<Notification> getNotifications(accountId, excludeTypes, includeFiltered, limit, maxId, minId, sinceId, supportedTypes, types)

Get all notifications

Notifications concerning the user. This API returns Link headers containing links to the next/previous page. However, the links can also be constructed dynamically using query params and `id` values.  Version history:  0.0.0 - added\\ 2.6.0 - added `min_id`\\ 2.9.0 - added `account_id`\\ 3.1.0 - added `follow_request` type\\ 3.3.0 - added `status` type; both `min_id` and `max_id` can be used at the same time now\\ 3.5.0 - added `types`; add `update` and `admin.sign_up` types\\ 4.0.0 - added `admin.report` type\\ 4.1.0 - notification limit changed from 15 (max 30) to 40 (max 80)\\ 4.3.0 - added `include_filtered` parameter\\ 4.6.0 (`mastodon` [API version] 10) - added `supported_types` optional parameter

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getNotificationsApi();
final String accountId = accountId_example; // String | Return only notifications received from the specified account.
final List<NotificationTypeEnum> excludeTypes = ; // List<NotificationTypeEnum> | Types to exclude from the results.
final bool includeFiltered = true; // bool | Whether to include notifications filtered by the user's [NotificationPolicy]. Defaults to false.
final int limit = 56; // int | Maximum number of results to return. Defaults to 40 notifications. Max 80 notifications.
final String maxId = maxId_example; // String | All results returned will be lesser than this ID. In effect, sets an upper bound on results.
final String minId = minId_example; // String | Returns results immediately newer than this ID. In effect, sets a cursor at this ID and paginates forward.
final String sinceId = sinceId_example; // String | All results returned will be greater than this ID. In effect, sets a lower bound on results.
final List<String> supportedTypes = ; // List<String> | Notification types to not get fallback representation for even when some is available. Passing this parameter is required to get any notification fallback at all. When this parameter is used, and a notification which type is *not* included in `supported_types` has an available fallback representation, it will be included in the notification's `fallback` attribute.
final List<NotificationTypeEnum> types = ; // List<NotificationTypeEnum> | Types to include in the result.

try {
    final response = api.getNotifications(accountId, excludeTypes, includeFiltered, limit, maxId, minId, sinceId, supportedTypes, types);
    print(response);
} on DioException catch (e) {
    print('Exception when calling NotificationsApi->getNotifications: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String**| Return only notifications received from the specified account. | [optional] 
 **excludeTypes** | [**List&lt;NotificationTypeEnum&gt;**](NotificationTypeEnum.md)| Types to exclude from the results. | [optional] 
 **includeFiltered** | **bool**| Whether to include notifications filtered by the user's [NotificationPolicy]. Defaults to false. | [optional] [default to false]
 **limit** | **int**| Maximum number of results to return. Defaults to 40 notifications. Max 80 notifications. | [optional] [default to 40]
 **maxId** | **String**| All results returned will be lesser than this ID. In effect, sets an upper bound on results. | [optional] 
 **minId** | **String**| Returns results immediately newer than this ID. In effect, sets a cursor at this ID and paginates forward. | [optional] 
 **sinceId** | **String**| All results returned will be greater than this ID. In effect, sets a lower bound on results. | [optional] 
 **supportedTypes** | [**List&lt;String&gt;**](String.md)| Notification types to not get fallback representation for even when some is available. Passing this parameter is required to get any notification fallback at all. When this parameter is used, and a notification which type is *not* included in `supported_types` has an available fallback representation, it will be included in the notification's `fallback` attribute. | [optional] 
 **types** | [**List&lt;NotificationTypeEnum&gt;**](NotificationTypeEnum.md)| Types to include in the result. | [optional] 

### Return type

[**List&lt;Notification&gt;**](Notification.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNotificationsV2**
> GroupedNotificationsResults getNotificationsV2(accountId, excludeTypes, expandAccounts, groupedTypes, includeFiltered, limit, maxId, minId, sinceId, supportedTypes, types)

Get all grouped notifications

Return grouped notifications concerning the user. This API returns Link headers containing links to the next/previous page. However, the links can also be constructed dynamically using query params and `id` values.  Version history:  4.3.0 (`mastodon` [API version] 2) - added\\ 4.4.0 - added `admin.sign_up` to grouped notification types\\ 4.6.0 (`mastodon` [API version] 10) - added `supported_types` optional parameter

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getNotificationsApi();
final String accountId = accountId_example; // String | Return only notifications received from the specified account.
final List<NotificationTypeEnum> excludeTypes = ; // List<NotificationTypeEnum> | Types to exclude from the results.
final String expandAccounts = expandAccounts_example; // String | One of `full` (default) or `partial_avatars`. When set to `partial_avatars`, some accounts will not be rendered in full in the returned `accounts` list but will be instead returned in stripped-down form in the `partial_accounts` list. The most recent account in a notification group is always rendered in full in the `accounts` attribute.
final List<NotificationTypeEnum> groupedTypes = ; // List<NotificationTypeEnum> | Restrict which notification types can be grouped. Use this if there are notification types for which your client does not support grouping. If omitted, the server will group notifications of all types it supports (currently, `favourite`, `follow`, `reblog` and `admin.sign_up`). If you do not want any notification grouping, use [GET `/api/v1/notifications`] instead. Notifications that would be grouped if not for this parameter will instead be returned as individual single-notification groups with a unique `group_key` that can be assumed to be of the form `ungrouped-{notification_id}`. Please note that neither the streaming API nor the individual notification APIs are aware of this parameter and will always include a “proper” `group_key` that can be different from what is returned here, meaning that you may have to ignore `group_key` for such notifications that you do not want grouped and use `ungrouped-{notification_id}` instead for consistency.
final bool includeFiltered = true; // bool | Whether to include notifications filtered by the user's [NotificationPolicy]. Defaults to false.
final int limit = 56; // int | Maximum number of results to return. Defaults to 40 notifications. Max 80 notification groups.
final String maxId = maxId_example; // String | All results returned will be about notifications strictly older than this notification ID. In effect, sets an upper bound on results.
final String minId = minId_example; // String | Returns results about notifications immediately newer than this notification ID. In effect, sets a cursor at this ID and paginates forward.
final String sinceId = sinceId_example; // String | All results returned will be about notifications strictly newer than this notification ID. In effect, sets a lower bound on results.
final List<String> supportedTypes = ; // List<String> | Notification types to not get fallback representation for even when some is available. Passing this parameter is required to get any notification fallback at all. When this parameter is used, and a notification which type is *not* included in `supported_types` has an available fallback representation, it will be included in the notification group's `fallback` attribute.
final List<NotificationTypeEnum> types = ; // List<NotificationTypeEnum> | Types to include in the result.

try {
    final response = api.getNotificationsV2(accountId, excludeTypes, expandAccounts, groupedTypes, includeFiltered, limit, maxId, minId, sinceId, supportedTypes, types);
    print(response);
} on DioException catch (e) {
    print('Exception when calling NotificationsApi->getNotificationsV2: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String**| Return only notifications received from the specified account. | [optional] 
 **excludeTypes** | [**List&lt;NotificationTypeEnum&gt;**](NotificationTypeEnum.md)| Types to exclude from the results. | [optional] 
 **expandAccounts** | **String**| One of `full` (default) or `partial_avatars`. When set to `partial_avatars`, some accounts will not be rendered in full in the returned `accounts` list but will be instead returned in stripped-down form in the `partial_accounts` list. The most recent account in a notification group is always rendered in full in the `accounts` attribute. | [optional] 
 **groupedTypes** | [**List&lt;NotificationTypeEnum&gt;**](NotificationTypeEnum.md)| Restrict which notification types can be grouped. Use this if there are notification types for which your client does not support grouping. If omitted, the server will group notifications of all types it supports (currently, `favourite`, `follow`, `reblog` and `admin.sign_up`). If you do not want any notification grouping, use [GET `/api/v1/notifications`] instead. Notifications that would be grouped if not for this parameter will instead be returned as individual single-notification groups with a unique `group_key` that can be assumed to be of the form `ungrouped-{notification_id}`. Please note that neither the streaming API nor the individual notification APIs are aware of this parameter and will always include a “proper” `group_key` that can be different from what is returned here, meaning that you may have to ignore `group_key` for such notifications that you do not want grouped and use `ungrouped-{notification_id}` instead for consistency. | [optional] 
 **includeFiltered** | **bool**| Whether to include notifications filtered by the user's [NotificationPolicy]. Defaults to false. | [optional] [default to false]
 **limit** | **int**| Maximum number of results to return. Defaults to 40 notifications. Max 80 notification groups. | [optional] [default to 40]
 **maxId** | **String**| All results returned will be about notifications strictly older than this notification ID. In effect, sets an upper bound on results. | [optional] 
 **minId** | **String**| Returns results about notifications immediately newer than this notification ID. In effect, sets a cursor at this ID and paginates forward. | [optional] 
 **sinceId** | **String**| All results returned will be about notifications strictly newer than this notification ID. In effect, sets a lower bound on results. | [optional] 
 **supportedTypes** | [**List&lt;String&gt;**](String.md)| Notification types to not get fallback representation for even when some is available. Passing this parameter is required to get any notification fallback at all. When this parameter is used, and a notification which type is *not* included in `supported_types` has an available fallback representation, it will be included in the notification group's `fallback` attribute. | [optional] 
 **types** | [**List&lt;NotificationTypeEnum&gt;**](NotificationTypeEnum.md)| Types to include in the result. | [optional] 

### Return type

[**GroupedNotificationsResults**](GroupedNotificationsResults.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchNotificationPolicyV2**
> NotificationPolicy patchNotificationPolicyV2()

Update the filtering policy for notifications

Update the user's notifications filtering policy.  Version history:  4.3.0 - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getNotificationsApi();

try {
    final response = api.patchNotificationPolicyV2();
    print(response);
} on DioException catch (e) {
    print('Exception when calling NotificationsApi->patchNotificationPolicyV2: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NotificationPolicy**](NotificationPolicy.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postNotificationDismiss**
> postNotificationDismiss(id)

Dismiss a single notification

Dismiss a single notification from the server.  Version history:  1.3.0 - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getNotificationsApi();
final String id = id_example; // String | id parameter

try {
    api.postNotificationDismiss(id);
} on DioException catch (e) {
    print('Exception when calling NotificationsApi->postNotificationDismiss: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postNotificationDismissV2**
> postNotificationDismissV2(groupKey)

Dismiss a single notification group

Dismiss a single notification group from the server.  Version history:  4.3.0 (`mastodon` [API version] 2) - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getNotificationsApi();
final String groupKey = groupKey_example; // String | group_key parameter

try {
    api.postNotificationDismissV2(groupKey);
} on DioException catch (e) {
    print('Exception when calling NotificationsApi->postNotificationDismissV2: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupKey** | **String**| group_key parameter | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postNotificationRequestAccept**
> postNotificationRequestAccept(id)

Accept a single notification request

Accept a notification request, which merges the filtered notifications from that user back into the main notification and accepts any future notification from them.  Version history:  4.3.0 - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getNotificationsApi();
final String id = id_example; // String | id parameter

try {
    api.postNotificationRequestAccept(id);
} on DioException catch (e) {
    print('Exception when calling NotificationsApi->postNotificationRequestAccept: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postNotificationRequestDismiss**
> postNotificationRequestDismiss(id)

Dismiss a single notification request

Dismiss a notification request, which hides it and prevent it from contributing to the pending notification requests count.  Version history:  4.3.0 - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getNotificationsApi();
final String id = id_example; // String | id parameter

try {
    api.postNotificationRequestDismiss(id);
} on DioException catch (e) {
    print('Exception when calling NotificationsApi->postNotificationRequestDismiss: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

