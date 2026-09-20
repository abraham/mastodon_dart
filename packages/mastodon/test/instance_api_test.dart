import 'package:test/test.dart';
import 'package:mastodon/mastodon.dart';

/// tests for InstanceApi
void main() {
  final instance = Mastodon().getInstanceApi();

  group(InstanceApi, () {
    // View server information (v1)
    //
    // Obtain general information about the server. See [api/v2/instance](https://docs.joinmastodon.org/methods/Instance/#v2) instead.  Version history:  1.1.0 - added\\ 3.0.0 - requires user token if instance is in whitelist mode\\ 3.1.4 - added `invites_enabled` to response\\ 3.4.0 - added `rules`\\ 3.4.2 - added `configuration`\\ 4.0.0 - deprecated. added `configuration[accounts]`.
    //
    //Future<V1Instance> getInstance() async
    test('test getInstance', () async {
      // TODO
    });

    // Weekly activity
    //
    // Server activity over the last 3 months, binned weekly.  Version history:  2.1.2 - added\\ 3.0.0 - requires user token if server is in whitelist mode
    //
    //Future<List<GetInstanceActivity200ResponseInner>> getInstanceActivity() async
    test('test getInstanceActivity', () async {
      // TODO
    });

    // View moderated servers
    //
    // Obtain a list of domains that have been blocked.  Version history:  4.0.0 - added
    //
    //Future<List<DomainBlock>> getInstanceDomainBlocks() async
    test('test getInstanceDomainBlocks', () async {
      // TODO
    });

    // View extended description
    //
    // Obtain an extended description of this server.  Version history:  4.0.0 - added
    //
    //Future<ExtendedDescription> getInstanceExtendedDescription() async
    test('test getInstanceExtendedDescription', () async {
      // TODO
    });

    // List of connected domains
    //
    // Domains that this server is aware of.  Version history:  2.1.2 - added\\ 3.0.0 - requires user token if server is in whitelist mode
    //
    //Future<List<String>> getInstancePeers() async
    test('test getInstancePeers', () async {
      // TODO
    });

    // View privacy policy
    //
    // Obtain the contents of this server's privacy policy.  Version history:  4.0.0 - added
    //
    //Future<PrivacyPolicy> getInstancePrivacyPolicy() async
    test('test getInstancePrivacyPolicy', () async {
      // TODO
    });

    // List of rules
    //
    // Rules that the users of this service should follow.  Version history:  3.4.0 - added
    //
    //Future<List<Rule>> getInstanceRules() async
    test('test getInstanceRules', () async {
      // TODO
    });

    // View terms of service
    //
    // Obtain the contents of this server's terms of service, if configured.  Version history:  4.4.0 - added
    //
    //Future<TermsOfService> getInstanceTermsOfService() async
    test('test getInstanceTermsOfService', () async {
      // TODO
    });

    // View a specific version of the terms of service
    //
    // Obtain the contents of this server's terms of service, for a specified date, if configured.  Version history:  4.4.0 - added
    //
    //Future<TermsOfService> getInstanceTermsOfServiceByDate(String date) async
    test('test getInstanceTermsOfServiceByDate', () async {
      // TODO
    });

    // View translation languages
    //
    // Translation language pairs supported by the translation engine used by the server.  Version history:  4.2.0 - added
    //
    //Future getInstanceTranslationLanguages() async
    test('test getInstanceTranslationLanguages', () async {
      // TODO
    });

    // View server information
    //
    // Obtain general information about the server.  Version history:  4.0.0 - added\\ 4.1.0 - added `configuration.urls.status`\\ 4.2.0 - added `registrations.url`\\ 4.3.0 - added `configuration.vapid.public_key`, `api_versions`, `configuration.accounts.max_pinned_statuses`, `icon`\\ 4.4.0 - added `configuration.urls.about`, `configuration.urls.privacy_policy`, `configuration.urls.terms_of_service`, `registrations.min_age`, `registrations.reason_required`, `configuration.limited_federation`\\ 4.6.0 - added `thumbnail.description`
    //
    //Future<Instance> getInstanceV2() async
    test('test getInstanceV2', () async {
      // TODO
    });
  });
}
