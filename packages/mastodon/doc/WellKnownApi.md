# mastodon.api.WellKnownApi

## Load the API package
```dart
import 'package:mastodon/api.dart';
```

All URIs are relative to *https://mastodon.example*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getWellKnownOauthAuthorizationServer**](WellKnownApi.md#getwellknownoauthauthorizationserver) | **GET** /.well-known/oauth-authorization-server | Discover OAuth Server Configuration


# **getWellKnownOauthAuthorizationServer**
> DiscoverOauthServerConfigurationResponse getWellKnownOauthAuthorizationServer()

Discover OAuth Server Configuration

Returns the OAuth 2 Authorization Server Metadata for the Mastodon server, as defined by [RFC 8414](https://datatracker.ietf.org/doc/html/rfc8414#section-3.2).  Version history:  4.3.0 - added\\ 4.4.0 - added `userinfo_endpoint`\\ 5.0.0 - added `prompt_values_supported`

### Example
```dart
import 'package:mastodon/api.dart';

final api = Mastodon().getWellKnownApi();

try {
    final response = api.getWellKnownOauthAuthorizationServer();
    print(response);
} on DioException catch (e) {
    print('Exception when calling WellKnownApi->getWellKnownOauthAuthorizationServer: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DiscoverOauthServerConfigurationResponse**](DiscoverOauthServerConfigurationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

