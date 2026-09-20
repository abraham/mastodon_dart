# mastodon.api.StatusesApi

## Load the API package
```dart
import 'package:mastodon/api.dart';
```

All URIs are relative to *https://mastodon.example*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createStatus**](StatusesApi.md#createstatus) | **POST** /api/v1/statuses | Post a new status
[**deleteStatus**](StatusesApi.md#deletestatus) | **DELETE** /api/v1/statuses/{id} | Delete a status
[**getStatus**](StatusesApi.md#getstatus) | **GET** /api/v1/statuses/{id} | View a single status
[**getStatusContext**](StatusesApi.md#getstatuscontext) | **GET** /api/v1/statuses/{id}/context | Get parent and child statuses in context
[**getStatusFavouritedBy**](StatusesApi.md#getstatusfavouritedby) | **GET** /api/v1/statuses/{id}/favourited_by | See who favourited a status
[**getStatusHistory**](StatusesApi.md#getstatushistory) | **GET** /api/v1/statuses/{id}/history | View edit history of a status
[**getStatusQuotes**](StatusesApi.md#getstatusquotes) | **GET** /api/v1/statuses/{id}/quotes | See quotes of a status
[**getStatusRebloggedBy**](StatusesApi.md#getstatusrebloggedby) | **GET** /api/v1/statuses/{id}/reblogged_by | See who boosted a status
[**getStatusSource**](StatusesApi.md#getstatussource) | **GET** /api/v1/statuses/{id}/source | View status source
[**getStatuses**](StatusesApi.md#getstatuses) | **GET** /api/v1/statuses | View multiple statuses
[**postStatusBookmark**](StatusesApi.md#poststatusbookmark) | **POST** /api/v1/statuses/{id}/bookmark | Bookmark a status
[**postStatusFavourite**](StatusesApi.md#poststatusfavourite) | **POST** /api/v1/statuses/{id}/favourite | Favourite a status
[**postStatusMute**](StatusesApi.md#poststatusmute) | **POST** /api/v1/statuses/{id}/mute | Mute a conversation
[**postStatusPin**](StatusesApi.md#poststatuspin) | **POST** /api/v1/statuses/{id}/pin | Pin status to profile
[**postStatusQuoteRevoke**](StatusesApi.md#poststatusquoterevoke) | **POST** /api/v1/statuses/{id}/quotes/{quoting_status_id}/revoke | Revoke a quote post
[**postStatusReblog**](StatusesApi.md#poststatusreblog) | **POST** /api/v1/statuses/{id}/reblog | Boost a status
[**postStatusTranslate**](StatusesApi.md#poststatustranslate) | **POST** /api/v1/statuses/{id}/translate | Translate a status
[**postStatusUnbookmark**](StatusesApi.md#poststatusunbookmark) | **POST** /api/v1/statuses/{id}/unbookmark | Undo bookmark of a status
[**postStatusUnfavourite**](StatusesApi.md#poststatusunfavourite) | **POST** /api/v1/statuses/{id}/unfavourite | Undo favourite of a status
[**postStatusUnmute**](StatusesApi.md#poststatusunmute) | **POST** /api/v1/statuses/{id}/unmute | Unmute a conversation
[**postStatusUnpin**](StatusesApi.md#poststatusunpin) | **POST** /api/v1/statuses/{id}/unpin | Unpin status from profile
[**postStatusUnreblog**](StatusesApi.md#poststatusunreblog) | **POST** /api/v1/statuses/{id}/unreblog | Undo boost of a status
[**updateStatus**](StatusesApi.md#updatestatus) | **PUT** /api/v1/statuses/{id} | Edit a status
[**updateStatusInteractionPolicy**](StatusesApi.md#updatestatusinteractionpolicy) | **PUT** /api/v1/statuses/{id}/interaction_policy | Edit a status&#39; interaction policies


# **createStatus**
> CreateStatus200Response createStatus(createStatusRequest, idempotencyKey)

Post a new status

Publish a status with the given parameters.  Version history:  0.0.0 - added\\ 2.7.0 - `scheduled_at` added\\ 2.8.0 - `poll` added\\ 4.5.0 (`mastodon` [API version] 7) - `quoted_status_id` and `quote_approval_policy` added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getStatusesApi();
final CreateStatusRequest createStatusRequest = ; // CreateStatusRequest | JSON request body parameters for creating a status. Different types of statuses have different requirements.
final Object idempotencyKey = Object; // Object | Provide this header with any arbitrary string to prevent duplicate submissions of the same status. Consider using a hash or UUID generated client-side. Idempotency keys are stored for up to 1 hour.

try {
    final response = api.createStatus(createStatusRequest, idempotencyKey);
    print(response);
} on DioException catch (e) {
    print('Exception when calling StatusesApi->createStatus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createStatusRequest** | [**CreateStatusRequest**](CreateStatusRequest.md)| JSON request body parameters for creating a status. Different types of statuses have different requirements. | 
 **idempotencyKey** | [**Object**](.md)| Provide this header with any arbitrary string to prevent duplicate submissions of the same status. Consider using a hash or UUID generated client-side. Idempotency keys are stored for up to 1 hour. | [optional] 

### Return type

[**CreateStatus200Response**](CreateStatus200Response.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteStatus**
> Status deleteStatus(id, deleteMedia)

Delete a status

Delete one of your own statuses.  Version history:  0.0.0 - added\\ 2.9.0 - return source properties, for use with delete and redraft\\ 4.4.0 (`mastodon` [API version] 4) - added `delete_media` optional parameter

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getStatusesApi();
final String id = id_example; // String | id parameter
final bool deleteMedia = true; // bool | Whether to immediately delete the post's media attachments. If omitted or `false`, media attachments may be kept for approximately 24 hours so they can be re-used in a new post.

try {
    final response = api.deleteStatus(id, deleteMedia);
    print(response);
} on DioException catch (e) {
    print('Exception when calling StatusesApi->deleteStatus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 
 **deleteMedia** | **bool**| Whether to immediately delete the post's media attachments. If omitted or `false`, media attachments may be kept for approximately 24 hours so they can be re-used in a new post. | [optional] 

### Return type

[**Status**](Status.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStatus**
> Status getStatus(id)

View a single status

Obtain information about a status.  Version history:  0.0.0 - added\\ 2.7.0 - public statuses no longer require token

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getStatusesApi();
final String id = id_example; // String | id parameter

try {
    final response = api.getStatus(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling StatusesApi->getStatus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 

### Return type

[**Status**](Status.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStatusContext**
> Context getStatusContext(id)

Get parent and child statuses in context

View statuses above and below this status in the thread.  Version history:  0.0.0 - added\\ 4.0.0 - limit unauthenticated requests\\ 4.5.0 - added experimental `Mastodon-Async-Refresh` header

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getStatusesApi();
final String id = id_example; // String | id parameter

try {
    final response = api.getStatusContext(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling StatusesApi->getStatusContext: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 

### Return type

[**Context**](Context.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStatusFavouritedBy**
> List<Account> getStatusFavouritedBy(id, limit, maxId, sinceId)

See who favourited a status

View who favourited a given status.  Version history:  0.0.0 - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getStatusesApi();
final String id = id_example; // String | id parameter
final int limit = 56; // int | Maximum number of results to return. Defaults to 40 accounts. Max 80 accounts.
final String maxId = maxId_example; // String | Internal parameter. Use HTTP `Link` header for pagination.
final String sinceId = sinceId_example; // String | Internal parameter. Use HTTP `Link` header for pagination.

try {
    final response = api.getStatusFavouritedBy(id, limit, maxId, sinceId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling StatusesApi->getStatusFavouritedBy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 
 **limit** | **int**| Maximum number of results to return. Defaults to 40 accounts. Max 80 accounts. | [optional] [default to 40]
 **maxId** | **String**| Internal parameter. Use HTTP `Link` header for pagination. | [optional] 
 **sinceId** | **String**| Internal parameter. Use HTTP `Link` header for pagination. | [optional] 

### Return type

[**List&lt;Account&gt;**](Account.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStatusHistory**
> List<StatusEdit> getStatusHistory(id)

View edit history of a status

Get all known versions of a status, including the initial and current states.  Version history:  3.5.0 - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getStatusesApi();
final String id = id_example; // String | id parameter

try {
    final response = api.getStatusHistory(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling StatusesApi->getStatusHistory: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 

### Return type

[**List&lt;StatusEdit&gt;**](StatusEdit.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStatusQuotes**
> List<Status> getStatusQuotes(id, limit, maxId, sinceId)

See quotes of a status

View quotes of a status.  Version history:  4.5.0 (`mastodon` [API version] 7) - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getStatusesApi();
final String id = id_example; // String | id parameter
final int limit = 56; // int | Maximum number of results to return. Defaults to 20 statuses. Max 40 statuses.
final String maxId = maxId_example; // String | Internal parameter. Use HTTP `Link` header for pagination.
final String sinceId = sinceId_example; // String | Internal parameter. Use HTTP `Link` header for pagination.

try {
    final response = api.getStatusQuotes(id, limit, maxId, sinceId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling StatusesApi->getStatusQuotes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 
 **limit** | **int**| Maximum number of results to return. Defaults to 20 statuses. Max 40 statuses. | [optional] [default to 20]
 **maxId** | **String**| Internal parameter. Use HTTP `Link` header for pagination. | [optional] 
 **sinceId** | **String**| Internal parameter. Use HTTP `Link` header for pagination. | [optional] 

### Return type

[**List&lt;Status&gt;**](Status.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStatusRebloggedBy**
> List<Account> getStatusRebloggedBy(id, limit, maxId, sinceId)

See who boosted a status

View who boosted a given status.  Version history:  0.0.0 - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getStatusesApi();
final String id = id_example; // String | id parameter
final int limit = 56; // int | Maximum number of results to return. Defaults to 40 accounts. Max 80 accounts.
final String maxId = maxId_example; // String | Internal parameter. Use HTTP `Link` header for pagination.
final String sinceId = sinceId_example; // String | Internal parameter. Use HTTP `Link` header for pagination.

try {
    final response = api.getStatusRebloggedBy(id, limit, maxId, sinceId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling StatusesApi->getStatusRebloggedBy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 
 **limit** | **int**| Maximum number of results to return. Defaults to 40 accounts. Max 80 accounts. | [optional] [default to 40]
 **maxId** | **String**| Internal parameter. Use HTTP `Link` header for pagination. | [optional] 
 **sinceId** | **String**| Internal parameter. Use HTTP `Link` header for pagination. | [optional] 

### Return type

[**List&lt;Account&gt;**](Account.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStatusSource**
> StatusSource getStatusSource(id)

View status source

Obtain the source properties for a status so that it can be edited.  Version history:  3.5.0 - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getStatusesApi();
final String id = id_example; // String | id parameter

try {
    final response = api.getStatusSource(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling StatusesApi->getStatusSource: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 

### Return type

[**StatusSource**](StatusSource.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStatuses**
> List<Status> getStatuses(id)

View multiple statuses

Obtain information about multiple statuses.  Version history:  4.3.0 - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getStatusesApi();
final List<String> id = ; // List<String> | The IDs of the Statuses in the database.

try {
    final response = api.getStatuses(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling StatusesApi->getStatuses: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**List&lt;String&gt;**](String.md)| The IDs of the Statuses in the database. | [optional] 

### Return type

[**List&lt;Status&gt;**](Status.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postStatusBookmark**
> Status postStatusBookmark(id)

Bookmark a status

Privately bookmark a status.  Version history:  3.1.0 - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getStatusesApi();
final String id = id_example; // String | id parameter

try {
    final response = api.postStatusBookmark(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling StatusesApi->postStatusBookmark: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 

### Return type

[**Status**](Status.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postStatusFavourite**
> Status postStatusFavourite(id)

Favourite a status

Add a status to your favourites list.  Version history:  0.0.0 - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getStatusesApi();
final String id = id_example; // String | id parameter

try {
    final response = api.postStatusFavourite(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling StatusesApi->postStatusFavourite: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 

### Return type

[**Status**](Status.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postStatusMute**
> Status postStatusMute(id)

Mute a conversation

Do not receive notifications for the thread that this status is part of. Must be a thread in which you are a participant.  Version history:  1.4.2 - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getStatusesApi();
final String id = id_example; // String | id parameter

try {
    final response = api.postStatusMute(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling StatusesApi->postStatusMute: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 

### Return type

[**Status**](Status.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postStatusPin**
> Status postStatusPin(id)

Pin status to profile

Feature one of your own public statuses at the top of your profile.  Version history:  1.6.0 - added\\ 3.5.0 - you can now pin private posts

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getStatusesApi();
final String id = id_example; // String | id parameter

try {
    final response = api.postStatusPin(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling StatusesApi->postStatusPin: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 

### Return type

[**Status**](Status.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postStatusQuoteRevoke**
> Status postStatusQuoteRevoke(id, quotingStatusId)

Revoke a quote post

Revoke quote authorization of status `quoting_status_id`, detaching status `id`.  Version history:  4.5.0 (`mastodon` [API version] 7) - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getStatusesApi();
final String id = id_example; // String | id parameter
final String quotingStatusId = quotingStatusId_example; // String | quoting_status_id parameter

try {
    final response = api.postStatusQuoteRevoke(id, quotingStatusId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling StatusesApi->postStatusQuoteRevoke: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 
 **quotingStatusId** | **String**| quoting_status_id parameter | 

### Return type

[**Status**](Status.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postStatusReblog**
> Status postStatusReblog(id, postStatusReblogRequest)

Boost a status

Reshare a status on your own profile.  Version history:  0.0.0 - added\\ 2.8.0 - add `visibility` parameter

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getStatusesApi();
final String id = id_example; // String | id parameter
final PostStatusReblogRequest postStatusReblogRequest = ; // PostStatusReblogRequest | JSON request body parameters

try {
    final response = api.postStatusReblog(id, postStatusReblogRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling StatusesApi->postStatusReblog: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 
 **postStatusReblogRequest** | [**PostStatusReblogRequest**](PostStatusReblogRequest.md)| JSON request body parameters | [optional] 

### Return type

[**Status**](Status.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postStatusTranslate**
> Translation postStatusTranslate(id, postStatusTranslateRequest)

Translate a status

Translate the status content into some language. Only statuses with Public and Unlisted visibility can be translated.  Version history:  4.0.0 - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getStatusesApi();
final String id = id_example; // String | id parameter
final PostStatusTranslateRequest postStatusTranslateRequest = ; // PostStatusTranslateRequest | JSON request body parameters

try {
    final response = api.postStatusTranslate(id, postStatusTranslateRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling StatusesApi->postStatusTranslate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 
 **postStatusTranslateRequest** | [**PostStatusTranslateRequest**](PostStatusTranslateRequest.md)| JSON request body parameters | [optional] 

### Return type

[**Translation**](Translation.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postStatusUnbookmark**
> Status postStatusUnbookmark(id)

Undo bookmark of a status

Remove a status from your private bookmarks.  Version history:  3.1.0 - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getStatusesApi();
final String id = id_example; // String | id parameter

try {
    final response = api.postStatusUnbookmark(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling StatusesApi->postStatusUnbookmark: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 

### Return type

[**Status**](Status.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postStatusUnfavourite**
> Status postStatusUnfavourite(id)

Undo favourite of a status

Remove a status from your favourites list.  Version history:  0.0.0 - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getStatusesApi();
final String id = id_example; // String | id parameter

try {
    final response = api.postStatusUnfavourite(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling StatusesApi->postStatusUnfavourite: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 

### Return type

[**Status**](Status.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postStatusUnmute**
> Status postStatusUnmute(id)

Unmute a conversation

Start receiving notifications again for the thread that this status is part of.  Version history:  1.4.2 - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getStatusesApi();
final String id = id_example; // String | id parameter

try {
    final response = api.postStatusUnmute(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling StatusesApi->postStatusUnmute: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 

### Return type

[**Status**](Status.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postStatusUnpin**
> Status postStatusUnpin(id)

Unpin status from profile

Unfeature a status from the top of your profile.  Version history:  1.6.0 - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getStatusesApi();
final String id = id_example; // String | id parameter

try {
    final response = api.postStatusUnpin(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling StatusesApi->postStatusUnpin: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 

### Return type

[**Status**](Status.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postStatusUnreblog**
> Status postStatusUnreblog(id)

Undo boost of a status

Undo a reshare of a status.  Version history:  0.0.0 - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getStatusesApi();
final String id = id_example; // String | id parameter

try {
    final response = api.postStatusUnreblog(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling StatusesApi->postStatusUnreblog: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 

### Return type

[**Status**](Status.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateStatus**
> Status updateStatus(id, updateStatusRequest)

Edit a status

Edit a given status to change its text, sensitivity, media attachments, or poll. Notes:  Version history:  3.5.0 - added\\ 4.0.0 - add `language`\\ 4.5.0 (`mastodon` [API version] 7) - add `quote_approval_policy`

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getStatusesApi();
final String id = id_example; // String | id parameter
final UpdateStatusRequest updateStatusRequest = ; // UpdateStatusRequest | JSON request body parameters

try {
    final response = api.updateStatus(id, updateStatusRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling StatusesApi->updateStatus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 
 **updateStatusRequest** | [**UpdateStatusRequest**](UpdateStatusRequest.md)| JSON request body parameters | [optional] 

### Return type

[**Status**](Status.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateStatusInteractionPolicy**
> Status updateStatusInteractionPolicy(id, updateStatusInteractionPolicyRequest)

Edit a status' interaction policies

Edit a given status to change its interaction policies. Currently, this means changing its quote approval policy.  Version history:  4.5.0 (`mastodon` [API version] 7) - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getStatusesApi();
final String id = id_example; // String | id parameter
final UpdateStatusInteractionPolicyRequest updateStatusInteractionPolicyRequest = ; // UpdateStatusInteractionPolicyRequest | JSON request body parameters

try {
    final response = api.updateStatusInteractionPolicy(id, updateStatusInteractionPolicyRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling StatusesApi->updateStatusInteractionPolicy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 
 **updateStatusInteractionPolicyRequest** | [**UpdateStatusInteractionPolicyRequest**](UpdateStatusInteractionPolicyRequest.md)| JSON request body parameters | [optional] 

### Return type

[**Status**](Status.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

