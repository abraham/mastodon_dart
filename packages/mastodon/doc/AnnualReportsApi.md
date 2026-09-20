# mastodon.api.AnnualReportsApi

## Load the API package
```dart
import 'package:mastodon/api.dart';
```

All URIs are relative to *https://mastodon.example*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAnnualReport**](AnnualReportsApi.md#getannualreport) | **GET** /api/v1/annual_reports/{year} | Get a single annual report
[**getAnnualReportState**](AnnualReportsApi.md#getannualreportstate) | **GET** /api/v1/annual_reports/{year}/state | Get the state of an annual report
[**getAnnualReports**](AnnualReportsApi.md#getannualreports) | **GET** /api/v1/annual_reports | Get all annual reports
[**postAnnualReportGenerate**](AnnualReportsApi.md#postannualreportgenerate) | **POST** /api/v1/annual_reports/{year}/generate | Generate a new annual report {generate}
[**postAnnualReportRead**](AnnualReportsApi.md#postannualreportread) | **POST** /api/v1/annual_reports/{year}/read | Mark an annual report as read


# **getAnnualReport**
> WrappedAnnualReports getAnnualReport(year)

Get a single annual report

Returns the current user's generated annual report for the given year, if it exists.  Version history:  4.4.0 - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getAnnualReportsApi();
final String year = year_example; // String | year parameter

try {
    final response = api.getAnnualReport(year);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AnnualReportsApi->getAnnualReport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **String**| year parameter | 

### Return type

[**WrappedAnnualReports**](WrappedAnnualReports.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAnnualReportState**
> getAnnualReportState(year)

Get the state of an annual report

Returns the state of the annual report for the current user and given year.  Version history:  4.6.0 (`mastodon` [API version] 8) - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getAnnualReportsApi();
final String year = year_example; // String | year parameter

try {
    api.getAnnualReportState(year);
} on DioException catch (e) {
    print('Exception when calling AnnualReportsApi->getAnnualReportState: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **String**| year parameter | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAnnualReports**
> WrappedAnnualReports getAnnualReports()

Get all annual reports

Returns all of the current user's generated annual reports, if any.  Version history:  4.3.0 - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getAnnualReportsApi();

try {
    final response = api.getAnnualReports();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AnnualReportsApi->getAnnualReports: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WrappedAnnualReports**](WrappedAnnualReports.md)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postAnnualReportGenerate**
> postAnnualReportGenerate(year)

Generate a new annual report {generate}

Generate the user's annual report for the specified year.  Version history:  4.6.0 (`mastodon` [API version] 8) - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getAnnualReportsApi();
final String year = year_example; // String | year parameter

try {
    api.postAnnualReportGenerate(year);
} on DioException catch (e) {
    print('Exception when calling AnnualReportsApi->postAnnualReportGenerate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **String**| year parameter | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postAnnualReportRead**
> postAnnualReportRead(year)

Mark an annual report as read

Marks the user's generated annual report for the given year as read.  Version history:  4.3.0 - added

### Example
```dart
import 'package:mastodon/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Mastodon().getAnnualReportsApi();
final String year = year_example; // String | year parameter

try {
    api.postAnnualReportRead(year);
} on DioException catch (e) {
    print('Exception when calling AnnualReportsApi->postAnnualReportRead: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **String**| year parameter | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

