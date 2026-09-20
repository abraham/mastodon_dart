# mastodon.model.Instance

## Load the model package
```dart
import 'package:mastodon/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**apiVersions** | [**InstanceApiVersions**](InstanceApiVersions.md) |  | 
**configuration** | [**InstanceConfiguration**](InstanceConfiguration.md) |  | 
**contact** | [**InstanceContact**](InstanceContact.md) |  | 
**description** | **String** | A short, plain-text description defined by the admin. | 
**domain** | **String** | The WebFinger domain name of the server. | 
**icon** | [**List&lt;InstanceIcon&gt;**](InstanceIcon.md) | The list of available size variants for this server's configured icon. | 
**languages** | **List&lt;String&gt;** | Primary languages of the website and its staff. | 
**registrations** | [**InstanceRegistrations**](InstanceRegistrations.md) |  | 
**rules** | [**List&lt;Rule&gt;**](Rule.md) | An itemized list of rules for this website. | 
**sourceUrl** | [**Uri**](Uri.md) | The URL for the source code of the software running on this server, per the AGPL license requirements. | 
**thumbnail** | [**InstanceThumbnail**](InstanceThumbnail.md) |  | 
**title** | **String** | The title of the website. | 
**usage** | [**InstanceUsage**](InstanceUsage.md) |  | 
**version** | **String** | The version of Mastodon installed on the server. | 
**wrapstodon** | **String** | The current Wrapstodon ([Annual report](https://docs.joinmastodon.org/methods/annual_reports/) campaign identifier (year), if any. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


