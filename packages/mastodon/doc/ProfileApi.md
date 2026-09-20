# mastodon.api.ProfileApi

## Load the API package
```dart
import 'package:mastodon/api.dart';
```

All URIs are relative to *https://mastodon.example*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteProfileAvatar**](ProfileApi.md#deleteprofileavatar) | **DELETE** /api/v1/profile/avatar | Delete profile avatar
[**deleteProfileHeader**](ProfileApi.md#deleteprofileheader) | **DELETE** /api/v1/profile/header | Delete profile header
[**getProfile**](ProfileApi.md#getprofile) | **GET** /api/v1/profile | Get current user profile
[**patchProfile**](ProfileApi.md#patchprofile) | **PATCH** /api/v1/profile | Update current user profile


# **deleteProfileAvatar**
> CredentialAccount deleteProfileAvatar()

Delete profile avatar

Version history:  4.2.0 - added  Deletes the avatar associated with the user's profile.

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getProfileApi();

try {
    final response = api.deleteProfileAvatar();
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProfileApi->deleteProfileAvatar: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CredentialAccount**](CredentialAccount.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteProfileHeader**
> CredentialAccount deleteProfileHeader()

Delete profile header

Version history:  4.2.0 - added  Deletes the header image associated with the user's profile.

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getProfileApi();

try {
    final response = api.deleteProfileHeader();
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProfileApi->deleteProfileHeader: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CredentialAccount**](CredentialAccount.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProfile**
> Profile getProfile()

Get current user profile

Version history:  4.6.0 (`mastodon` [API version] 8) - added\\ 4.6.0 (`mastodon` [API version] 9) - added `avatar_description` and `header_description`

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getProfileApi();

try {
    final response = api.getProfile();
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProfileApi->getProfile: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Profile**](Profile.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchProfile**
> Profile patchProfile(patchProfileRequest)

Update current user profile

Update the current user's profile.  Version history:  4.6.0 (`mastodon` [API version] 8) - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getProfileApi();
final PatchProfileRequest patchProfileRequest = ; // PatchProfileRequest | JSON request body parameters

try {
    final response = api.patchProfile(patchProfileRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProfileApi->patchProfile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **patchProfileRequest** | [**PatchProfileRequest**](PatchProfileRequest.md)| JSON request body parameters | [optional] 

### Return type

[**Profile**](Profile.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

