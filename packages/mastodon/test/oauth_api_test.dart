import 'package:test/test.dart';
import 'package:mastodon/mastodon.dart';

/// tests for OauthApi
void main() {
  final instance = Mastodon().getOauthApi();

  group(OauthApi, () {
    // Authorize a user
    //
    // Displays an authorization form to the user. If approved, it will create and return an authorization code, then redirect to the desired `redirect_uri`, or show the authorization code if `urn:ietf:wg:oauth:2.0:oob` was requested. The authorization code can be used while requesting a token to obtain access to user-level methods.  Version history:  0.1.0 - added\\ 2.6.0 - added `force_login`\\ 3.5.0 - added `lang`\\ 4.3.0 - added support for PKCE parameters\\ 5.0.0 - added `prompt` and `invite_code` parameters
    //
    //Future getOauthAuthorize(String clientId, String redirectUri, String responseType, { String codeChallenge, String codeChallengeMethod, bool forceLogin, String inviteCode, String lang, String prompt, String scope, String state }) async
    test('test getOauthAuthorize', () async {
      // TODO
    });

    // Retrieve user information
    //
    // Retrieves standardised OIDC [claims](https://www.iana.org/assignments/jwt/jwt.xhtml#claims) about the currently authenticated user.\\  Version history:  4.4.0 - added
    //
    //Future getOauthUserinfo() async
    test('test getOauthUserinfo', () async {
      // TODO
    });

    // Revoke a token
    //
    // Revoke an access token to make it no longer valid for use.  Version history:  0.1.0 - added
    //
    //Future postOauthRevoke(PostOauthRevokeRequest postOauthRevokeRequest) async
    test('test postOauthRevoke', () async {
      // TODO
    });

    // Obtain a token
    //
    // Obtain an access token, to be used during API calls that are not public.  Version history:  0.1.0 - added\\ 4.3.0 - added support for PKCE parameter
    //
    //Future<Token> postOauthToken(PostOauthTokenRequest postOauthTokenRequest) async
    test('test postOauthToken', () async {
      // TODO
    });
  });
}
