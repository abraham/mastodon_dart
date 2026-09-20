# mastodon.model.Application

## Load the model package
```dart
import 'package:mastodon/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The numeric ID of the application. | 
**name** | **String** | The name of the application. | 
**redirectUri** | **String** | The registered redirection URI(s) for the application stored as a single string. Multiple URIs are separated by whitespace characters. May contain `\\n` characters when multiple redirect URIs are registered. | 
**redirectUris** | [**List&lt;Uri&gt;**](Uri.md) | The registered redirection URI(s) for the application. | 
**scopes** | [**List&lt;OAuthScope&gt;**](OAuthScope.md) | The scopes for the application. This is the registered `scopes` string split on whitespace. | 
**vapidKey** | **String** | Used for Push Streaming API. Returned with [POST /api/v1/apps](https://docs.joinmastodon.org/methods/apps/#create). Equivalent to [WebPushSubscription#server_key](https://docs.joinmastodon.org/entities/WebPushSubscription/#server_key) and [Instance#vapid_public_key](https://docs.joinmastodon.org/entities/Instance/#vapid_public_key) | 
**website** | [**Uri**](Uri.md) | The website associated with the application. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


