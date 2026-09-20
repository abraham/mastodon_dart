import 'package:test/test.dart';
import 'package:mastodon/mastodon.dart';

/// tests for AppsApi
void main() {
  final instance = Mastodon().getAppsApi();

  group(AppsApi, () {
    // Create an application
    //
    // Create a new application to obtain OAuth2 credentials.  Version history:  0.0.0 - added\\ 2.7.2 - now returns `vapid_key`\\ 4.3.0 - deprecated `vapid_key`, please see [api/v2/instance]\\ 4.3.0 - added support for multiple `redirect_uris` in Form data parameters\\ 4.3.0 - added `redirect_uris` response property\\ 4.3.0 - deprecated `redirect_uri` response property, since this can be a non-URI if multiple `redirect_uris` are registered, use `redirect_uris` instead\\ 4.3.0 - changed entity type from [Application] to [CredentialApplication]\\ 4.4.0 - added `client_secret_expires_at`
    //
    //Future<CredentialApplication> createApp(CreateAppRequest createAppRequest) async
    test('test createApp', () async {
      // TODO
    });

    // Verify your app works
    //
    // Confirm that the app's OAuth2 credentials work.  Version history:  2.0.0 - added\\ 2.7.2 - now returns `vapid_key`\\ 4.3.0 - deprecated `vapid_key`, please see [api/v2/instance]\\ 4.3.0 - removed needing `read` scope to access this API, now any valid App token can be used\\ 4.3.0 - added `scopes` and `redirect_uris` properties
    //
    //Future<Application> getAppVerifyCredentials() async
    test('test getAppVerifyCredentials', () async {
      // TODO
    });
  });
}
