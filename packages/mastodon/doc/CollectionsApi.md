# mastodon.api.CollectionsApi

## Load the API package
```dart
import 'package:mastodon/api.dart';
```

All URIs are relative to *https://mastodon.example*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCollection**](CollectionsApi.md#createcollection) | **POST** /api/v1/collections | Create a Collection
[**deleteCollection**](CollectionsApi.md#deletecollection) | **DELETE** /api/v1/collections/{id} | Delete a Collection
[**deleteCollectionItem**](CollectionsApi.md#deletecollectionitem) | **DELETE** /api/v1/collections/{collection_id}/items/{id} | Remove account from a Collection
[**getCollection**](CollectionsApi.md#getcollection) | **GET** /api/v1/collections/{id} | Get a single Collection
[**postCollectionItemRevoke**](CollectionsApi.md#postcollectionitemrevoke) | **POST** /api/v1/collections/{collection_id}/items/{id}/revoke | Revoke inclusion in a Collection
[**postCollectionItems**](CollectionsApi.md#postcollectionitems) | **POST** /api/v1/collections/{collection_id}/items | Add an account to a Collection
[**updateCollection**](CollectionsApi.md#updatecollection) | **PATCH** /api/v1/collections/{id} | Update a Collection


# **createCollection**
> WrappedCollection createCollection(createCollectionRequest)

Create a Collection

Create a new Collection.  Version history:  4.6.0 (`mastodon` [API version] 10) - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getCollectionsApi();
final CreateCollectionRequest createCollectionRequest = ; // CreateCollectionRequest | JSON request body parameters

try {
    final response = api.createCollection(createCollectionRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CollectionsApi->createCollection: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createCollectionRequest** | [**CreateCollectionRequest**](CreateCollectionRequest.md)| JSON request body parameters | 

### Return type

[**WrappedCollection**](WrappedCollection.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCollection**
> deleteCollection(id)

Delete a Collection

Delete a Collection.  Version history:  4.6.0 (`mastodon` [API version] 10) - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getCollectionsApi();
final String id = id_example; // String | id parameter

try {
    api.deleteCollection(id);
} on DioException catch (e) {
    print('Exception when calling CollectionsApi->deleteCollection: $e\n');
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

# **deleteCollectionItem**
> deleteCollectionItem(collectionId, id)

Remove account from a Collection

Remove an account from a Collection.  Version history:  4.6.0 (`mastodon` [API version] 10) - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getCollectionsApi();
final String collectionId = collectionId_example; // String | collection_id parameter
final String id = id_example; // String | id parameter

try {
    api.deleteCollectionItem(collectionId, id);
} on DioException catch (e) {
    print('Exception when calling CollectionsApi->deleteCollectionItem: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**| collection_id parameter | 
 **id** | **String**| id parameter | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCollection**
> CollectionWithAccounts getCollection(id)

Get a single Collection

Version history:  4.6.0 (`mastodon` [API version] 10) - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getCollectionsApi();
final String id = id_example; // String | id parameter

try {
    final response = api.getCollection(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CollectionsApi->getCollection: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 

### Return type

[**CollectionWithAccounts**](CollectionWithAccounts.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postCollectionItemRevoke**
> postCollectionItemRevoke(collectionId, id)

Revoke inclusion in a Collection

Remove the current user from a Collection created by a different user.  Version history:  4.6.0 (`mastodon` [API version] 10) - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getCollectionsApi();
final String collectionId = collectionId_example; // String | collection_id parameter
final String id = id_example; // String | id parameter

try {
    api.postCollectionItemRevoke(collectionId, id);
} on DioException catch (e) {
    print('Exception when calling CollectionsApi->postCollectionItemRevoke: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**| collection_id parameter | 
 **id** | **String**| id parameter | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postCollectionItems**
> WrappedCollectionItem postCollectionItems(collectionId, postCollectionItemsRequest)

Add an account to a Collection

Add an account to a Collection.  Version history:  4.6.0 (`mastodon` [API version] 10) - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getCollectionsApi();
final String collectionId = collectionId_example; // String | collection_id parameter
final PostCollectionItemsRequest postCollectionItemsRequest = ; // PostCollectionItemsRequest | JSON request body parameters

try {
    final response = api.postCollectionItems(collectionId, postCollectionItemsRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CollectionsApi->postCollectionItems: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String**| collection_id parameter | 
 **postCollectionItemsRequest** | [**PostCollectionItemsRequest**](PostCollectionItemsRequest.md)| JSON request body parameters | [optional] 

### Return type

[**WrappedCollectionItem**](WrappedCollectionItem.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCollection**
> WrappedCollection updateCollection(id, updateCollectionRequest)

Update a Collection

Update an existing Collection.  Version history:  4.6.0 (`mastodon` [API version] 10) - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getCollectionsApi();
final String id = id_example; // String | id parameter
final UpdateCollectionRequest updateCollectionRequest = ; // UpdateCollectionRequest | JSON request body parameters

try {
    final response = api.updateCollection(id, updateCollectionRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CollectionsApi->updateCollection: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 
 **updateCollectionRequest** | [**UpdateCollectionRequest**](UpdateCollectionRequest.md)| JSON request body parameters | [optional] 

### Return type

[**WrappedCollection**](WrappedCollection.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

