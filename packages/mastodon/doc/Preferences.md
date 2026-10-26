# mastodon.model.Preferences

## Load the model package
```dart
import 'package:mastodon/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**postingColonDefaultColonSensitive** | **bool** | Default sensitivity flag for new posts. Equivalent to [CredentialAccount#source\\[sensitive\\]](https://docs.joinmastodon.org/entities/Account/#source-sensitive). | 
**postingColonDefaultColonVisibility** | [**StatusVisibilityEnum**](StatusVisibilityEnum.md) | Default visibility for new posts. Equivalent to [CredentialAccount#source\\[privacy\\]](https://docs.joinmastodon.org/entities/Account/#source-privacy). | 
**readingColonExpandColonMedia** | [**PreferencesReadingExpandMediaEnum**](PreferencesReadingExpandMediaEnum.md) | Whether media attachments should be automatically displayed or blurred/hidden. | 
**readingColonExpandColonSpoilers** | **bool** | Whether CWs should be expanded by default. | 
**postingColonDefaultColonLanguage** | **String** | Default language for new posts. Equivalent to [CredentialAccount#source\\[language\\]](https://docs.joinmastodon.org/entities/Account/#source-language) | [optional] 
**postingColonDefaultColonSpoilerField** | **bool** | Default for adding a content warning for new posts. Equivalent to [CredentialAccount#source\\[spoiler_field\\]](https://docs.joinmastodon.org/entities/Account/#source-spoiler-field). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


