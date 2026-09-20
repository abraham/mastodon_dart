# mastodon.model.AdminAccount

## Load the model package
```dart
import 'package:mastodon/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account** | [**Account**](Account.md) | User-level information about the account. | 
**approved** | **bool** | Whether the account is currently approved. | 
**confirmed** | **bool** | Whether the account has confirmed their email address. | 
**createdAt** | [**DateTime**](DateTime.md) | When the account was first discovered. | 
**disabled** | **bool** | Whether the account is currently disabled. | 
**email** | **String** | The email address associated with the account. | 
**id** | **String** | The ID of the account in the database. | 
**ips** | [**List&lt;AdminIp&gt;**](AdminIp.md) | All known IP addresses associated with this account. | 
**locale** | **String** | The locale of the account. | 
**role** | [**Role**](Role.md) | The current role of the account. | 
**sensitized** | **bool** | Whether the account is currently marked sensitive. | 
**silenced** | **bool** | Whether the account is currently silenced. | 
**suspended** | **bool** | Whether the account is currently suspended. | 
**username** | **String** | The username of the account. | 
**createdByApplicationId** | **String** | The ID of the [Application](https://docs.joinmastodon.org/entities/application/) that created this account, if applicable. | [optional] 
**domain** | **String** | The domain of the account, if it is remote. | [optional] 
**inviteRequest** | **String** | The reason given when requesting an invite (for instances that require manual approval of registrations) | [optional] 
**invitedByAccountId** | **String** | The ID of the [Account](https://docs.joinmastodon.org/entities/account/) that invited this user, if applicable. | [optional] 
**ip** | **String** | The IP address last used to login to this account. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


