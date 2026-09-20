# mastodon.api.SuggestionsApi

## Load the API package
```dart
import 'package:mastodon/api.dart';
```

All URIs are relative to *https://mastodon.example*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteSuggestion**](SuggestionsApi.md#deletesuggestion) | **DELETE** /api/v1/suggestions/{account_id} | Remove a suggestion
[**getSuggestions**](SuggestionsApi.md#getsuggestions) | **GET** /api/v1/suggestions | View follow suggestions (v1)
[**getSuggestionsV2**](SuggestionsApi.md#getsuggestionsv2) | **GET** /api/v2/suggestions | View follow suggestions (v2)


# **deleteSuggestion**
> deleteSuggestion(accountId)

Remove a suggestion

Remove an account from follow suggestions.  Version history:  2.4.3 - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getSuggestionsApi();
final String accountId = accountId_example; // String | account_id parameter

try {
    api.deleteSuggestion(accountId);
} on DioException catch (e) {
    print('Exception when calling SuggestionsApi->deleteSuggestion: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String**| account_id parameter | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSuggestions**
> List<Account> getSuggestions(limit)

View follow suggestions (v1)

Accounts the user has had past positive interactions with, but is not yet following.  Version history:  2.4.3 - added\\ 3.4.0 - deprecated

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getSuggestionsApi();
final int limit = 56; // int | Maximum number of results to return. Defaults to 40 accounts. Max 80 accounts.

try {
    final response = api.getSuggestions(limit);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SuggestionsApi->getSuggestions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Maximum number of results to return. Defaults to 40 accounts. Max 80 accounts. | [optional] [default to 40]

### Return type

[**List&lt;Account&gt;**](Account.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSuggestionsV2**
> List<Suggestion> getSuggestionsV2(limit)

View follow suggestions (v2)

Accounts that are promoted by staff, or that the user has had past positive interactions with, but is not yet following.  Version history:  3.4.0 - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getSuggestionsApi();
final int limit = 56; // int | Maximum number of results to return. Defaults to 40 accounts. Max 80 accounts.

try {
    final response = api.getSuggestionsV2(limit);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SuggestionsApi->getSuggestionsV2: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Maximum number of results to return. Defaults to 40 accounts. Max 80 accounts. | [optional] [default to 40]

### Return type

[**List&lt;Suggestion&gt;**](Suggestion.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

