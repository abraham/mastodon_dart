# mastodon.api.ListsApi

## Load the API package
```dart
import 'package:mastodon/api.dart';
```

All URIs are relative to *https://mastodon.example*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createList**](ListsApi.md#createlist) | **POST** /api/v1/lists | Create a list
[**deleteList**](ListsApi.md#deletelist) | **DELETE** /api/v1/lists/{id} | Delete a list
[**deleteListAccounts**](ListsApi.md#deletelistaccounts) | **DELETE** /api/v1/lists/{id}/accounts | Remove accounts from list
[**getList**](ListsApi.md#getlist) | **GET** /api/v1/lists/{id} | Show a single list
[**getListAccounts**](ListsApi.md#getlistaccounts) | **GET** /api/v1/lists/{id}/accounts | View accounts in a list
[**getLists**](ListsApi.md#getlists) | **GET** /api/v1/lists | View your lists
[**postListAccounts**](ListsApi.md#postlistaccounts) | **POST** /api/v1/lists/{id}/accounts | Add accounts to a list
[**updateList**](ListsApi.md#updatelist) | **PUT** /api/v1/lists/{id} | Update a list


# **createList**
> List createList(createListRequest)

Create a list

Create a new list.  Version history:  2.1.0 - added\\ 3.3.0 - added `replies_policy`\\ 4.2.0 - added `exclusive`

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getListsApi();
final CreateListRequest createListRequest = ; // CreateListRequest | JSON request body parameters

try {
    final response = api.createList(createListRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ListsApi->createList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createListRequest** | [**CreateListRequest**](CreateListRequest.md)| JSON request body parameters | 

### Return type

[**List**](List.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteList**
> deleteList(id)

Delete a list

Version history:  2.1.0 - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getListsApi();
final String id = id_example; // String | id parameter

try {
    api.deleteList(id);
} on DioException catch (e) {
    print('Exception when calling ListsApi->deleteList: $e\n');
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

# **deleteListAccounts**
> deleteListAccounts(id, deleteListAccountsRequest)

Remove accounts from list

Remove accounts from the given list.  Version history:  2.1.0 - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getListsApi();
final String id = id_example; // String | id parameter
final DeleteListAccountsRequest deleteListAccountsRequest = ; // DeleteListAccountsRequest | JSON request body parameters

try {
    api.deleteListAccounts(id, deleteListAccountsRequest);
} on DioException catch (e) {
    print('Exception when calling ListsApi->deleteListAccounts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 
 **deleteListAccountsRequest** | [**DeleteListAccountsRequest**](DeleteListAccountsRequest.md)| JSON request body parameters | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getList**
> List getList(id)

Show a single list

Fetch the list with the given ID.  Version history:  2.1.0 - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getListsApi();
final String id = id_example; // String | id parameter

try {
    final response = api.getList(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ListsApi->getList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 

### Return type

[**List**](List.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getListAccounts**
> List<Account> getListAccounts(id, limit, maxId, minId, sinceId)

View accounts in a list

Version history:  2.1.0 - added\\ 3.3.0 - both `min_id` and `max_id` can be used at the same time now

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getListsApi();
final String id = id_example; // String | id parameter
final int limit = 56; // int | Maximum number of results. Defaults to 40 accounts. Max 80 accounts. Set to 0 in order to get all accounts without pagination.
final String maxId = maxId_example; // String | Internal parameter. Use HTTP `Link` header for pagination.
final String minId = minId_example; // String | Internal parameter. Use HTTP `Link` header for pagination.
final String sinceId = sinceId_example; // String | Internal parameter. Use HTTP `Link` header for pagination.

try {
    final response = api.getListAccounts(id, limit, maxId, minId, sinceId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ListsApi->getListAccounts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 
 **limit** | **int**| Maximum number of results. Defaults to 40 accounts. Max 80 accounts. Set to 0 in order to get all accounts without pagination. | [optional] [default to 40]
 **maxId** | **String**| Internal parameter. Use HTTP `Link` header for pagination. | [optional] 
 **minId** | **String**| Internal parameter. Use HTTP `Link` header for pagination. | [optional] 
 **sinceId** | **String**| Internal parameter. Use HTTP `Link` header for pagination. | [optional] 

### Return type

[**List&lt;Account&gt;**](Account.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLists**
> List<List> getLists()

View your lists

Fetch all lists that the user owns.  Version history:  2.1.0 - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getListsApi();

try {
    final response = api.getLists();
    print(response);
} on DioException catch (e) {
    print('Exception when calling ListsApi->getLists: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List&lt;List&gt;**](List.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postListAccounts**
> postListAccounts(id, postListAccountsRequest)

Add accounts to a list

Add accounts to the given list. Note that the user must be following these accounts.  Version history:  2.1.0 - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getListsApi();
final String id = id_example; // String | id parameter
final PostListAccountsRequest postListAccountsRequest = ; // PostListAccountsRequest | JSON request body parameters

try {
    api.postListAccounts(id, postListAccountsRequest);
} on DioException catch (e) {
    print('Exception when calling ListsApi->postListAccounts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 
 **postListAccountsRequest** | [**PostListAccountsRequest**](PostListAccountsRequest.md)| JSON request body parameters | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateList**
> List updateList(id, updateListRequest)

Update a list

Change the properties of a list.  Version history:  2.1.0 - added\\ 3.3.0 - added `replies_policy` 4.2.0 - added `exclusive`

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getListsApi();
final String id = id_example; // String | id parameter
final UpdateListRequest updateListRequest = ; // UpdateListRequest | JSON request body parameters

try {
    final response = api.updateList(id, updateListRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ListsApi->updateList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 
 **updateListRequest** | [**UpdateListRequest**](UpdateListRequest.md)| JSON request body parameters | 

### Return type

[**List**](List.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

