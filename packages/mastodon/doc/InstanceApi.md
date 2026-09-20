# mastodon.api.InstanceApi

## Load the API package
```dart
import 'package:mastodon/api.dart';
```

All URIs are relative to *https://mastodon.example*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getInstance**](InstanceApi.md#getinstance) | **GET** /api/v1/instance | View server information (v1)
[**getInstanceActivity**](InstanceApi.md#getinstanceactivity) | **GET** /api/v1/instance/activity | Weekly activity
[**getInstanceDomainBlocks**](InstanceApi.md#getinstancedomainblocks) | **GET** /api/v1/instance/domain_blocks | View moderated servers
[**getInstanceExtendedDescription**](InstanceApi.md#getinstanceextendeddescription) | **GET** /api/v1/instance/extended_description | View extended description
[**getInstancePeers**](InstanceApi.md#getinstancepeers) | **GET** /api/v1/instance/peers | List of connected domains
[**getInstancePrivacyPolicy**](InstanceApi.md#getinstanceprivacypolicy) | **GET** /api/v1/instance/privacy_policy | View privacy policy
[**getInstanceRules**](InstanceApi.md#getinstancerules) | **GET** /api/v1/instance/rules | List of rules
[**getInstanceTermsOfService**](InstanceApi.md#getinstancetermsofservice) | **GET** /api/v1/instance/terms_of_service | View terms of service
[**getInstanceTermsOfServiceByDate**](InstanceApi.md#getinstancetermsofservicebydate) | **GET** /api/v1/instance/terms_of_service/{date} | View a specific version of the terms of service
[**getInstanceTranslationLanguages**](InstanceApi.md#getinstancetranslationlanguages) | **GET** /api/v1/instance/translation_languages | View translation languages
[**getInstanceV2**](InstanceApi.md#getinstancev2) | **GET** /api/v2/instance | View server information


# **getInstance**
> V1Instance getInstance()

View server information (v1)

Obtain general information about the server. See [api/v2/instance](https://docs.joinmastodon.org/methods/Instance/#v2) instead.  Version history:  1.1.0 - added\\ 3.0.0 - requires user token if instance is in whitelist mode\\ 3.1.4 - added `invites_enabled` to response\\ 3.4.0 - added `rules`\\ 3.4.2 - added `configuration`\\ 4.0.0 - deprecated. added `configuration[accounts]`.

### Example
```dart
import 'package:mastodon/api.dart';

final api = Mastodon().getInstanceApi();

try {
    final response = api.getInstance();
    print(response);
} on DioException catch (e) {
    print('Exception when calling InstanceApi->getInstance: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**V1Instance**](V1Instance.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInstanceActivity**
> List<GetInstanceActivity200ResponseInner> getInstanceActivity()

Weekly activity

Server activity over the last 3 months, binned weekly.  Version history:  2.1.2 - added\\ 3.0.0 - requires user token if server is in whitelist mode

### Example
```dart
import 'package:mastodon/api.dart';

final api = Mastodon().getInstanceApi();

try {
    final response = api.getInstanceActivity();
    print(response);
} on DioException catch (e) {
    print('Exception when calling InstanceApi->getInstanceActivity: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List&lt;GetInstanceActivity200ResponseInner&gt;**](GetInstanceActivity200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInstanceDomainBlocks**
> List<DomainBlock> getInstanceDomainBlocks()

View moderated servers

Obtain a list of domains that have been blocked.  Version history:  4.0.0 - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getInstanceApi();

try {
    final response = api.getInstanceDomainBlocks();
    print(response);
} on DioException catch (e) {
    print('Exception when calling InstanceApi->getInstanceDomainBlocks: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List&lt;DomainBlock&gt;**](DomainBlock.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInstanceExtendedDescription**
> ExtendedDescription getInstanceExtendedDescription()

View extended description

Obtain an extended description of this server.  Version history:  4.0.0 - added

### Example
```dart
import 'package:mastodon/api.dart';

final api = Mastodon().getInstanceApi();

try {
    final response = api.getInstanceExtendedDescription();
    print(response);
} on DioException catch (e) {
    print('Exception when calling InstanceApi->getInstanceExtendedDescription: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ExtendedDescription**](ExtendedDescription.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInstancePeers**
> List<String> getInstancePeers()

List of connected domains

Domains that this server is aware of.  Version history:  2.1.2 - added\\ 3.0.0 - requires user token if server is in whitelist mode

### Example
```dart
import 'package:mastodon/api.dart';

final api = Mastodon().getInstanceApi();

try {
    final response = api.getInstancePeers();
    print(response);
} on DioException catch (e) {
    print('Exception when calling InstanceApi->getInstancePeers: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**List&lt;String&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInstancePrivacyPolicy**
> PrivacyPolicy getInstancePrivacyPolicy()

View privacy policy

Obtain the contents of this server's privacy policy.  Version history:  4.0.0 - added

### Example
```dart
import 'package:mastodon/api.dart';

final api = Mastodon().getInstanceApi();

try {
    final response = api.getInstancePrivacyPolicy();
    print(response);
} on DioException catch (e) {
    print('Exception when calling InstanceApi->getInstancePrivacyPolicy: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PrivacyPolicy**](PrivacyPolicy.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInstanceRules**
> List<Rule> getInstanceRules()

List of rules

Rules that the users of this service should follow.  Version history:  3.4.0 - added

### Example
```dart
import 'package:mastodon/api.dart';

final api = Mastodon().getInstanceApi();

try {
    final response = api.getInstanceRules();
    print(response);
} on DioException catch (e) {
    print('Exception when calling InstanceApi->getInstanceRules: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List&lt;Rule&gt;**](Rule.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInstanceTermsOfService**
> TermsOfService getInstanceTermsOfService()

View terms of service

Obtain the contents of this server's terms of service, if configured.  Version history:  4.4.0 - added

### Example
```dart
import 'package:mastodon/api.dart';

final api = Mastodon().getInstanceApi();

try {
    final response = api.getInstanceTermsOfService();
    print(response);
} on DioException catch (e) {
    print('Exception when calling InstanceApi->getInstanceTermsOfService: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TermsOfService**](TermsOfService.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInstanceTermsOfServiceByDate**
> TermsOfService getInstanceTermsOfServiceByDate(date)

View a specific version of the terms of service

Obtain the contents of this server's terms of service, for a specified date, if configured.  Version history:  4.4.0 - added

### Example
```dart
import 'package:mastodon/api.dart';

final api = Mastodon().getInstanceApi();
final String date = date_example; // String | date parameter

try {
    final response = api.getInstanceTermsOfServiceByDate(date);
    print(response);
} on DioException catch (e) {
    print('Exception when calling InstanceApi->getInstanceTermsOfServiceByDate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **String**| date parameter | 

### Return type

[**TermsOfService**](TermsOfService.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInstanceTranslationLanguages**
> getInstanceTranslationLanguages()

View translation languages

Translation language pairs supported by the translation engine used by the server.  Version history:  4.2.0 - added

### Example
```dart
import 'package:mastodon/api.dart';

final api = Mastodon().getInstanceApi();

try {
    api.getInstanceTranslationLanguages();
} on DioException catch (e) {
    print('Exception when calling InstanceApi->getInstanceTranslationLanguages: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInstanceV2**
> Instance getInstanceV2()

View server information

Obtain general information about the server.  Version history:  4.0.0 - added\\ 4.1.0 - added `configuration.urls.status`\\ 4.2.0 - added `registrations.url`\\ 4.3.0 - added `configuration.vapid.public_key`, `api_versions`, `configuration.accounts.max_pinned_statuses`, `icon`\\ 4.4.0 - added `configuration.urls.about`, `configuration.urls.privacy_policy`, `configuration.urls.terms_of_service`, `registrations.min_age`, `registrations.reason_required`, `configuration.limited_federation`\\ 4.6.0 - added `thumbnail.description`

### Example
```dart
import 'package:mastodon/api.dart';

final api = Mastodon().getInstanceApi();

try {
    final response = api.getInstanceV2();
    print(response);
} on DioException catch (e) {
    print('Exception when calling InstanceApi->getInstanceV2: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Instance**](Instance.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

