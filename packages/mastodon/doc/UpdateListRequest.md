# mastodon.model.UpdateListRequest

## Load the model package
```dart
import 'package:mastodon/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **String** | The title of the list to be created. | 
**exclusive** | **bool** | Whether members of this list need to get removed from the “Home” feed. | [optional] 
**repliesPolicy** | [**ListRepliesPolicyEnum**](ListRepliesPolicyEnum.md) | One of `followed`, `list`, or `none`. Defaults to `list`. | [optional] [default to ListRepliesPolicyEnum.list]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


