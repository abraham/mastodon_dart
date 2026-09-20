# mastodon.model.CreateFilterV2Request

## Load the model package
```dart
import 'package:mastodon/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**context** | [**List&lt;FilterContextEnum&gt;**](FilterContextEnum.md) | Where the filter should be applied. Specify at least one of `home`, `notifications`, `public`, `thread`, `account`. | 
**title** | **String** | The name of the filter group. | 
**expiresIn** | **int** | How many seconds from now should the filter expire? Defaults to never expire. | [optional] 
**filterAction** | **String** | The policy to be applied when the filter is matched. Specify `warn`, `hide` or `blur`. | [optional] 
**keywordsAttributes** | [**List&lt;CreateFilterV2RequestKeywordsAttributesInner&gt;**](CreateFilterV2RequestKeywordsAttributesInner.md) | Array of objects with properties: keyword, whole_word | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


