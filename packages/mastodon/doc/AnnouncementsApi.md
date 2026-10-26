# mastodon.api.AnnouncementsApi

## Load the API package
```dart
import 'package:mastodon/api.dart';
```

All URIs are relative to *https://mastodon.example*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteAnnouncementReaction**](AnnouncementsApi.md#deleteannouncementreaction) | **DELETE** /api/v1/announcements/{id}/reactions/{name} | Remove a reaction from an announcement
[**getAnnouncements**](AnnouncementsApi.md#getannouncements) | **GET** /api/v1/announcements | View all announcements
[**postAnnouncementDismiss**](AnnouncementsApi.md#postannouncementdismiss) | **POST** /api/v1/announcements/{id}/dismiss | Dismiss an announcement
[**updateAnnouncementReaction**](AnnouncementsApi.md#updateannouncementreaction) | **PUT** /api/v1/announcements/{id}/reactions/{name} | Add a reaction to an announcement


# **deleteAnnouncementReaction**
> deleteAnnouncementReaction(id, name)

Remove a reaction from an announcement

Undo a react emoji to an announcement.  Version history:  3.1.0 - added\\ 5.0.0 - reactions can be disabled, in which case this endpoint will return a 400 error

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getAnnouncementsApi();
final String id = id_example; // String | id parameter
final String name = name_example; // String | name parameter

try {
    api.deleteAnnouncementReaction(id, name);
} on DioException catch (e) {
    print('Exception when calling AnnouncementsApi->deleteAnnouncementReaction: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 
 **name** | **String**| name parameter | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAnnouncements**
> List<Announcement> getAnnouncements()

View all announcements

See all currently active announcements set by admins.  Version history:  3.1.0 - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getAnnouncementsApi();

try {
    final response = api.getAnnouncements();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AnnouncementsApi->getAnnouncements: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List&lt;Announcement&gt;**](Announcement.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postAnnouncementDismiss**
> postAnnouncementDismiss(id)

Dismiss an announcement

Allows a user to mark the announcement as read.  Version history:  3.1.0 - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getAnnouncementsApi();
final String id = id_example; // String | id parameter

try {
    api.postAnnouncementDismiss(id);
} on DioException catch (e) {
    print('Exception when calling AnnouncementsApi->postAnnouncementDismiss: $e\n');
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

# **updateAnnouncementReaction**
> updateAnnouncementReaction(id, name)

Add a reaction to an announcement

React to an announcement with an emoji.  Version history:  3.1.0 - added\\ 5.0.0 - reactions can be disabled, in which case this endpoint will return a 400 error

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getAnnouncementsApi();
final String id = id_example; // String | id parameter
final String name = name_example; // String | name parameter

try {
    api.updateAnnouncementReaction(id, name);
} on DioException catch (e) {
    print('Exception when calling AnnouncementsApi->updateAnnouncementReaction: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 
 **name** | **String**| name parameter | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

