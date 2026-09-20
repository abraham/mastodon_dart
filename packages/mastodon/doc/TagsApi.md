# mastodon.api.TagsApi

## Load the API package
```dart
import 'package:mastodon/api.dart';
```

All URIs are relative to *https://mastodon.example*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getTag**](TagsApi.md#gettag) | **GET** /api/v1/tags/{name} | View information about a single tag
[**postTagFeature**](TagsApi.md#posttagfeature) | **POST** /api/v1/tags/{id}/feature | Feature a hashtag
[**postTagFollow**](TagsApi.md#posttagfollow) | **POST** /api/v1/tags/{name}/follow | Follow a hashtag
[**postTagUnfeature**](TagsApi.md#posttagunfeature) | **POST** /api/v1/tags/{id}/unfeature | Unfeature a hashtag
[**postTagUnfollow**](TagsApi.md#posttagunfollow) | **POST** /api/v1/tags/{name}/unfollow | Unfollow a hashtag


# **getTag**
> Tag getTag(name)

View information about a single tag

Show a hashtag and its associated information  Version history:  4.0.0 - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getTagsApi();
final String name = name_example; // String | name parameter

try {
    final response = api.getTag(name);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TagsApi->getTag: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| name parameter | 

### Return type

[**Tag**](Tag.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postTagFeature**
> Tag postTagFeature(id)

Feature a hashtag

Feature the hashtag on your profile.  Version history:  4.4.0 - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getTagsApi();
final String id = id_example; // String | id parameter

try {
    final response = api.postTagFeature(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TagsApi->postTagFeature: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 

### Return type

[**Tag**](Tag.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postTagFollow**
> Tag postTagFollow(name)

Follow a hashtag

Follow a hashtag. Posts containing a followed hashtag will be inserted into your home timeline.  Version history:  4.0.0 - added\\ 4.1.0 - this action is now idempotent

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getTagsApi();
final String name = name_example; // String | name parameter

try {
    final response = api.postTagFollow(name);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TagsApi->postTagFollow: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| name parameter | 

### Return type

[**Tag**](Tag.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postTagUnfeature**
> Tag postTagUnfeature(id)

Unfeature a hashtag

Stop featuring the hashtag on your profile.  Version history:  4.4.0 - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getTagsApi();
final String id = id_example; // String | id parameter

try {
    final response = api.postTagUnfeature(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TagsApi->postTagUnfeature: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 

### Return type

[**Tag**](Tag.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postTagUnfollow**
> Tag postTagUnfollow(name)

Unfollow a hashtag

Unfollow a hashtag. Posts containing this hashtag will no longer be inserted into your home timeline.  Version history:  4.0.0 - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getTagsApi();
final String name = name_example; // String | name parameter

try {
    final response = api.postTagUnfollow(name);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TagsApi->postTagUnfollow: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| name parameter | 

### Return type

[**Tag**](Tag.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

