# mastodon.api.AccountsApi

## Load the API package
```dart
import 'package:mastodon/api.dart';
```

All URIs are relative to *https://mastodon.example*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAccount**](AccountsApi.md#createaccount) | **POST** /api/v1/accounts | Register an account
[**getAccount**](AccountsApi.md#getaccount) | **GET** /api/v1/accounts/{id} | Get account
[**getAccountCollections**](AccountsApi.md#getaccountcollections) | **GET** /api/v1/accounts/{account_id}/collections | Get all Collections from a given account
[**getAccountEndorsements**](AccountsApi.md#getaccountendorsements) | **GET** /api/v1/accounts/{id}/endorsements | Get featured accounts
[**getAccountFamiliarFollowers**](AccountsApi.md#getaccountfamiliarfollowers) | **GET** /api/v1/accounts/familiar_followers | Find familiar followers
[**getAccountFeaturedTags**](AccountsApi.md#getaccountfeaturedtags) | **GET** /api/v1/accounts/{id}/featured_tags | Get account&#39;s featured tags
[**getAccountFollowers**](AccountsApi.md#getaccountfollowers) | **GET** /api/v1/accounts/{id}/followers | Get account&#39;s followers
[**getAccountFollowing**](AccountsApi.md#getaccountfollowing) | **GET** /api/v1/accounts/{id}/following | Get account&#39;s following
[**getAccountIdentityProofs**](AccountsApi.md#getaccountidentityproofs) | **GET** /api/v1/accounts/{id}/identity_proofs | Identity proofs
[**getAccountInCollections**](AccountsApi.md#getaccountincollections) | **GET** /api/v1/accounts/{account_id}/in_collections | Get all Collections the current account is featured in
[**getAccountLists**](AccountsApi.md#getaccountlists) | **GET** /api/v1/accounts/{id}/lists | Get lists containing this account
[**getAccountLookup**](AccountsApi.md#getaccountlookup) | **GET** /api/v1/accounts/lookup | Lookup account ID from WebFinger address
[**getAccountRelationships**](AccountsApi.md#getaccountrelationships) | **GET** /api/v1/accounts/relationships | Check relationships to other accounts
[**getAccountSearch**](AccountsApi.md#getaccountsearch) | **GET** /api/v1/accounts/search | Search for matching accounts
[**getAccountStatuses**](AccountsApi.md#getaccountstatuses) | **GET** /api/v1/accounts/{id}/statuses | Get account&#39;s statuses
[**getAccountVerifyCredentials**](AccountsApi.md#getaccountverifycredentials) | **GET** /api/v1/accounts/verify_credentials | Verify account credentials
[**getAccounts**](AccountsApi.md#getaccounts) | **GET** /api/v1/accounts | Get multiple accounts
[**patchAccountUpdateCredentials**](AccountsApi.md#patchaccountupdatecredentials) | **PATCH** /api/v1/accounts/update_credentials | Update account credentials
[**postAccountBlock**](AccountsApi.md#postaccountblock) | **POST** /api/v1/accounts/{id}/block | Block account
[**postAccountEndorse**](AccountsApi.md#postaccountendorse) | **POST** /api/v1/accounts/{id}/endorse | Feature account on your profile
[**postAccountFollow**](AccountsApi.md#postaccountfollow) | **POST** /api/v1/accounts/{id}/follow | Follow account
[**postAccountMute**](AccountsApi.md#postaccountmute) | **POST** /api/v1/accounts/{id}/mute | Mute account
[**postAccountNote**](AccountsApi.md#postaccountnote) | **POST** /api/v1/accounts/{id}/note | Set private note on profile
[**postAccountPin**](AccountsApi.md#postaccountpin) | **POST** /api/v1/accounts/{id}/pin | Feature account on your profile
[**postAccountRemoveFromFollowers**](AccountsApi.md#postaccountremovefromfollowers) | **POST** /api/v1/accounts/{id}/remove_from_followers | Remove account from followers
[**postAccountUnblock**](AccountsApi.md#postaccountunblock) | **POST** /api/v1/accounts/{id}/unblock | Unblock account
[**postAccountUnendorse**](AccountsApi.md#postaccountunendorse) | **POST** /api/v1/accounts/{id}/unendorse | Unfeature account from profile
[**postAccountUnfollow**](AccountsApi.md#postaccountunfollow) | **POST** /api/v1/accounts/{id}/unfollow | Unfollow account
[**postAccountUnmute**](AccountsApi.md#postaccountunmute) | **POST** /api/v1/accounts/{id}/unmute | Unmute account
[**postAccountUnpin**](AccountsApi.md#postaccountunpin) | **POST** /api/v1/accounts/{id}/unpin | Unfeature account from profile


# **createAccount**
> Token createAccount(createAccountRequest)

Register an account

Creates a user and account records. Returns an account access token for the app that initiated the request. The app should save this token for later, and should wait for the user to confirm their account by clicking a link in their email inbox.  Version history:  2.7.0 - added\\ 3.0.0 - added `reason` parameter\\ 3.4.0 - added `details` to failure response\\ 4.4.0 - added `date_of_birth` parameter

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getAccountsApi();
final CreateAccountRequest createAccountRequest = ; // CreateAccountRequest | JSON request body parameters

try {
    final response = api.createAccount(createAccountRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AccountsApi->createAccount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createAccountRequest** | [**CreateAccountRequest**](CreateAccountRequest.md)| JSON request body parameters | 

### Return type

[**Token**](Token.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccount**
> Account getAccount(id)

Get account

View information about a profile.  Version history:  0.0.0 - added\\ 2.4.0 - returns 410 if account is suspended\\ 3.3.0 - returns an Account with `suspended: true` instead of 410

### Example
```dart
import 'package:mastodon/api.dart';

final api = Mastodon().getAccountsApi();
final String id = id_example; // String | id parameter

try {
    final response = api.getAccount(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AccountsApi->getAccount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 

### Return type

[**Account**](Account.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountCollections**
> Collections getAccountCollections(accountId, limit, offset)

Get all Collections from a given account

Version history:  4.6.0 (`mastodon` [API version] 10) - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getAccountsApi();
final String accountId = accountId_example; // String | account_id parameter
final int limit = 56; // int | Maximum number of results. Defaults to 40 Collections. Max 80 Collections.
final int offset = 56; // int | Skip the first n results. Defaults to 0.

try {
    final response = api.getAccountCollections(accountId, limit, offset);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AccountsApi->getAccountCollections: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String**| account_id parameter | 
 **limit** | **int**| Maximum number of results. Defaults to 40 Collections. Max 80 Collections. | [optional] [default to 40]
 **offset** | **int**| Skip the first n results. Defaults to 0. | [optional] [default to 0]

### Return type

[**Collections**](Collections.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountEndorsements**
> List<Account> getAccountEndorsements(id, limit, maxId, sinceId)

Get featured accounts

Accounts that the user is currently featuring on their profile.  Version history:  4.4.0 - added

### Example
```dart
import 'package:mastodon/api.dart';

final api = Mastodon().getAccountsApi();
final String id = id_example; // String | id parameter
final int limit = 56; // int | Maximum number of results to return. Defaults to 40 accounts. Max 80 accounts.
final String maxId = maxId_example; // String | Internal parameter. Use HTTP `Link` header for pagination.
final String sinceId = sinceId_example; // String | Internal parameter. Use HTTP `Link` header for pagination.

try {
    final response = api.getAccountEndorsements(id, limit, maxId, sinceId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AccountsApi->getAccountEndorsements: $e\n');
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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountFamiliarFollowers**
> List<FamiliarFollowers> getAccountFamiliarFollowers(id)

Find familiar followers

Obtain a list of all accounts that follow a given account, filtered for accounts you follow.  Version history:  3.5.0 - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getAccountsApi();
final List<String> id = ; // List<String> | Find familiar followers for the provided account IDs.

try {
    final response = api.getAccountFamiliarFollowers(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AccountsApi->getAccountFamiliarFollowers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**List&lt;String&gt;**](String.md)| Find familiar followers for the provided account IDs. | [optional] 

### Return type

[**List&lt;FamiliarFollowers&gt;**](FamiliarFollowers.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountFeaturedTags**
> List<FeaturedTag> getAccountFeaturedTags(id)

Get account's featured tags

Tags featured by this account.  Version history:  3.3.0 - added

### Example
```dart
import 'package:mastodon/api.dart';

final api = Mastodon().getAccountsApi();
final String id = id_example; // String | id parameter

try {
    final response = api.getAccountFeaturedTags(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AccountsApi->getAccountFeaturedTags: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 

### Return type

[**List&lt;FeaturedTag&gt;**](FeaturedTag.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountFollowers**
> List<Account> getAccountFollowers(id, limit, maxId, minId, sinceId)

Get account's followers

Accounts which follow the given account, if network is not hidden by the account owner.  Version history:  0.0.0 - added\\ 3.3.0 - both `min_id` and `max_id` can be used at the same time now\\ 4.0.0 - no longer requires an app token + `read:accounts`

### Example
```dart
import 'package:mastodon/api.dart';

final api = Mastodon().getAccountsApi();
final String id = id_example; // String | id parameter
final int limit = 56; // int | Maximum number of results to return. Defaults to 40 accounts. Max 80 accounts.
final String maxId = maxId_example; // String | Internal parameter. Use HTTP `Link` header for pagination.
final String minId = minId_example; // String | Internal parameter. Use HTTP `Link` header for pagination.
final String sinceId = sinceId_example; // String | Internal parameter. Use HTTP `Link` header for pagination.

try {
    final response = api.getAccountFollowers(id, limit, maxId, minId, sinceId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AccountsApi->getAccountFollowers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 
 **limit** | **int**| Maximum number of results to return. Defaults to 40 accounts. Max 80 accounts. | [optional] [default to 40]
 **maxId** | **String**| Internal parameter. Use HTTP `Link` header for pagination. | [optional] 
 **minId** | **String**| Internal parameter. Use HTTP `Link` header for pagination. | [optional] 
 **sinceId** | **String**| Internal parameter. Use HTTP `Link` header for pagination. | [optional] 

### Return type

[**List&lt;Account&gt;**](Account.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountFollowing**
> List<Account> getAccountFollowing(id, limit, maxId, minId, sinceId)

Get account's following

Accounts which the given account is following, if network is not hidden by the account owner.  Version history:  0.0.0 - added\\ 3.3.0 - both `min_id` and `max_id` can be used at the same time now\\ 4.0.0 - no longer requires an app token + `read:accounts`

### Example
```dart
import 'package:mastodon/api.dart';

final api = Mastodon().getAccountsApi();
final String id = id_example; // String | id parameter
final int limit = 56; // int | Maximum number of results to return. Defaults to 40 accounts. Max 80 accounts.
final String maxId = maxId_example; // String | Internal parameter. Use HTTP `Link` header for pagination.
final String minId = minId_example; // String | Internal parameter. Use HTTP `Link` header for pagination.
final String sinceId = sinceId_example; // String | Internal parameter. Use HTTP `Link` header for pagination.

try {
    final response = api.getAccountFollowing(id, limit, maxId, minId, sinceId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AccountsApi->getAccountFollowing: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 
 **limit** | **int**| Maximum number of results to return. Defaults to 40 accounts. Max 80 accounts. | [optional] [default to 40]
 **maxId** | **String**| Internal parameter. Use HTTP `Link` header for pagination. | [optional] 
 **minId** | **String**| Internal parameter. Use HTTP `Link` header for pagination. | [optional] 
 **sinceId** | **String**| Internal parameter. Use HTTP `Link` header for pagination. | [optional] 

### Return type

[**List&lt;Account&gt;**](Account.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountIdentityProofs**
> List<IdentityProof> getAccountIdentityProofs(id)

Identity proofs

Version history:  2.8.0 - added\\ 3.5.0 - deprecated. now returns an empty array.

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getAccountsApi();
final String id = id_example; // String | id parameter

try {
    final response = api.getAccountIdentityProofs(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AccountsApi->getAccountIdentityProofs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 

### Return type

[**List&lt;IdentityProof&gt;**](IdentityProof.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountInCollections**
> Collections getAccountInCollections(accountId, limit, offset)

Get all Collections the current account is featured in

Version history:  4.6.0 (`mastodon` [API version] 10) - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getAccountsApi();
final String accountId = accountId_example; // String | account_id parameter
final int limit = 56; // int | Maximum number of results. Defaults to 40 Collections. Max 80 Collections.
final int offset = 56; // int | Skip the first n results. Defaults to 0.

try {
    final response = api.getAccountInCollections(accountId, limit, offset);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AccountsApi->getAccountInCollections: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String**| account_id parameter | 
 **limit** | **int**| Maximum number of results. Defaults to 40 Collections. Max 80 Collections. | [optional] [default to 40]
 **offset** | **int**| Skip the first n results. Defaults to 0. | [optional] [default to 0]

### Return type

[**Collections**](Collections.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountLists**
> List<List> getAccountLists(id)

Get lists containing this account

User lists that you have added this account to.  Version history:  2.1.0 - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getAccountsApi();
final String id = id_example; // String | id parameter

try {
    final response = api.getAccountLists(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AccountsApi->getAccountLists: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 

### Return type

[**List&lt;List&gt;**](List.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountLookup**
> Account getAccountLookup(acct)

Lookup account ID from WebFinger address

Quickly lookup a username to see if it is available, skipping WebFinger resolution.  Version history:  3.4.0 - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getAccountsApi();
final String acct = acct_example; // String | The username or WebFinger address to lookup.

try {
    final response = api.getAccountLookup(acct);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AccountsApi->getAccountLookup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **acct** | **String**| The username or WebFinger address to lookup. | 

### Return type

[**Account**](Account.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountRelationships**
> List<Relationship> getAccountRelationships(id, withSuspended)

Check relationships to other accounts

Find out whether a given account is followed, blocked, muted, etc.  Version history:  0.0.0 - added\\ 4.3.0 - added `with_suspended` parameter 4.6.0 - added `muting_expires_at`

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getAccountsApi();
final List<String> id = ; // List<String> | Check relationships for the provided account IDs.
final bool withSuspended = true; // bool | Whether relationships should be returned for suspended users, defaults to false.

try {
    final response = api.getAccountRelationships(id, withSuspended);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AccountsApi->getAccountRelationships: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**List&lt;String&gt;**](String.md)| Check relationships for the provided account IDs. | [optional] 
 **withSuspended** | **bool**| Whether relationships should be returned for suspended users, defaults to false. | [optional] [default to false]

### Return type

[**List&lt;Relationship&gt;**](Relationship.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountSearch**
> List<Account> getAccountSearch(q, following, limit, offset, resolve)

Search for matching accounts

Search for matching accounts by username or display name.  Version history:  0.0.0 - added\\ 2.8.0 - add `limit`, `offset` and `following`

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getAccountsApi();
final String q = q_example; // String | Search query for accounts.
final bool following = true; // bool | Limit the search to users you are following. Defaults to false.
final int limit = 56; // int | Maximum number of results. Defaults to 40 accounts. Max 80 accounts.
final int offset = 56; // int | Skip the first n results.
final bool resolve = true; // bool | Attempt WebFinger lookup. Defaults to false. Use this when `q` is an exact address.

try {
    final response = api.getAccountSearch(q, following, limit, offset, resolve);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AccountsApi->getAccountSearch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| Search query for accounts. | 
 **following** | **bool**| Limit the search to users you are following. Defaults to false. | [optional] [default to false]
 **limit** | **int**| Maximum number of results. Defaults to 40 accounts. Max 80 accounts. | [optional] [default to 40]
 **offset** | **int**| Skip the first n results. | [optional] 
 **resolve** | **bool**| Attempt WebFinger lookup. Defaults to false. Use this when `q` is an exact address. | [optional] [default to false]

### Return type

[**List&lt;Account&gt;**](Account.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountStatuses**
> List<Status> getAccountStatuses(id, excludeReblogs, excludeReplies, limit, maxId, minId, onlyMedia, pinned, sinceId, tagged)

Get account's statuses

Statuses posted to the given account.  Version history:  0.0.0 - added\\ 1.4.2 - add `only_media` and `exclude_replies`\\ 1.6.0 - add `pinned`\\ 2.6.0 - add `min_id`\\ 2.7.0 - add `exclude_reblogs` and allow unauthed use\\ 2.8.0 - add `tagged` parameter\\ 3.3.0 - both `min_id` and `max_id` can be used at the same time now

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getAccountsApi();
final String id = id_example; // String | id parameter
final bool excludeReblogs = true; // bool | Filter out boosts from the response.
final bool excludeReplies = true; // bool | Filter out statuses in reply to a different account.
final int limit = 56; // int | Maximum number of results to return. Defaults to 20 statuses. Max 40 statuses.
final String maxId = maxId_example; // String | All results returned will be lesser than this ID. In effect, sets an upper bound on results.
final String minId = minId_example; // String | Returns results immediately newer than this ID. In effect, sets a cursor at this ID and paginates forward.
final bool onlyMedia = true; // bool | Filter out statuses without attachments.
final bool pinned = true; // bool | Filter for pinned statuses only. Defaults to false, which includes all statuses. Pinned statuses do not receive special priority in the order of the returned results.
final String sinceId = sinceId_example; // String | All results returned will be greater than this ID. In effect, sets a lower bound on results.
final String tagged = tagged_example; // String | Filter for statuses using a specific hashtag.

try {
    final response = api.getAccountStatuses(id, excludeReblogs, excludeReplies, limit, maxId, minId, onlyMedia, pinned, sinceId, tagged);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AccountsApi->getAccountStatuses: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 
 **excludeReblogs** | **bool**| Filter out boosts from the response. | [optional] 
 **excludeReplies** | **bool**| Filter out statuses in reply to a different account. | [optional] 
 **limit** | **int**| Maximum number of results to return. Defaults to 20 statuses. Max 40 statuses. | [optional] [default to 20]
 **maxId** | **String**| All results returned will be lesser than this ID. In effect, sets an upper bound on results. | [optional] 
 **minId** | **String**| Returns results immediately newer than this ID. In effect, sets a cursor at this ID and paginates forward. | [optional] 
 **onlyMedia** | **bool**| Filter out statuses without attachments. | [optional] 
 **pinned** | **bool**| Filter for pinned statuses only. Defaults to false, which includes all statuses. Pinned statuses do not receive special priority in the order of the returned results. | [optional] 
 **sinceId** | **String**| All results returned will be greater than this ID. In effect, sets a lower bound on results. | [optional] 
 **tagged** | **String**| Filter for statuses using a specific hashtag. | [optional] 

### Return type

[**List&lt;Status&gt;**](Status.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountVerifyCredentials**
> CredentialAccount getAccountVerifyCredentials()

Verify account credentials

Test to make sure that the user token works.  Version history:  0.0.0 - added\\ 4.3.0 - added `profile` scope

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getAccountsApi();

try {
    final response = api.getAccountVerifyCredentials();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AccountsApi->getAccountVerifyCredentials: $e\n');
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

# **getAccounts**
> List<Account> getAccounts(id)

Get multiple accounts

View information about multiple profiles.  Version history:  4.3.0 - added

### Example
```dart
import 'package:mastodon/api.dart';

final api = Mastodon().getAccountsApi();
final List<String> id = ; // List<String> | The IDs of the accounts.

try {
    final response = api.getAccounts(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AccountsApi->getAccounts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**List&lt;String&gt;**](String.md)| The IDs of the accounts. | [optional] 

### Return type

[**List&lt;Account&gt;**](Account.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchAccountUpdateCredentials**
> CredentialAccount patchAccountUpdateCredentials(patchAccountUpdateCredentialsRequest)

Update account credentials

Update the user's display and preferences.  Version history:  1.1.1 - added\\ 2.3.0 - added `locked` parameter\\ 2.4.0 - added `source[privacy,sensitive]` parameters\\ 2.4.2 - added `source[language]` parameter\\ 2.7.0 - added `discoverable` parameter\\ 4.1.0 - added `hide_collections` parameter\\ 4.2.0 - added `indexable` parameter\\ 4.4.0 (`mastodon` [API version] 3) - added `attribution_domains` parameter\\ 4.5.0 (`mastodon` [API version] 7) - added `quote_policy` parameter\\ 4.6.1 (`mastodon` [API version] 11) - added `avatar_description` and `header_description` parameter

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getAccountsApi();
final PatchAccountUpdateCredentialsRequest patchAccountUpdateCredentialsRequest = ; // PatchAccountUpdateCredentialsRequest | JSON request body parameters

try {
    final response = api.patchAccountUpdateCredentials(patchAccountUpdateCredentialsRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AccountsApi->patchAccountUpdateCredentials: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **patchAccountUpdateCredentialsRequest** | [**PatchAccountUpdateCredentialsRequest**](PatchAccountUpdateCredentialsRequest.md)| JSON request body parameters | [optional] 

### Return type

[**CredentialAccount**](CredentialAccount.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postAccountBlock**
> Relationship postAccountBlock(id)

Block account

[Blocks](https://docs.joinmastodon.org/user/moderating/#block) the given account.  Version history:  0.0.0 - added\\ 3.5.0 - deprecated `follow` scope. now additionally accepts `write`

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getAccountsApi();
final String id = id_example; // String | id parameter

try {
    final response = api.postAccountBlock(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AccountsApi->postAccountBlock: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 

### Return type

[**Relationship**](Relationship.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postAccountEndorse**
> Relationship postAccountEndorse(id)

Feature account on your profile

Add the given account to the user's featured profiles.  Version history:  4.4.0 - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getAccountsApi();
final String id = id_example; // String | id parameter

try {
    final response = api.postAccountEndorse(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AccountsApi->postAccountEndorse: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 

### Return type

[**Relationship**](Relationship.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postAccountFollow**
> Relationship postAccountFollow(id, postAccountFollowRequest)

Follow account

Follow the given account. Can also be used to update whether to show reblogs or enable notifications.  Version history:  0.0.0 - added\\ 3.3.0 - added `notify`\\ 3.5.0 - deprecated `follow` scope. now additionally accepts `write`\\ 4.0.0 - added `languages`

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getAccountsApi();
final String id = id_example; // String | id parameter
final PostAccountFollowRequest postAccountFollowRequest = ; // PostAccountFollowRequest | JSON request body parameters

try {
    final response = api.postAccountFollow(id, postAccountFollowRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AccountsApi->postAccountFollow: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 
 **postAccountFollowRequest** | [**PostAccountFollowRequest**](PostAccountFollowRequest.md)| JSON request body parameters | [optional] 

### Return type

[**Relationship**](Relationship.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postAccountMute**
> Relationship postAccountMute(id, postAccountMuteRequest)

Mute account

Mute the given account. Clients should filter statuses and notifications from this account, if received (e.g. due to a boost in the Home timeline).  Version history:  0.0.0 - added\\ 3.3.0 - added `duration`\\ 3.5.0 - deprecated `follow` scope. now additionally accepts `write`

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getAccountsApi();
final String id = id_example; // String | id parameter
final PostAccountMuteRequest postAccountMuteRequest = ; // PostAccountMuteRequest | JSON request body parameters

try {
    final response = api.postAccountMute(id, postAccountMuteRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AccountsApi->postAccountMute: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 
 **postAccountMuteRequest** | [**PostAccountMuteRequest**](PostAccountMuteRequest.md)| JSON request body parameters | [optional] 

### Return type

[**Relationship**](Relationship.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postAccountNote**
> Relationship postAccountNote(id, postAccountNoteRequest)

Set private note on profile

Sets a private note on a user.  Version history:  3.2.0 - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getAccountsApi();
final String id = id_example; // String | id parameter
final PostAccountNoteRequest postAccountNoteRequest = ; // PostAccountNoteRequest | JSON request body parameters

try {
    final response = api.postAccountNote(id, postAccountNoteRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AccountsApi->postAccountNote: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 
 **postAccountNoteRequest** | [**PostAccountNoteRequest**](PostAccountNoteRequest.md)| JSON request body parameters | [optional] 

### Return type

[**Relationship**](Relationship.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postAccountPin**
> Relationship postAccountPin(id)

Feature account on your profile

Add the given account to the user's featured profiles. (Featured profiles are currently shown on the user's own public profile.)  Version history:  2.5.0 - added\\ 4.0.0 - calling this method is now idempotent\\ 4.4.0 - deprecated in favor of `/api/v1/accounts/:id/endorse`

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getAccountsApi();
final String id = id_example; // String | id parameter

try {
    final response = api.postAccountPin(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AccountsApi->postAccountPin: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 

### Return type

[**Relationship**](Relationship.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postAccountRemoveFromFollowers**
> Relationship postAccountRemoveFromFollowers(id)

Remove account from followers

Remove the given account from your followers.  Version history:  3.5.0 - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getAccountsApi();
final String id = id_example; // String | id parameter

try {
    final response = api.postAccountRemoveFromFollowers(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AccountsApi->postAccountRemoveFromFollowers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 

### Return type

[**Relationship**](Relationship.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postAccountUnblock**
> Relationship postAccountUnblock(id)

Unblock account

Unblock the given account.  Version history:  0.0.0 - added\\ 3.5.0 - deprecated `follow` scope. now additionally accepts `write`

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getAccountsApi();
final String id = id_example; // String | id parameter

try {
    final response = api.postAccountUnblock(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AccountsApi->postAccountUnblock: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 

### Return type

[**Relationship**](Relationship.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postAccountUnendorse**
> Relationship postAccountUnendorse(id)

Unfeature account from profile

Remove the given account from the user's featured profiles.  Version history:  4.4.0 - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getAccountsApi();
final String id = id_example; // String | id parameter

try {
    final response = api.postAccountUnendorse(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AccountsApi->postAccountUnendorse: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 

### Return type

[**Relationship**](Relationship.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postAccountUnfollow**
> Relationship postAccountUnfollow(id)

Unfollow account

Unfollow the given account.  Version history:  0.0.0 - added\\ 3.5.0 - deprecated `follow` scope. now additionally accepts `write`

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getAccountsApi();
final String id = id_example; // String | id parameter

try {
    final response = api.postAccountUnfollow(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AccountsApi->postAccountUnfollow: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 

### Return type

[**Relationship**](Relationship.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postAccountUnmute**
> Relationship postAccountUnmute(id)

Unmute account

Unmute the given account.  Version history:  0.0.0 - added\\ 3.5.0 - deprecated `follow` scope. now additionally accepts `write`

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getAccountsApi();
final String id = id_example; // String | id parameter

try {
    final response = api.postAccountUnmute(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AccountsApi->postAccountUnmute: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 

### Return type

[**Relationship**](Relationship.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postAccountUnpin**
> Relationship postAccountUnpin(id)

Unfeature account from profile

Remove the given account from the user's featured profiles.  Version history:  2.5.0 - added\\ 4.4.0 - deprecated in favor of `/api/v1/accounts/:id/unendorse`

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getAccountsApi();
final String id = id_example; // String | id parameter

try {
    final response = api.postAccountUnpin(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AccountsApi->postAccountUnpin: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id parameter | 

### Return type

[**Relationship**](Relationship.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

